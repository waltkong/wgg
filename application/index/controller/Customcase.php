<?php

namespace app\index\controller;

use app\index\logic\CustomcaseLogic;
use app\index\logic\NewsLogic;
use think\Request;
use app\index\logic\ContactusLogic;

class Customcase extends BaseController
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
        $this->logic = new CustomcaseLogic();

        $banner = $this->logic->banner_one(4);
        $this->assign('banner',$banner);
        $this->assign('highlight_menu',4);

    }

    public function index()
    {
        $input = $this->req;
        $input['category_id'] = $input['category_id'] ?? 1;
        $this->assign('this_category_id',$input['category_id']);

        $pageIndex = $input['pageIndex'] ?? 1;
        $eachPage = $input['eachPage'] ?? 10;
        $case_list_res = $this->logic->case_list($input,$pageIndex,$eachPage);
        $this->assign('case_list',$case_list_res['data']);

        $category_list = $this->logic->category_list();
        $this->assign('category_list',$category_list);

        $this->assign('pageIndexList',$this->logic->getPageIndexList($pageIndex,$eachPage,$case_list_res['total']));
        $params = [
            'pageIndex' => $pageIndex,
            'eachPage' => $eachPage,
            'category_id' => $input['category_id'],
        ];
        $this->assign("params",$params);


        $contactlogic = new ContactusLogic();
        $seo_info = $contactlogic->seo_info();
        $this->assign('seo_title',$seo_info['seo_customcase_title']);
        $this->assign('seo_description',$seo_info['seo_customcase_description']);
        $this->assign('seo_keyword',$seo_info['seo_customcase_keyword']);


        return $this->view->fetch();
    }


    public function detail(){
        $input = $this->req;
        $input['id'] = $input['id'] ?? '';

        $this->logic->shouldUpdateClick();

        $row = $this->logic->case_one($input);
        $this->assign('row',$row);

        $jump_url = $this->logic->getJumps($input['id']);
        $this->assign('jump_url',$jump_url);

        $recommend_cases_list = $this->logic->case_list([],1,5,['order'=>'click_count']);
        $this->assign('recommend_cases_list',$recommend_cases_list['data']);


        $relation_recommend_list = (new NewsLogic())->news_list([],1,3,['order'=>'id']);
        $this->assign('relation_recommend_list',$relation_recommend_list['data']);


        $this->assign('seo_title',$row['name'] ?? '');
        $this->assign('seo_description',$row['description'] ?? '');
        $this->assign('seo_keyword',$row['keyword'] ?? '');

        return $this->view->fetch();
    }




}
