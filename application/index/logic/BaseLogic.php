<?php
namespace app\index\logic;

use app\admin\model\web\Product_model;
use app\admin\model\web\Solution_model;
use app\common\util\UrlUtil;

class BaseLogic{


    public function solution_list(){
        $obj = new Solution_model();
        $list = $obj->order('id', 'asc')
            ->limit(0,20)
            ->field('id,name,logo_image,single_image')
            ->select();
        $list = collection($list)->toArray();
        foreach ($list as $k => $v){
            $list[$k]['logo_image'] = UrlUtil::getFullUrl($v['logo_image']);
            $list[$k]['single_image'] = UrlUtil::getFullUrl($v['single_image']);
        }
        return $list;
    }

    public function product_list(){
        $obj = new Product_model();
        $list = $obj->order('id', 'asc')
            ->limit(0,20)
            ->field('id,name,logo_image,single_image,util')
            ->select();
        $list = collection($list)->toArray();
        foreach ($list as $k => $v){
            $list[$k]['logo_image'] = UrlUtil::getFullUrl($v['logo_image']);
            $list[$k]['single_image'] = UrlUtil::getFullUrl($v['single_image']);

            $utils = explode('|',$v['util']);
            $temp = [];
            foreach ($utils as $k2 => $util){
                $temp[] = trim($util);
            }

            $list[$k]['util_array'] =$temp;
        }
        return $list;
    }


    //分页当前所有页面
    public function getPageIndexList($pageIndex=1,$eachPage=10,$total){
        //前端就显示3个
        $showNum = 3;      $ret = [];
        if(in_array($pageIndex,[1,2])){
            for($i=0;$i<$showNum;$i++){
                if($i*$eachPage <= $total){
                    $ret[]=$i+1;
                }
            }
        }else{
            for($i=0;$i<=$pageIndex+1;$i++){
                if($i*$eachPage<=$total){
                    $ret[]=$i+1;
                }
            }
        }
        return  array_slice($ret, -3);
    }


}