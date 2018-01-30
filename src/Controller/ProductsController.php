<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Validation\Validator;
// use Cake\View\View;

class ProductsController extends AppController
{
	public function initialize()
    {
        parent::initialize();
        $this->loadComponent('Flash'); // Include the FlashComponent
    }
    public function index()
    {
        $this->set('curUserEmail', $this->Auth->user('email'));
        $this->set('products', $this->Products->find('all'));
    }
    public function add()
    {
    	$product = $this->Products->newEntity();
    	if ($this->request->is('post')) //Check method POST
    	{
    		$product = $this->Products->patchEntity($product, $this->request->data);
            $product->user_id = $this->Auth->user('id');
            // dd($product);
    		if ($this->Products->save($product)) {
    			$this->Flash->success(__('Your product has been saved.'));
    			return $this->redirect(['action' => 'index']);
    		}
    		$this->Flash->error(__('Unable to add your product.'));
    	}
    	$this->set('product', $product);
    }
}
?>
