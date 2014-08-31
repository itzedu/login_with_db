<?php
class User extends CI_Model {
     // function get_all_courses()
     // {
     //     return $this->db->query("SELECT * FROM courses")->result_array();
     // }
    function get_user_by_id($user_id)
    {
         return $this->db->query("SELECT * FROM users WHERE id = ?", array($user_id))->row_array();
    }
    function get_user_by_email($user_email)
    {
        return $this->db->query("SELECT * FROM users WHERE email = ?", array($user_email))->row_array();
    }
    function add_user($user)
    {
        $query = "INSERT INTO Users (first_name, last_name, email, password, created_at, updated_at) VALUES (?,?,?,?,?,?)";
        $values = array($user['first_name'], $user['last_name'], $user['email'], $user['password'], date("Y-m-d, H:i:s"), date("Y-m-d, H:i:s")); 
        return $this->db->query($query, $values);
    }
    function newest_user_id()
    {
        return $this->db->query("SELECT id FROM users ORDER BY id DESC LIMIT 1")->result_array();
    }

}

// end of file