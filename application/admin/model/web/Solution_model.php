<?php

namespace app\admin\model\web;

use think\Model;
use traits\model\SoftDelete;

class Solution_model extends Model
{

    use SoftDelete;

    

    // 表名
    protected $name = 'web_solution';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = 'deletetime';

    // 追加属性
    protected $append = [

    ];
    

    







}
