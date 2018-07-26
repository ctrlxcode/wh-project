<?php // This is Nikom Theme for Nikom Office 
use frontend\themes\material\MaterialAsset; 
use yii\helpers\Html; 

MaterialAsset::register($this); 
$asset_path = Yii::$app->assetManager->getPublishedUrl('@frontend/themes/material/assets'); 
?> 
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
	<meta charset="<?= Yii::$app->charset ?>">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
	<link href="https://fonts.googleapis.com/css?family=Itim|Kanit|Mitr|Pattaya|Pridi|Prompt|Sriracha" rel="stylesheet">
	<?= Html::csrfMetaTags() ?>
	<title><?= Html::encode($this->title) ?></title>
	

	<!-- css -->
	<?php $this->head() ?>
	
	<!-- favicon -->
	<!-- ... -->
</head>
<body class="page-brand">
<?php $this->beginBody() ?>
	<header class="header header-transparent header-waterfall ui-header" style="font-family: Pattaya">
		<!-- <ul class="nav nav-list pull-left">
			<li>
				<a data-toggle="menu" href="#ui_menu">
					<span class="icon icon-lg">menu</span>
				</a>
			</li>
		</ul> -->
		<?= Html::a(Yii::$app->name, Yii::$app->homeUrl, ['class' => 'header-logo']); ?>

		<ul class="nav nav-list pull-left">
			<li>
				<a data-toggle="menu" href="#ui_menu">
					<span class="icon icon-lg">menu</span>
				</a>
			</li>
		</ul>
		
		<ul class="nav nav-list pull-right" style="font-family: Sriracha">
		<?php  if (!Yii::$app->user->isGuest) { ?>
			<li class="dropdown margin-right">
				<a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
					<span class="access-hide">John Smith</span>
					<span class="avatar avatar-sm"><img alt="alt text for John Smith avatar" src="<?= $asset_path; ?>/images/users/avatar-001.jpg"></span>
				</a>
		<?php  } else { ?>
					<li>
					<?= Html::a(
                                    '<span class="icon icon-lg margin-right">face</span>Sign in',
                                    ['/site/login'],
                                    ['data-method' => 'post', 'class' => 'padding-right-lg waves-attach']
                                ) ?>
					</li>
		<?php } ?>
				<ul class="dropdown-menu dropdown-menu-right">
					<li>
						<a class="padding-right-lg waves-attach" href="javascript:void(0)"><span class="icon icon-lg margin-right">account_box</span>Profile Settings</a>
					</li>
					<!-- <li>
						<a class="padding-right-lg waves-attach" href="javascript:void(0)"><span class="icon icon-lg margin-right">add_to_photos</span>Upload Photo</a>
					</li> -->
					<!-- <li>
						<a class="padding-right-lg waves-attach" href="page-login.html"><span class="icon icon-lg margin-right">exit_to_app</span>Logout</a>
					</li> -->
					<li>
					<?= Html::a(
                                    '<span class="icon icon-lg margin-right">exit_to_app</span>Sign out',
                                    ['/site/logout'],
                                    ['data-method' => 'post', 'class' => 'padding-right-lg waves-attach']
                                ) ?>
					</li>
				</ul>
			</li>
		</ul>
	</header>
	<nav aria-hidden="true" class="menu" id="ui_menu" tabindex="-1"  style="font-family: Prompt">
		<div class="menu-scroll">
			<div class="menu-content">
				<!-- <a class="menu-logo" href="/index.php">HIS Report</a> -->
				<?= Html::a(
                                    'Warehouse System',
                                    ['site/index'],
                                    ['class' => 'menu-logo']
                                ) ?>
				<ul class="nav">
					<li>
						<a class="collapsed waves-attach" data-toggle="collapse" href="#ui_menu_components">จัดการการจัดซื้อ</a>
						<ul class="menu-collapse collapse" id="ui_menu_components">
							<li>
								<a class="waves-attach" href="#">จัดซื้อวัสดุ</a>
							</li>
							<li>
								<a class="waves-attach" href="#">จัดซื้อครุภัณฑ์</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="collapsed waves-attach" data-toggle="collapse" href="#ui_menu_extras">จัดการคลังวัสดุ</a>
						<ul class="menu-collapse collapse" id="ui_menu_extras">
							<li>
								<a class="waves-attach" href="#">รับวัสดุ</a>
							</li>
							<li>
								<a class="waves-attach" href="#">จ่ายวัสดุ</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="collapsed waves-attach" data-toggle="collapse" href="#ui_menu_javascript">จัดการครุภัณฑ์</a>
						<ul class="menu-collapse collapse" id="ui_menu_javascript">
							<li>
								<a class="waves-attach" href="#">รับครุภัณฑ์</a>
							</li>
							<li>
								<a class="waves-attach" href="#">จำหน่ายครุภัณฑ์</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="collapsed waves-attach" data-toggle="collapse" href="#ui_menu_samples">รายงานสถิติประจำปี</a>
						<ul class="menu-collapse collapse" id="ui_menu_samples">
							<li>
								<a class="waves-attach" href="#">รายงานวัสดุ</a>
							</li>
							<li>
								<a class="waves-attach" href="#">รายงานครุภัณฑ์</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-lg-push-3 col-sm-10 col-sm-push-1">
						<h1 class="content-heading">Warehouse System</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="container"  style="font-family: Prompt">
			<div class="row">
				<!-- <div class="col-lg-6 col-lg-push-3 col-sm-10 col-sm-push-1"> -->
					<div>
					<section class="content-inner margin-top-no">
						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<?= $content; ?>
								</div>
							</div>
						</div>
<!-- ด้านล่างของเนื้อหา (Content) -->
				        <!-- <div class="row col-lg-12">
				            <div class="col-md-4">
				                <h2 style="font-family: Kanit">Study Design</h2>
				            </div>
				            <div class="col-md-4">
				                <h2 style="font-family: Kanit">Data System</h2>
				            </div>
				            <div class="col-md-4">
				                <h2 style="font-family: Kanit">เอกสารดาวน์โหลด</h2>
				            </div>
				        </div> -->
					</section>
				</div>
			</div>
		</div>
	</main>
	<footer class="ui-footer">
		<div class="container">
			<p>Copy right by <a href="http://ctrxcode.wordpress.com" target="_blank">Control X</a> Teams. Power by <a href="http://www.yiiframework.com" target="_blank">Yii Framework</a>.</p>
		</div>
	</footer>
	<div class="fbtn-container">
		<div class="fbtn-inner">
			<a class="fbtn fbtn-lg fbtn-brand-accent waves-attach waves-circle waves-light" data-toggle="dropdown"><span class="fbtn-text fbtn-text-left">ติดต่อเรา</span><span class="fbtn-ori icon">apps</span><span class="fbtn-sub icon">close</span></a>
			<div class="fbtn-dropup">
				<a class="fbtn waves-attach waves-circle" href="https://github.com/Daemonite/material" target="_blank"><span class="fbtn-text fbtn-text-left">Fork me on GitHub</span><span class="icon">code</span></a>
				<a class="fbtn fbtn-brand waves-attach waves-circle waves-light" href="https://twitter.com/daemonites" target="_blank"><span class="fbtn-text fbtn-text-left">Follow Daemon on Twitter</span><span class="icon">share</span></a>
				<a class="fbtn fbtn-green waves-attach waves-circle" href="http://www.daemon.com.au/" target="_blank"><span class="fbtn-text fbtn-text-left">Visit Daemon Website</span><span class="icon">link</span></a>
			</div>
		</div>
	</div>

	<!-- js -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<script src="../js/base.min.js"></script>
	<script src="../js/project.min.js"></script>
	<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>