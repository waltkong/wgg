<?php

namespace app\admin\model\web;

use think\Model;
use traits\model\SoftDelete;

class Message_model extends Model
{

    use SoftDelete;

    

    // 表名
    protected $name = 'web_message';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = 'deletetime';

    // 追加属性
    protected $append = [
        'reply_time_text'
    ];
    

    



    public function getReplyTimeTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['reply_time']) ? $data['reply_time'] : '');
        return is_numeric($value) ? date("Y-m-d H:i:s", $value) : $value;
    }

    protected function setReplyTimeAttr($value)
    {
        return $value === '' ? null : ($value && !is_numeric($value) ? strtotime($value) : $value);
    }


}
