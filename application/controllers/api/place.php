<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Example
 *
 * This is an example of a few basic user interaction methods you could use
 * all done with a hardcoded array.
 *
 * @package		CodeIgniter
 * @subpackage	Rest Server
 * @category	Controller
 * @author		Phil Sturgeon
 * @link		http://philsturgeon.co.uk/code/
*/

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
require APPPATH.'/libraries/REST_Controller.php';

class Place extends REST_Controller
{
	function cafe_get()
    {
        if(!$this->get('id'))
        {
        	$this->response(NULL, 400);
        }

        $this->db->where('id',$this->get('id'));
        $query=$this->db->get('cafe');

        $cafeArr = array() ;
        foreach ($query->result() as $row)
        {
            $cafeArr = array(
                "id" => $row->id,
                "name" => $row->name,
                "description"=> $row->comment,
                "address" => $row->address,
                "locality" => $row->locality,
                "district" => $row->district,
                "metro" => $row->metro,
                "house" => $row->house,
                "placeXY" => $row->placeXY,
                "phone" => $row->phone

            );
            // array_push( $cafeArr,$tempArr );
        }



        if($cafeArr)
        {
            $this->response($cafeArr, 200); // 200 being the HTTP response code
        }

        else
        {
            $this->response(array('error' => 'Cafe could not be found'), 404);
        }
    }
    
    function cafe_post()
    {


        //$this->some_model->updateUser( $this->get('id') );
        $message = array('id' => $this->get('id'), 'name' => $this->post('name'), 'email' => $this->post('email'), 'message' => 'ADDED!');
        
        $this->response($message, 200); // 200 being the HTTP response code
    }
    
    function cafe_delete()
    {
    	//$this->some_model->deletesomething( $this->get('id') );
        $message = array('id' => $this->get('id'), 'message' => 'DELETED!');
        // todo db del item
        $this->response($message, 200); // 200 being the HTTP response code
    }
    
    function cafes_get()
    {

        $query=$this->db->get('cafe');
        $cafeArr = array() ;
        foreach ($query->result() as $row)
        {
            $tempArr = array(
                "id" => $row->id,
                "name" => $row->name,
                "description"=> $row->comment,
                "address" => $row->address,
                "locality" => $row->locality,
                "district" => $row->district,
                "metro" => $row->metro,
                "house" => $row->house,
                "placeXY" => $row->placeXY,
                "phone" => $row->phone,

            );
            array_push( $cafeArr,$tempArr );
        }

        if($cafeArr)
        {
            $this->response($cafeArr, 200); // 200 being the HTTP response code
        }

        else
        {
            $this->response(array('error' => 'Couldn\'t find any cafe!'), 404);
        }
    }


	public function send_post()
	{
		var_dump($this->request->body);
	}


	public function send_put()
	{
		var_dump($this->put('foo'));
	}
}