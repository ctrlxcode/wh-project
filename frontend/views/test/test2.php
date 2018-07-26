<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'เกี่ยวกับเรา';
$this->params['breadcrumbs'][] = $this->title;
?>

    <h1>Hello World Controller Test2</h1>

<?php

 $array_test = [1,2,3,4,5];
 echo $array_test[4];


 $array_test1 = [1,2,3,[1,'OK']];
 echo "<br/><b>". $array_test1[3][1]."</b>"; 


  $array_name = ['Jame'=>35,'Joe'=>25];
echo "<br/><b>".$yourname."is year old = ".$array_name[$yourname]."</b>";
echo "<br/><b>"."Birth day is  ".$b_date."</b>";


?>
