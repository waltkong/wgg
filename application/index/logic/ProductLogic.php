<?php
namespace app\index\logic;

use app\admin\model\web\Product_model;
use app\common\util\UrlUtil;
use app\index\repository\AppRepository;

class ProductLogic extends BaseLogic{


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


    public function product_list()
    {
        return parent::product_list();
    }
}