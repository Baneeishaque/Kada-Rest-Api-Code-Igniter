<?php if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}
/**
 * Class : Login Users  (Login Models)
 * User model class to get to handle user related data
 */
class Loginmodels extends CI_Model
{
    public function getUserid($phone,$otp)
	{

		$this->db->select('otp_generated,phone_number')
	        ->from('tbl_otp');
	    $this->db->where('phone_number',$phone);
	    $this->db->where('status',1);
		$query = $this->db->get(); 
		$db_otp = $query->result();
		// print_r($db_otp);die();
		if ($db_otp[0]->otp_generated == $otp) {
			return $db_otp[0]->phone_number;
			// do normal login things here
		}
		else
		{
			return 0;
			// return an error because they had the wrong password
		}
	}
	public function checkPhone($phone)
	{
		$this->db->select('*');
		$this->db->where('user_mobile_number',$phone);
		$result=$this->db->get('users');
		$count=$result->num_rows();
		if($count != 0)
		{
			return $result->result();
		}
		else
		{
			return 0;
		}

	}	 
    public function apiResponse($response,$error = 1)
    {
         //$ack                 = "Success";
         $ack = ($error) ? "Success" : "error";
         $data                = '{ "ack": "'.$ack.'" , "results":'.$response.'}';
         echo $data;
    }


}