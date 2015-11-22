<?php
interface DBDriver
{
public function connect();
public function execute($sql);
}
class MySQLDriver implements DBDriver
{
	public function connect(){

	}
	public function execute($sql){
		
	}
}
?>