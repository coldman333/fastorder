<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by JetBrains PhpStorm.
 * User: vova
 * Date: 11/25/13
 * Time: 1:58 AM
 * To change this template use File | Settings | File Templates.
 */

class Home extends CI_Controller {


    public function index()
    {
        $data["main_content"] = "home_view";
        $data["custom_css"] = "main.css";
        $data["custom_js_list"] = array(
             'model/cafe.js',
             'model/dish.js',
             'viewmodel/cafe_view.js',
             'viewmodel/dish_view.js',
             'main.js',
        );
        $this->load->view(TEPMLATE_URL_FRONTEND, $data);
    }
}