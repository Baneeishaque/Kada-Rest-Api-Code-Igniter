<?php
error_reporting(0);
defined('BASEPATH') OR exit('No direct script access allowed');
require(APPPATH.'libraries/REST_Controller.php');

class login extends REST_Controller 
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('LoginModel/Loginmodels');
    $this->load->model('General_Model');
    $this->load->helper('db_helper');
  }
  public function userlogin_post()
  {
        
        $json      = file_get_contents('php://input');
        $jsonData  = json_decode($json);
        $phone     = $jsonData->phone;
        $otp       = $jsonData->otp;

        $result    = $this->Loginmodels->getUserid($phone,$otp);
        if($result != 0)
        {
          $response = json_encode(array("results"=>"Successfully Login" ,"phone_number" => $result ));  
          $this->Loginmodels->apiResponse($response);
        }
        else
        {
          $response = json_encode(array("results"=>"Something Went wrong"));
          $this->Loginmodels->apiResponse($response);
        }
  }
  public function checkphone_post()
  {
      $json      = file_get_contents('php://input');
      $jsonData  = json_decode($json);
      $phone     = $jsonData->phone;

      $result    = $this->Loginmodels->checkPhone($phone);
      if($result != 0)
      {
        $response = json_encode($result,JSON_NUMERIC_CHECK);   
        $this->Loginmodels->apiResponse($response);
      }
      else
      {
        $response = json_encode(array("results"=>"Phone number not exist"));
        $this->Loginmodels->apiResponse($response);
      }
  }
  public function sendotp_post()
  {
      $json      = file_get_contents('php://input');
      $jsonData  = json_decode($json);
      $phone     = $jsonData->phone;
      $otp                = rand(1000,9999);
      $data=array('phone_number'=>$phone,'otp_generated'=>$otp,'status'=>1);
      $this->General_Model->add('tbl_otp',$data);

      // Account details
      $apiKey = urlencode('NmY3NzQ1NmE0ZDZjNTg2YjQ2Njk0NjdhNjQ2ZTM5NmY=');
      
      // Message details
      $numbers = array(919526774276,);
      $sender = urlencode('TXTLCL');
      $message = rawurlencode('<template>message</template>');
     
      $numbers = implode(',', $numbers);
     
      // Prepare data for POST request
      $data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message);
     
      // Send the POST request with cURL
      $ch = curl_init('https://api.textlocal.in/send/');
      curl_setopt($ch, CURLOPT_POST, true);
      curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
      $response = curl_exec($ch);
      curl_close($ch);
      
      // Process your response here
      echo $response;
      // $response     = json_encode(array("Message"=>"OTP Sent Successfully" ));  
      // $this->Loginmodels->apiResponse($response);
  }
}