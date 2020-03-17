<?php
namespace app\index\logic;

use app\admin\model\web\Banner_model;
use app\admin\model\web\News_model;
use app\common\util\UrlUtil;
use app\index\repository\AppRepository;

class NewsLogic extends BaseLogic{


    public function banner_one(){
        $obj = new Banner_model();
        $row = $obj->where('group',5)->find();
        if(!empty($row)){
            $row['image_url'] = UrlUtil::getFullUrl($row['image_url']);
        }else{
            $row = ['image_url' => '', 'name' => '',];
        }
        return $row;
    }

    public function news_list($input,$pageIndex,$eachPage){

        $default = [
            'data' => [],
            'count' => 0,
            'total' => 0,
        ];

        $pageOffset = ($pageIndex-1)*$eachPage;
        $objFunc = function () use($input){
            $obj = new News_model();
            if(!empty($input['category_id'])){
                $obj = $obj->where('category_id',$input['category_id']);
            }
            return $obj;
        };
        $default['total'] = $objFunc()->count();
        $list = $objFunc()
            ->order('createtime', 'desc')
            ->limit($pageOffset,$eachPage)->select();
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



}