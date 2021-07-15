<?php if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}
/**
 * Class : Login Users  (Login Models)
 * User model class to get to handle user related data
 */
class User_Model extends CI_Model
{
    public function getShop($shopid)
    {
        $this->db->select('*');
        $this->db->from('shops');
        // $this->db->join('shop_category_maps','shops.shop_id = shop_category_maps.shop_id');
        // // $this->db->join('shop_categories','shop_category_maps.shop_category_id = shop_categories.shop_category_id');
        $this->db->where('shops.shop_id',$shopid);
        return $this->db->get()->result();
    }
    public function getShopCategories($shopid)
    {
        $this->db->select('shop_category_name');
        $this->db->from('shop_category_maps');
        $this->db->join('shop_categories','shop_category_maps.shop_category_id = shop_categories.shop_category_id');
        $this->db->where('shop_category_maps.shop_id',$shopid);
        return $this->db->get()->result();
    }
    public function getShopImages($shopid)
    {
        $this->db->select('*');
        $this->db->where('shop_id',$shopid);
        return $this->db->get('shop_images')->result();
    }
}