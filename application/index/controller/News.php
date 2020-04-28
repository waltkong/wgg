<?php

namespace app\index\controller;


use app\index\logic\CustomcaseLogic;
use app\index\logic\NewsLogic;
use think\Request;
use app\index\logic\ContactusLogic;

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

        $contactlogic = new ContactusLogic();
        $seo_info = $contactlogic->seo_info();
        $this->assign('seo_title',$seo_info['seo_news_title']);
        $this->assign('seo_description',$seo_info['seo_news_description']);
        $this->assign('seo_keyword',$seo_info['seo_news_keyword']);

        return $this->view->fetch();
    }


    public function detail(){
        $input = $this->req;
        $input['id'] = $input['id'] ?? '';

        $this->logic->shouldUpdateClick();


        $row = $this->logic->news_one($input);
        $this->assign('row',$row);

        $jump_url = $this->logic->getJumps($input['id']);
        $this->assign('jump_url',$jump_url);

        $recommend_news_list = $this->logic->news_list([],1,5,['order'=>'click_count']);
        $this->assign('recommend_news_list',$recommend_news_list['data']);

        $relation_recommend_list = (new CustomcaseLogic())->case_list([],1,3,['order'=>'id']);
        $this->assign('relation_recommend_list',$relation_recommend_list['data']);


        $this->assign('seo_title',$row['name'] ?? '');
        $this->assign('seo_description',$row['description'] ?? '');
        $this->assign('seo_keyword',$row['keyword'] ?? '');

        return $this->view->fetch();
    }



    public function mobile_index()
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

        $contactlogic = new ContactusLogic();
        $seo_info = $contactlogic->seo_info();
        $this->assign('seo_title',$seo_info['seo_news_title']);
        $this->assign('seo_description',$seo_info['seo_news_description']);
        $this->assign('seo_keyword',$seo_info['seo_news_keyword']);

        return $this->view->fetch();
    }


    public function mobile_detail(){
        $input = $this->req;
        $input['id'] = $input['id'] ?? '';

        $this->logic->shouldUpdateClick();


        $row = $this->logic->news_one($input);
        $this->assign('row',$row);

        $jump_url = $this->logic->getJumps($input['id']);
        $this->assign('jump_url',$jump_url);

        $recommend_news_list = $this->logic->news_list([],1,5,['order'=>'click_count']);
        $this->assign('recommend_news_list',$recommend_news_list['data']);

        $relation_recommend_list = (new CustomcaseLogic())->case_list([],1,3,['order'=>'id']);
        $this->assign('relation_recommend_list',$relation_recommend_list['data']);


        $this->assign('seo_title',$row['name'] ?? '');
        $this->assign('seo_description',$row['description'] ?? '');
        $this->assign('seo_keyword',$row['keyword'] ?? '');

        return $this->view->fetch();
    }


}
