<?php
namespace app\common\util;

class UrlUtil {

    public static function getFullUrl($url){
        if(strpos($url,'http://') !== false || strpos($url,'https://') !== false){
            return $url;
        }else{
            return request()->domain().$url;
        }
    }




}