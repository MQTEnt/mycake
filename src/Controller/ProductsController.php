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
    }

    public function edit($id)
    {
        $recipe = $this->Recipes->get($id);
        if ($this->request->is(['post', 'put'])) {
            $recipe = $this->Recipes->patchEntity($recipe, $this->request->getData());
            if ($this->Recipes->save($recipe)) {
                $message = 'Saved';
            } else {
                $message = 'Error';
            }
        }
        $this->set([
            'message' => $message,
            '_serialize' => ['message']
        ]);
    }

    public function delete($id)
    {
        $recipe = $this->Recipes->get($id);
        $message = 'Deleted';
        if (!$this->Recipes->delete($recipe)) {
            $message = 'Error';
        }
        $this->set([
            'message' => $message,
            '_serialize' => ['message']
        ]);
    }
}
?>
