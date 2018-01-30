<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Validation\Validator;

class UsersController extends AppController
{
	public function initialize()
    {
        parent::initialize();
        $this->loadComponent('Flash'); // Include the FlashComponent
    }
    public function index()
    {
        $this->set('curUserEmail', $this->Auth->user('email'));
        $this->set('users', $this->Users->find('all'));
    }
    public function add()
    {
    	$user = $this->Users->newEntity();
    	if ($this->request->is('post')) //Check method POST
    	{
    		$user = $this->Users->patchEntity($user, $this->request->data);
    		if ($this->Users->save($user)) {
    			$this->Flash->success(__('Your user has been saved.'));
    			return $this->redirect(['action' => 'index']);
    		}
    		$this->Flash->error(__('Unable to add your user.'));
    	}
    	$this->set('user', $user);
    }
    public function view($id)
    {
        $user = $this->Users->get($id);
        $this->set(compact('user'));
    }
    public function edit($id = null)
    {
        $user = $this->Users->get($id);
        if ($this->request->is(['post', 'put'])) {
            $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
                $this->Flash->success(__('Your user has been updated.'));
                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('Unable to update your user.'));
        }
        $this->set('user', $user);
    }
    public function delete($id)
    {
        $this->request->allowMethod(['post', 'delete']);
        $user = $this->Users->get($id);
        if ($this->Users->delete($user)) {
            $this->Flash->success(__('The user with id: {0} has been deleted.', h($id)));
            return $this->redirect(['action' => 'index']);
        }
    }
    public function login()
    {
        if ($this->request->is('post')) {
            $user = $this->Auth->identify();
            if ($user) {
                $this->Auth->setUser($user);
                return $this->redirect($this->Auth->redirectUrl());
            }
            $this->Flash->error(__('Invalid email or password, try again'));
        }
    }
    public function logout()
    {
        return $this->redirect($this->Auth->logout());
    }

}
?>
