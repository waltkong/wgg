<?php

namespace app\index\controller;


use app\index\logic\ContactusLogic;
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

        $this->assign('highlight_menu',1);

    }

    public function index()
    {
        $banner_list = $this->logic->banner_list(1,10);
        $this->assign('banner',$banner_list[0]);

        $company_list = $this->logic->company_list([],100);
        $this->assign('company_list',$company_list);

        $friend_list = $this->logic->company_list(['is_friend'=>1],10);
        $this->assign('friend_list',$friend_list);

        $news_list = $this->logic->news_list(3);
        $this->assign('news_list',$news_list);

        $case_list = $this->logic->case_list(3);
        $this->assign('case_list',$case_list);


        $contactlogic = new ContactusLogic();
        $seo_info = $contactlogic->seo_info();
        $this->assign('seo_title',$seo_info['seo_index_title']);
        $this->assign('seo_description',$seo_info['seo_index_description']);
        $this->assign('seo_keyword',$seo_info['seo_index_keyword']);

        return $this->view->fetch();
    }





}
