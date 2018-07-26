<?php
use yii\bootstrap\Modal;
/* @var $this yii\web\View */

$this->title = 'WareHouse';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1 style="font-family: Pattaya">โปรแกรมบริหารจัดการคลังวัสดุครุภัณฑ์</h1>

        <p class="lead" style="font-family: Sriracha">Warehouse System</p>

        <!-- <p><a class="btn btn-lg btn-success" href="#">HIS Report.</a></p> -->
    </div>

    <div class="body-content">

        <div class="row col-lg-12">
            <div class="card">
                <div class="card-main">
                    <nav class="tab-nav tab-nav-red margin-top-no">
                        <ul class="nav nav-justified">
                            <li class="active">
                                <a class="waves-attach" data-toggle="tab" href="#ui_tab_example_1_red">รับวัสดุ</a>
                            </li>
                            <li>
                                <a class="waves-attach" data-toggle="tab" href="#ui_tab_example_2_red">จ่ายวัสดุ</a>
                            </li>
                            <li>
                                <a class="waves-attach" data-toggle="tab" href="#ui_tab_example_3_red">ครุภัณฑ์</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="card-inner">
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="ui_tab_example_1_red">
                                <h2 style="font-family: Itim">รับวัสดุ</h2>


                            </div>
                            <div class="tab-pane fade" id="ui_tab_example_2_red">
                                <h2 style="font-family: Itim">จ่ายวัสดุ</h2>


                            </div>
                            <div class="tab-pane fade" id="ui_tab_example_3_red">
                                <h2 style="font-family: Itim">ครุภัณฑ์</h2>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

