<?php

namespace app\index\controller;


use app\index\logic\NewsLogic;
use think\Request;

class News extends BaseController
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
        $this->logic = new NewsLogic();

        $banner = $this->logic->banner_one(5);
        $this->assign('banner',$banner);

        $this->assign('highlight_menu',5);

    }

    public function index()
    {
        $input = $this->req;
        $input['category_id'] = $input['category_id'] ?? '';
        $this->assign('this_category_id',$input['category_id']);

        $pageIndex = $input['pageIndex'] ?? 1;
        $eachPage = $input['eachPage'] ?? 10;
        $news_list_res = $this->logic->news_list($input,$pageIndex,$eachPage);
        $this->assign('news_list',$news_list_res['data']);

        $category_list = $this->logic->category_list();
        $this->assign('category_list',$category_list);

        $this->assign('pageIndexList',$this->logic->getPageIndexList($pageIndex,$eachPage,$news_list_res['total']));
        $params = [
            'pageIndex' => $pageIndex,
            'eachPage' => $eachPage,
            'category_id' => $input['category_id'],
        ];
        $this->assign("params",$params);

        return $this->view->fetch();
    }


    public function detail(){
        $input = $this->req;
        $input['id'] = $input['id'] ?? '';
        $row = $this->logic->news_one($input);
        $this->assign('row',$row);

        $jump_url = $this->logic->getJumps($input['id']);
        $this->assign('jump_url',$jump_url);

        $recommend_news_list = $this->logic->news_list([],1,5,['order'=>'click_count']);
        $this->assign('recommend_news_list',$recommend_news_list['data']);



        return $this->view->fetch();
    }




}
