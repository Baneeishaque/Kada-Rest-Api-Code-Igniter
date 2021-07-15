<?php
error_reporting(0);
defined('BASEPATH') OR exit('No direct script access allowed');
require(APPPATH.'libraries/REST_Controller.php');

class User extends REST_Controller 
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('LoginModel/Loginmodels');
    $this->load->model('General_Model');
    $this->load->model('User_Model');
    $this->load->helper('db_helper');
  }
  public function addUser_post()
  {
      $json      = file_get_contents('php://input');
      $jsonData  = json_decode($json);
      $name      = $jsonData->name;
      $phone     = $jsonData->phone;
      $latitude  = $jsonData->latitude;
      $longitude = $jsonData->longitude;

      $data=array(
        'user_name'=>$name,
        'user_mobile_number'=>$phone,
        'user_location_latitude'=>$latitude,
        'user_location_longitude'=>$longitude,
      );
      $userid=$this->General_Model->add('users',$data);
      if($userid)
      {
        $response     = json_encode(array("Message"=>"User details added successfully" ,"userid" => $userid ));  
        $this->General_Model->apiResponse($response);
      }
      else
      {
        $response     = json_encode(array("Message"=>"Something Went wrong" ));  
        $this->General_Model->apiResponse($response);
      }
  }
  public function addShop_post()
  {
    $json      = file_get_contents('php://input');
    $jsonData  = json_decode($json);
    $name      = $jsonData->shopname;
    $owner     = $jsonData->owner;
    $latitude  = $jsonData->latitude;
    $longitude = $jsonData->longitude;
    $category  = $jsonData->category;
    $image     = $jsonData->shop_image;

    $str_arr = preg_split ("/\,/", $category);
    $images  = preg_split ("/\,/", $image); 

    // print_r($images);die();
    $array=array(
      'shop_name'=>$name,
      'shop_owner_id'=>$owner,
      'shop_location_latitude'=>$latitude,
      'shop_location_longitude'=>$longitude,
    );
    $shop_id=$this->General_Model->add('shops',$array);
    if($shop_id)
    {
      if($images)
      {
        for ($k=0; $k < count($images) ; $k++) 
        { 
          $imgName = $this->storeImages($images[$k],$shop_id,$k);
          if($imgName)
          {
            $imagearray=array('shop_id'=>$shop_id,'status'=>1,'image'=>$imgName);
            $img=$this->General_Model->add('shop_images',$imagearray);
          }
        }  
      }
      for ($i=0; $i < count($str_arr) ; $i++) 
      { 
        $data=array('shop_id'=>$shop_id,'shop_category_id'=>$str_arr[$i]);
        $shop_map=$this->General_Model->add('shop_category_maps',$data); 
      }
      if($shop_map)
      {
        $response     = json_encode(array("Message"=>"Shop added successfully","shop_id"=>$shop_id ));  
        $this->General_Model->apiResponse($response);
      }
      else
      {
        $response     = json_encode(array("Message"=>"Something Went wrong" ));  
        $this->General_Model->apiResponse($response);
      }
    }
    else
    {
      $response     = json_encode(array("Message"=>"Something Went wrong" ));  
      $this->General_Model->apiResponse($response); 
    }

  }
  public function getShop_get()
  {
    $final_array                 = array();
    $shopid                      = $this->input->get('shopid');

    $shopdetails                 = $this->User_Model->getShop($shopid);
    $shopcategories              = $this->User_Model->getShopCategories($shopid);
    $shopimages                  = $this->User_Model->getShopImages($shopid);

    for ($i=0; $i < count($shopcategories); $i++) 
    { 
      $category[$i]=$shopcategories[$i]->shop_category_name;
    }
    for ($k=0; $k < count($shopimages) ; $k++) 
    { 
      $base_url_image            = 'http://wahylab.com/kada_api/assets/images/shopimages/';
      $image_path                = $base_url_image.$shopimages[$k]->image;
      $images[$k]                = $image_path; 
    }
    $category=implode(",",$category); 
    $images= implode(",",$images);
    $arraystore                  = json_decode(json_encode($shopdetails), true);
    foreach ($arraystore as $key => $value) {
      $arraystore[$key]['categories']=$category;
      $arraystore[$key]['images'] =$images;
    }

    // $final_array["shopdetails"]  = $arraystore;
    $response                    = json_encode($arraystore,JSON_NUMERIC_CHECK);  
    $this->General_Model->apiResponse($response);

  }
  public function storeImages($image,$shop_id,$count)
  {

    $imgName =  $count.$shop_id.'.png';
    $source = fopen($image, 'r');
    $destination = fopen($_SERVER['DOCUMENT_ROOT'].'/restapi/assets/images/shopimages/'.$imgName, 'w');
    stream_copy_to_stream($source, $destination);
    fclose($source);
    fclose($destination);
    return $imgName;
  }
}