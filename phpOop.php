<?php 
class myFirstClass{
	public $name;
	private $lastname;
	protected $fullname;

	public function __construct(){
		$this->name='Hossain';
		$this->lastname='Mamun';
		$this->fullname=$this->name.' '.$this->lastname;
	}
	public function getlastname(){
		return $this->lastname;
	}
	public function getfullname(){
		return $this->fullname;
	}

}
$ourclass=new myFirstClass;

echo $ourclass->getfullname(); 
echo "<br/>";
echo phpversion();

?>