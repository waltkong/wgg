<?php

namespace app\admin\model\web;

use think\Model;
use traits\model\SoftDelete;

class Product_model extends Model
{

    use SoftDelete;

    

    // 表名
    protected $name = 'web_product';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = 'deletetime';

    // 追加属性
    protected $append = [

    ];



    public function productcategory()
    {
        return $this->belongsTo('app\admin\model\web\Productcategory_model', 'category_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }






}
