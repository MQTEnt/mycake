public function getUserList(){
	 $this->autoRender = false;
	 $data = json_encode(['abc' => 1]);
	 $this->response->type('application/json');
	 $this->response->body($data);
	 return $this->response;
}