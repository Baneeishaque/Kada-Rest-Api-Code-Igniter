<?php if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}
/**
 * Class : Login Users  (Login Models)
 * User model class to get to handle user related data
 */
class General_Model extends CI_Model
{
    // Insert into table
    public function add($table,$data)
    {
        $this->db->insert($table, $data);
        return $this->db->insert_id();
    }
    public function apiResponse($response,$error = 1)
    {
         //$ack                 = "Success";
         $ack = ($error) ? "Success" : "error";
         $data                = '{ "ack": "'.$ack.'" , "results":'.$response.'}';
         echo $data;
    }
}