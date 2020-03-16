<?php

namespace app\index\controller;


use app\index\logic\IndexLogic;
use think\Request;

class Index extends BaseController
{

    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';


    private $logic;
    private $req;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->req = request()->param(false);
        $this->logic = new IndexLogic();

    }

    public function index()
    {
        $banner_list = $this->logic->banner_list(1,10);
        $this->assign('banner_list',$banner_list);
        return $this->view->fetch();
    }





}
