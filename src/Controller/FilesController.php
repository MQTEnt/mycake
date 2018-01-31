<?php

namespace App\Controller;

class FilesController extends AppController
{
    public function initialize(){
        parent::initialize();
        
        // Include the FlashComponent
        $this->loadComponent('Flash');
        
        // Load Files model
        $this->loadModel('Files');
    }
    
    public function upload(){
        if ($this->request->is('post')) {
            // debug($this->request->data['myFile']);
            // exit;
            if(!empty($this->request->data['myFile']['name'])){
                //Check file type (Only check extension name)
                $allowExtension = ['gif', 'jpeg', 'png', 'jpg'];
                $fileData   = pathinfo($this->request->data['myFile']['name']);
                $fileExtension        = $fileData['extension'];
                if(!in_array($fileExtension, $allowExtension)){
                    $this->Flash->error(__('Error file extension'));
                    return;
                }

                $fileName = $this->request->data['myFile']['name'];
                $uploadPath = 'uploads/files/';
                $uploadFile = $uploadPath.$fileName;
                if(move_uploaded_file($this->request->data['myFile']['tmp_name'],$uploadFile)){
                    $uploadData = $this->Files->newEntity();
                    $uploadData->name = $fileName;
                    $uploadData->path = $uploadPath;
                    $uploadData->created = date("Y-m-d H:i:s");
                    if ($this->Files->save($uploadData)) {
                        $this->Flash->success(__('File has been uploaded and inserted successfully.'));
                        return $this->redirect(['action' => 'index']);
                    }else{
                        $this->Flash->error(__('Unable to upload file, please try again.'));
                    }
                }else{
                    $this->Flash->error(__('Unable to upload file, please try again.'));
                }
            }else{
                $this->Flash->error(__('Please choose a file to upload.'));
            }
            
        }

        $this->Auth->allow(['loadCreateView']);
    }

    public function index(){
        $files = $this->Files->find('all', ['order' => ['Files.created' => 'DESC']]);
        $filesRowNum = $files->count();
        $this->set('files',$files);
        $this->set('filesRowNum',$filesRowNum);
    }
}