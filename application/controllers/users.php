<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User');
    }
    public function index()
    {   
        $this->load->library('form_validation');
        $this->load->view('index');
    }
    public function create()
    {
        $registration_info = $this->input->post();
       
        $this->load->library('form_validation');
        $this->form_validation->set_rules('first_name', 'First name', 'required');
        $this->form_validation->set_rules('last_name', 'Last name', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[users.email]');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]|matches[confirm_password]|md5');
        $this->form_validation->set_rules('confirm_password', 'Password confirmation', 'required');

        if($this->form_validation->run() == FALSE)
        {
            $this->index();
        }
        else
        {
            $add_user = $this->User->add_user($registration_info);
            $query_user_id = $this->User->newest_user_id();

            $user_id = $query_user_id[0]['id'];
        
            redirect('users/show/' . strval($user_id));
        }
    }
    public function show($user_id)
    {
        $user_info = $this->User->get_user_by_id($user_id);
        $output['user'] = $user_info;
        $this->load->view('welcome',$output);
    }
    public function login()
    {
        $login_info = $this->input->post();
      
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == FALSE)
        {
            $this->index();
        }
        else
        {
            $user_info = $this->User->get_user_by_email($login_info['email']);
            if ($user_info)
            {
                if ($login_info['password'] == $user_info['password'])
                {
                    redirect('users/show/' . strval($user_info['id']));
                }
            }
            $this->form_validation->set_message('Em', 'Email not found');
            $this->index();
        }
    }

    public function logoff()
    {
        $this->session->sess_destroy();
        redirect('/users/index');
    }





}
 