<?php

namespace app\index\controller;

use app\index\logic\CustomcaseLogic;
use think\Request;

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

        return $this->view->fetch();
    }


    public function detail(){

    }




}
