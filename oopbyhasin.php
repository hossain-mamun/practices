<?php
class Factorial
{
private $result = 1;
//private $number;
function __construct($number)
{
$this->number = $number;
for($i=2; $i<=$number; $i++)
{
$this->result*=$i;
}


}
public function showResult()
{
echo "Factorial of {$this->number} is {$this->result}. ";
}
}
$fact = new Factorial(8);
$fact->showResult();



//class.statictester.php
class StaticTester
{
private static $id=0;
function __construct()
{
self::$id +=1;
}
public static function checkIdFromStaticMehod()
{
echo "Current Id From Static Method is ".self::$id."\n";
}
public function checkIdFromNonStaticMethod()
{
echo "Current Id From Non Static Method is ".self::$id."\n";
}
}
$st1 = new StaticTester();
StaticTester::checkIdFromStaticMehod();
$st2=new StaticTester();
echo "<br/>";
$st2->checkIdFromNonStaticMethod();
echo "<br/>";
abstract class AbstractClass
{
    // Our abstract method only needs to define the required arguments
    abstract protected function prefixName($name);

}

class ConcreteClass extends AbstractClass
{

    // Our child class may define optional arguments not in the parent's signature
    public function prefixName($name, $separator = ".") {
        if ($name == "Pacman") {
            $prefix = "Mr";
        } elseif ($name == "Pacwoman") {
            $prefix = "Mrs";
        } else {
            $prefix = "";
            if ($prefix==NULL) {
            	return "{$prefix} {$name}";
            }
        }

        return "{$prefix}{$separator} {$name}";
    }
}

$class = new ConcreteClass;
echo $class->prefixName("Pacman"), "\n";
echo "<br/>";
echo $class->prefixName("Pacwoman"), "\n";
echo "<br/>";
echo $class->prefixName("Dog"), "\n";
echo "<br/>";
class A {
    public $foo = 1;
}  

$a = new A;
$b = $a;     // $a and $b are copies of the same identifier
             // ($a) = ($b) = <id>
$b->foo = 2;
echo $a->foo."\n";
$c = new A;
$d = &$c;    // $c and $d are references
             // ($c,$d) = <id>

$d->foo = 5;
echo $c->foo."\n";
$str1 = 'yabadabadoo';
$str2 = 'yaba';
echo strpos($str1,$str2)."\n".strlen($str2);
echo str_replace("world","MAmun","hello world");
?>