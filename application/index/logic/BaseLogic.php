<?php
namespace app\index\logic;

use app\admin\model\web\Product_model;
use app\admin\model\web\Solution_model;
use app\admin\model\web\Visitlog_model;
use app\admin\model\web\Productcategory_model;
use app\common\util\UrlUtil;
use app\admin\model\web\Banner_model;


class BaseLogic{

    static $updateClick = false;

    public function shouldUpdateClick(){
        self::$updateClick = true;
    }

    public function insertVisitLog(){

        if(request()->isGet()){
            //清除100天以前的
            $cleartime = time() - 3600*24*100 ;
            (new Visitlog_model)->where('createtime','<',$cleartime)->delete();

            $data = [
                'ip' => request()->ip(),
                'referer' => $_SERVER['HTTP_REFERER'] ?? '',
                'url' => request()->baseUrl(),
                'full_url' => request()->url(),
                'group' => request()->controller(),
                'createtime' => time(),
            ];
            (new Visitlog_model)->insert($data);
        }
    }


    public function solution_list($count=20){
        $obj = new Solution_model();
        $list = $obj->order('id', 'asc')
            ->limit(0,$count)
            ->field('id,name,logo_image,single_image')
            ->select();
        $list = collection($list)->toArray();
        foreach ($list as $k => $v){
            $list[$k]['logo_image'] = UrlUtil::getFullUrl($v['logo_image']);
            $list[$k]['single_image'] = UrlUtil::getFullUrl($v['single_image']);
        }
        return $list;
    }



    public function product_category_list($count=20){
        $obj = new Productcategory_model();
        $list = $obj->order('id', 'asc')
            ->limit(0,$count)
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


    public function banner_one($group=1){
        $obj = new Banner_model();
        $row = $obj->where('group',$group)->find();
        if(!empty($row)){
            $row['image_url'] = UrlUtil::getFullUrl($row['image_url']);
        }else{
            $row = ['image_url' => '', 'name' => '',];
        }
        return $row;
    }


    //获取 上一页 或者 下一页
    public function getJumpUrls($id,$modelClass){
        $prev = $modelClass::where('id','<',$id)->order('createtime', 'desc')
            ->limit(0,1)->select();
        if(empty($prev)){
            $prev =   $modelClass::where('id','=',$id)->select();
        }
        $next=  $modelClass::where('id','>',$id)->order('createtime', 'asc')
            ->limit(0,1)->select();
        if(empty($next)){
            $next =   $modelClass::where('id','=',$id)->select();
        }
        return [
            'prev' => $prev[0],
            'next' => $next[0],
        ];
    }


}