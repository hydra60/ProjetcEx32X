<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AltasBajas extends CI_Controller {

	public function index()
	{
		$nombre = $_GET['nombre'];
		$pwd = $_GET['pwd'];
		$data['nombreDocente'] = $nombre;
		$data['contrasenia'] = $pwd;
		$this->load->view('AltasBajas', $data);
	}

	
}
