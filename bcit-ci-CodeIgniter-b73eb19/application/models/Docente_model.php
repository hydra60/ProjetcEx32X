<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Docente_model extends CI_Model {
    function __construct()
    {
        parent::__construct();
        $this->db = $this->load->database('default', TRUE); 
    }

    public function alumnos(){
        $sql = "Select * from usuario"
        return mysql_query($sql);
    }

}
?>