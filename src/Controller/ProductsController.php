<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Validation\Validator;
use Cake\View\View;
use Cake\Controller\Component\RequestHandlerComponent;
use Cake\Event\Event;

class ProductsController extends AppController
{
	public function initialize()
    {
        parent::initialize();
        $this->loadComponent('RequestHandler');
    }
    public function beforeFilter(Event $event)
    {
        //Use beforeFilter of AppController
        parent::beforeFilter($event);

        //Allow action to access without login
        $this->Auth->allow(['loadCreateView']);
    }
    public function index()
    {
        // Set the view vars that have to be serialized.
        $this->set('products', $this->paginate());
        // Specify which view vars JsonView should serialize.
        $this->set('_serialize', ['products']);
    }

    public function view($id)
    {
        $product = $this->Products->get($id);
        $this->set([
            'product' => $product,
            '_serialize' => ['product']
        ]);
    }

    public function loadCreateView(){
        $this->viewBuilder()->autoLayout(false);
        $view = new View($this->request);
        $this->viewBuilder()->template('create');
    }

    public function add()
    {
        $product = $this->Products->newEntity($this->request->getData());
        if ($this->Products->save($product)) {
            $message = 'Saved';
        } else {
            $message = 'Error';
        }
        $this->set([
            'message' => $message,
            'product' => $product,
            '_serialize' => ['message', 'product']
        ]);

        //View input data from client
        //debug($this->request->data); exit;
    }

    public function edit($id)
    {
        //Client send with body: x-www-form-urlencoded
        $product = $this->Products->get($id);
        if ($this->request->is(['post', 'put'])) {
            $this->Products->patchEntity($product, $this->request->getData());
            if ($this->Products->save($product)) {
                $message = 'Saved';
            } else {
                $message = 'Error';
            }
        }

        $this->set([
            'message' => $message,
            'product' => $product,
            '_serialize' => ['message', 'product']
        ]);

        //View input data from client
        //debug($this->request->data); exit;
    }

    public function delete($id)
    {
        $product = $this->Products->get($id);
        $message = 'Deleted';
        if (!$this->Products->delete($product)) {
            $message = 'Error';
        }
        $this->set([
            'message' => $message,
            '_serialize' => ['message']
        ]);
    }
}
?>
