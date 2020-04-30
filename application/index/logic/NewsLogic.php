<?php
namespace app\index\logic;


use app\admin\model\web\Cases_model;
use app\admin\model\web\News_model;
use app\admin\model\web\Product_model;
use app\admin\model\web\Solution_model;
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




    public function search_keyword_list($input,$pageIndex,$eachPage){

        $max_limit = 50;

        $default = [
            'data' => [],
            'count' => 0,
            'total' => 0,
        ];

        $pageOffset = ($pageIndex-1)*$eachPage;

        //新闻
        $objFunc1 = function () use($input){
            $obj = new News_model();
            if(isset($input['keyword']) && !empty($input['keyword'])){
                $obj = $obj->where('seo_keyword','like',"%{$input['keyword']}%");
            }
            return $obj;
        };
        $count1 =  $objFunc1()->count();
        $list1 = $objFunc1()
            ->field('id,name,description,image_url,createtime')
            ->order('id', 'desc')
            ->limit(0,$max_limit)->select();
        $list1 = collection($list1)->toArray();
        foreach ($list1 as $k => $v){
            $list1[$k]['image_url'] = UrlUtil::getFullUrl($v['image_url']);
            $list1[$k]['create_date'] = date('d',$v['createtime']);
            $list1[$k]['create_year_month'] = date('Y-m',$v['createtime']);

            $list1[$k]['jump_url'] = "/news_detail/{$v['id']}";

        }

        //产品
        $objFunc2 = function () use($input){
            $obj = new Product_model();
            if(isset($input['keyword']) && !empty($input['keyword'])){
                $obj = $obj->where('seo_keyword','like',"%{$input['keyword']}%");
            }
            return $obj;
        };
        $count2 =  $objFunc2()->count();
        $list2 = $objFunc2()
            ->field('id,name,description,single_image as image_url,createtime ')
            ->order('id', 'desc')
            ->limit(0,$max_limit)->select();
        $list2 = collection($list2)->toArray();
        foreach ($list2 as $k => $v){
            $list2[$k]['image_url'] = UrlUtil::getFullUrl($v['image_url']);
            $list2[$k]['create_date'] = date('d',$v['createtime']);
            $list2[$k]['create_year_month'] = date('Y-m',$v['createtime']);

            $list2[$k]['jump_url'] = "/product/{$v['id']}";

        }

        //案例
        $objFunc3 = function () use($input){
            $obj = new Cases_model();
            if(isset($input['keyword']) && !empty($input['keyword'])){
                $obj = $obj->where('seo_keyword','like',"%{$input['keyword']}%");
            }
            return $obj;
        };
        $count3 =  $objFunc3()->count();
        $list3 = $objFunc3()
            ->field('id,name,description,image_url,createtime ')
            ->order('id', 'desc')
            ->limit(0,$max_limit)->select();
        $list3 = collection($list3)->toArray();
        foreach ($list3 as $k => $v){
            $list3[$k]['image_url'] = UrlUtil::getFullUrl($v['image_url']);
            $list3[$k]['create_date'] = date('d',$v['createtime']);
            $list3[$k]['create_year_month'] = date('Y-m',$v['createtime']);

            $list3[$k]['jump_url'] = "/product/{$v['id']}";

        }

        //组装
        $default['total'] = $count1 + $count2 + $count3;

        $final_array = array_merge($list1,$list2,$list3);

        $final_array = $this->sort_my_array($final_array);

        //算偏移
        $list =  array_slice($final_array,$pageOffset,$eachPage);

        $default['data'] = $list;
        $default['count'] = count($list);
        return $default;
    }

    private function sort_my_array($arr_dimen){
        $timeKey =  array_column($arr_dimen,'createtime');//取出数组中serverTime的一列，返回一维数组
        array_multisort($timeKey,SORT_DESC,$arr_dimen);
        return $arr_dimen;
    }



}