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


    function getDistance($lat1, $lon1, $lat2, $lon2) {
        $lat1 *= M_PI / 180;
        $lat2 *= M_PI / 180;
        $lon1 *= M_PI / 180;
        $lon2 *= M_PI / 180;

        $d_lon = $lon1 - $lon2;

        $slat1 = sin($lat1);
        $slat2 = sin($lat2);
        $clat1 = cos($lat1);
        $clat2 = cos($lat2);
        $sdelt = sin($d_lon);
        $cdelt = cos($d_lon);

        $y = pow($clat2 * $sdelt, 2) + pow($clat1 * $slat2 - $slat1 * $clat2 * $cdelt, 2);
        $x = $slat1 * $slat2 + $clat1 * $clat2 * $cdelt;

        return atan2(sqrt($y), $x) * 6372795;
    }



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

        $message = array('id' => $this->get('id'), 'name' => $this->post('name'), 'email' => $this->post('email'), 'message' => 'ADDED!');
        
        $this->response($message, 200); // 200 being the HTTP response code
    }
    
    function cafe_delete()
    {

        $message = array('id' => $this->get('id'), 'message' => 'DELETED!');
        // todo db del item
        $this->response($message, 200); // 200 being the HTTP response code
    }
    
    function cafes_get()
    {
        $posON = false;
        $posLatitude = 0;
        $posLongitude = 0;

        if($this->get('lat') && $this->get('long')){
            $posON =  true;
            $posLatitude = $this->get('lat');
            $posLongitude = $this->get('long');
        }


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
                "phone" => $row->phone
            );

            if ($posON){
                $placeXYArr = explode(",",$row->placeXY);
                $tempArr['position'] =  @round(($this->getDistance($posLatitude, $posLongitude, $placeXYArr[0], $placeXYArr[1]))/1000,2);
            }

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

    function dishs_get()
    {

        if(!$this->get('id'))
        {
            $this->response(NULL, 400);
        }
        $this->db->where('id',$this->get('id'));
        $query=$this->db->get('dish');
        $cafeArr = array() ;
        foreach ($query->result() as $row)
        {
            $tempArr = array(
                "id" => $row->id,
                "cafeId" => $row->cafeId,
                "name"=> $row->name,
                "price" => $row->price,
                "pictureName" => $row->pictureName
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

    function dishes_get()
    {
        if(!$this->get('id'))
        {
            $this->response(NULL, 400);
        }

        $this->db->where('cafeId',$this->get('id'));
        $query=$this->db->get('dish');

        $cafeArr = array() ;
        foreach ($query->result() as $row)
        {
            $tempArr = array(
                "id" => $row->id,
                "cafeId" => $row->cafeId,
                "name"=> $row->name,
                "price" => $row->price,
                "pictureName" => $row->pictureName,
                "typeId" => $row->typeId
            );
             array_push( $cafeArr,$tempArr );
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


	public function send_post()
	{
		var_dump($this->request->body);
	}
	public function send_put()
	{
		var_dump($this->put('foo'));
	}





}