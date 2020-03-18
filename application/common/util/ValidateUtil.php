<?php
namespace app\common\util;

class ValidateUtil {

    public static function isMobile($phone){
        if(preg_match("/^1[345678]{1}\d{9}$/",$phone)){
            return true;
        }else {
            return false;
        }
    }




}