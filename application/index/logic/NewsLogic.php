<?php
namespace app\index\logic;


use app\admin\model\web\News_model;
use app\common\util\UrlUtil;
use app\index\repository\AppRepository;

class NewsLogic extends BaseLogic{


    public function news_list($input,$pageIndex,$eachPage,$option=[]){

        $default = [
            'data' => [],
            'count' => 0,
            'total' => 0,
        ];

        $pageOffset = ($pageIndex-1)*$eachPage;
        $objFunc = function () use($input){
            $obj = new News_model();
            if(isset($input['category_id']) && !empty($input['category_id'])){
                $obj = $obj->where('category_id',$input['category_id']);
            }
            return $obj;
        };
        $default['total'] = $objFunc()->count();

        if(isset($option['order'])){
            $list = $objFunc()
                ->order($option['order'], 'desc')
                ->limit($pageOffset,$eachPage)->select();
        }else{
            $list = $objFunc()
                ->order('createtime', 'desc')
                ->limit($pageOffset,$eachPage)->select();
        }

        $list = collection($list)->toArray();

        foreach ($list as $k => $v){
            $list[$k]['image_url'] = UrlUtil::getFullUrl($v['image_url']);
            $list[$k]['create_date'] = date('d',$v['createtime']);
            $list[$k]['create_year_month'] = date('Y-m',$v['createtime']);
        }

        $default['data'] = $list;
        $default['count'] = count($list);
        return $default;
    }

    public function category_list(){
        $arr =  AppRepository::$news_category;
        array_unshift($arr,[ //头部追加
            'id' => '',
            'name' => '全部新闻'
        ]);
        return $arr;
    }


    public function news_one($input){
        $objFunc = function () use($input){
            $obj = new News_model();
            if(isset($input['id']) && !empty($input['id'])){
                $obj = $obj->where('id',$input['id']);
            }
            return $obj;
        };
        $row = $objFunc()->find();

        if(!empty($row)){

            if(self::$updateClick){
                $row->click_count += 1;
                $row->save();
            }

            if(!empty($row['image_url'])){
                $row['image_url'] = UrlUtil::getFullUrl($row['image_url']);
            }
            $row['create_date'] = date('Y-m-d',$row['createtime']);
        }
        return $row;
    }


    public function getJumps($id){
        return parent::getJumpUrls($id,News_model::class);
    }



}