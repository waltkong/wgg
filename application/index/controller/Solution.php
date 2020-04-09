<?php

namespace app\index\controller;

use app\index\logic\SolutionLogic;
use think\Request;
use app\index\logic\ContactusLogic;

class Solution extends BaseController
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
        $this->logic = new SolutionLogic();
        $this->assign('highlight_menu',2);

    }

    //解决方案详情
    public function detail(){
        $input = $this->req;
        $input['id'] = $input['id'] ?? '';
        $row = $this->logic->solution_one($input);
        $this->assign('row',$row);

        $this->assign('banner',['image_url' => $row['banner_image'] ?? '', 'name' => $row['name'] ?? '',]);

        $this->assign('solution_list',$this->logic->get_solution_list());

        $this->assign('seo_title',$row['name'] ?? '');
        $this->assign('seo_description',$row['description']?? '');
        $this->assign('seo_keyword',$row['keyword']?? '');

        return $this->view->fetch();
    }



}