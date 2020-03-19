<?php
namespace app\index\logic;

use app\admin\model\web\Product_model;
use app\admin\model\web\Productcategory_model;
use app\common\util\UrlUtil;
use app\index\repository\AppRepository;

class ProductLogic extends BaseLogic{


    public function product_category_one($input){
        $objFunc = function () use($input){
            $obj = new Productcategory_model();
            if(isset($input['id']) && !empty($input['id'])){
                $obj = $obj->where('id',$input['id']);
            }
            return $obj;
        };
        $row = $objFunc()->find();
        if(!empty($row)){

            if(!empty($row['logo_image'])){
                $row['logo_image'] = UrlUtil::getFullUrl($row['logo_image']);
            }
            if(!empty($row['single_image'])){
                $row['single_image'] = UrlUtil::getFullUrl($row['single_image']);
            }
            if(!empty($row['banner_image'])){
                $row['banner_image'] = UrlUtil::getFullUrl($row['banner_image']);
            }
            $row['create_date'] = date('Y-m-d',$row['createtime']);
        }
        return $row;
    }


    public function product_one($input){
        $objFunc = function () use($input){
            $obj = new Product_model();
            if(isset($input['id']) && !empty($input['id'])){
                $obj = $obj->where('id',$input['id']);
            }
            return $obj;
        };
        $row = $objFunc()->find();

        if(!empty($row)){

            $row['category_name'] = ( new Productcategory_model())->where('id',$row['category_id'])->value('name');

            if(!empty($row['logo_image'])){
                $row['logo_image'] = UrlUtil::getFullUrl($row['logo_image']);
            }
            if(!empty($row['single_image'])){
                $row['single_image'] = UrlUtil::getFullUrl($row['single_image']);
            }
            if(!empty($row['banner_image'])){
                $row['banner_image'] = UrlUtil::getFullUrl($row['banner_image']);
            }
            $row['create_date'] = date('Y-m-d',$row['createtime']);
        }
        return $row;
    }


    public function product_list($category_id)
    {
        $obj = new Product_model();
        $list = $obj->where('category_id',$category_id)
            ->order('id', 'asc')
            ->limit(0,100)
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


}