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

class Order extends REST_Controller {
    function orders_get() {
        $order = array();
        $query1 = $this->db->get('order');
        foreach ($query1->result() AS $row) {
            $order_tmp['id'] = $row->id;
            $order_tmp['table'] = $row->table;
            $order_tmp['cafe_id'] = $row->cafe_id;

            $query2 = $this->db->get_where('cafe', array('id' => $order_tmp['cafe_id']));
            $row = $query2->row();
            $order_tmp['cafe_name'] = $row->name;

            $order_item =array();
            $query3 = $this->db->get_where('order_items', array('order_id' => $order_tmp['id']));
            foreach ($query3->result() AS $row) {
                $order_item['id'] = $row->id;
                $order_item['dish_id'] = $row->dish_id;
                $order_item['quantity'] = $row->quantity;

                $query4 = $this->db->get_where('dish', array('id' => $order_item['dish_id']));
                $row = $query4->row();
                $order_item['dish_name'] = $row->name;
            }
            $order_tmp['items'] = $order_item;
            array_push($order, $order_tmp);
        }
        if($order) {
            $this->response($order, 200); // 200 being the HTTP response code
        } else {
            $this->response(array('error' => 'No orders found!'), 404);
        }
    }

    function order_post()
    {
        $message = array('message' => 'ADDED!');
        $this->response("ok", 200); // 200 being the HTTP response code
    }
}