<?php
namespace App\Model\Table;

use Cake\ORM\Table;
use Cake\Validation\Validator;

class UsersTable extends Table
{
	public function validationDefault(Validator $validator) {
        $validator->add('email', 
        	[
            	'minLength' => 
            	[
	                'rule' => ['minLength', 10],
	                'last' => true,
	                'message' => 'Min 10 characters'
            	],
            	'unique' => 
            	[
		            'rule' => 'validateUnique', 
		            'provider' => 'table', 
		            'message' => 'Not unique'
		        ],
		        'notContainXYZString'=>
		        [
		        	'rule'=>'notContainXYZStringInEmail',
		        	'provider'=>'table',
		        	'message'=>'Email does not contain XYZ string'
		        ]
        	]
        );

        $validator->add('password', 
        	[
            	'minLength' => 
            	[
	                'rule' => ['minLength', 5],
	                'last' => true,
	                'message' => 'Min 5 characters'
            	]
            ]
        );
       return $validator;
    }
    public function notContainXYZStringInEmail($value,$context){
    	if (strpos($context['data']['email'], 'XYZ') !== false) {
    		return false;
    	}
    	return true;
    }
}
?>
