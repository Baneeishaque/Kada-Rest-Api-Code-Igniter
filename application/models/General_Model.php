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
        return $this->db->insert($table, $data);
    }
}