<?php
namespace app\index\controller;

use app\common\controller\Frontend;
use think\Request;

class  BaseController extends Frontend{

    public function __construct(Request $request = null)
    {
        parent::__construct($request);

        $this->myInit();
    }

    private function myInit(){
        $this->assign("asset_version",time());
    }


}