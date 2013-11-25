<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Service extends CI_Controller {


    public function index()
    {
        $data["main_content"] = "service_view";
        $this->load->view(TEPMLATE_URL_FRONTEND, $data);
    }
}