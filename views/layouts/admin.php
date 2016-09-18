<?php

/* @var $this \yii\web\View */
/* @var $content string */

//use yii\helpers\Html;
//use yii\bootstrap\Nav;
//use yii\bootstrap\NavBar;
//use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use yii\helpers\Html;
AppAsset::register($this);
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>


<head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

   <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>


            <?php $this->head() ?>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

<?php $this->beginBody() ?>
        <!-- Navigation & Logo-->
        <div class="admin" style="background: #979797">
	        <div class="container">
	        	<div class="menuextras">
					<div class="extras">
						<ul>
							 <form method="get" action="<?= \yii\helpers\Url::to(['category/search'])?>">
                            <input type="text" placeholder="ПОИСК" name="q">
                        </form>
			        		<li><a href="<?= \yii\helpers\Url::to(['/admin']) ?>">Админка</a></li>

                                                  <?php if(!Yii::$app->user->isGuest): ?>
    <li><a href="<?= yii\helpers\Url::to(['/site/logout'])?>"><i class="fa fa-user"></i>  <?= Yii::$app->user->identity['username']?> (Выход)</a></li>

                                                                                <?php endif;?>


			        	</ul>
					</div>
		        </div>
				<a href="<?= yii\helpers\Url::home() ?> "><?= Html::img("@web/images/logo.png", ['id' => 'logo','class'=>'text-center']) ?></a>
				<nav id="mainmenu" class="mainmenu navbar navbar-default main" >

					<div class="container-fluid">

						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>

						</div>
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">

								<li class="active">
									<a href="<?= \yii\helpers\Url::to(['category/index'])?>">ГЛАВНАЯ</a>
								</li>
								<li>
									<a href="<?= \yii\helpers\Url::to(['/category/categ']) ?>">КАТЕГОРИИ</a>
								</li>

								<li>
									<a href="<?= \yii\helpers\Url::to(['/site/contact']) ?>">ОБРАТНАЯ СВЯЗЬ</a>
								</li>
							</ul>
						</div>
				</nav>
			</div>
		</div>

        <!-- Homepage Slider -->

        <!-- End Homepage Slider -->
<?= $content ?>
		<!-- Press Coverage -->
<!--        <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="in-press press-wired">
							<a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="in-press press-mashable">
							<a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="in-press press-techcrunch">
							<a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
						</div>
					</div>
				</div>
			</div>
		</div>-->
		<!-- Press Coverage -->

		<!-- Services -->
<!--        <div class="section">
	        <div class="container">
	        	<div class="row">
	        		<div class="col-md-4 col-sm-6">
	        			<div class="service-wrapper">
		        			<img src="img/service-icon/diamond.png" alt="Service 1">
		        			<h3>Aliquam in adipiscing</h3>
		        			<p>Praesent rhoncus mauris ac sollicitudin vehicula. Nam fringilla turpis turpis, at posuere turpis aliquet sit amet condimentum</p>
		        			<a href="#" class="btn">Read more</a>
		        		</div>
	        		</div>
	        		<div class="col-md-4 col-sm-6">
	        			<div class="service-wrapper">
		        			<img src="img/service-icon/ruler.png" alt="Service 2">
		        			<h3>Curabitur mollis</h3>
		        			<p>Suspendisse eget libero mi. Fusce ligula orci, vulputate nec elit ultrices, ornare faucibus orci. Aenean lectus sapien, vehicula</p>
		        			<a href="#" class="btn">Read more</a>
		        		</div>
	        		</div>
	        		<div class="col-md-4 col-sm-6">
	        			<div class="service-wrapper">
		        			<img src="img/service-icon/box.png" alt="Service 3">
		        			<h3>Vivamus mattis</h3>
		        			<p>Phasellus posuere et nisl ac commodo. Nulla facilisi. Sed tincidunt bibendum cursus. Aenean vulputate aliquam risus rutrum scelerisque</p>
		        			<a href="#" class="btn">Read more</a>
		        		</div>
	        		</div>
	        	</div>
	        </div>
	    </div>-->
	    <!-- End Services -->

		<!-- Call to Action Bar -->
<!--	    <div class="section section-white">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="calltoaction-wrapper">
							<h3>It's a free multipurpose Bootstrap 3 template!</h3> <a href="http://www.dragdropsite.com" class="btn btn-orange">Download here!</a>
						</div>
					</div>
				</div>
			</div>
		</div>-->
		<!-- End Call to Action Bar -->

<!--		 Testimonials
	    <div class="section">
			<div class="container">
				<h2>Testimonials</h2>
				<div class="row">
					 Testimonial
					<div class="testimonial col-md-4 col-sm-6">
						 Author Photo
						<div class="author-photo">
							<img src="img/user1.jpg" alt="Author 1">
						</div>
						<div class="testimonial-bubble">
							<blockquote>
								 Quote
								<p class="quote">
		                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut."
                        		</p>
                        		 Author Info
                        		<cite class="author-info">
                        			- Name Surname,<br>Managing Director at <a href="#">Some Company</a>
                        		</cite>
                        	</blockquote>
                        	<div class="sprite arrow-speech-bubble"></div>
                        </div>
                    </div>
                     End Testimonial
                    <div class="testimonial col-md-4 col-sm-6">
						<div class="author-photo">
							<img src="img/user5.jpg" alt="Author 2">
						</div>
						<div class="testimonial-bubble">
							<blockquote>
								<p class="quote">
		                            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo."
                        		</p>
                        		<cite class="author-info">
                        			- Name Surname,<br>Managing Director at <a href="#">Some Company</a>
                        		</cite>
                        	</blockquote>
                        	<div class="sprite arrow-speech-bubble"></div>
                        </div>
                    </div>
					<div class="testimonial col-md-4 col-sm-6">
						<div class="author-photo">
							<img src="img/user2.jpg" alt="Author 3">
						</div>
						<div class="testimonial-bubble">
							<blockquote>
								<p class="quote">
		                            "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                        		</p>
                        		<cite class="author-info">
                        			- Name Surname,<br>Managing Director at <a href="#">Some Company</a>
                        		</cite>
                        	</blockquote>
                        	<div class="sprite arrow-speech-bubble"></div>
                        </div>
                    </div>
				</div>
			</div>
	    </div>-->
	    <!-- End Testimonials -->

		<!-- Pricing Table -->
<!--	    <div class="section">
	    	<div class="container">
	    		<h2>Pricing</h2>
	        	<div class="row">
	        		 Pricing Plans Wrapper
	        		<div class="pricing-wrapper col-md-12">
        				 Pricing Plan
						<div class="pricing-plan">
							 Pricing Plan Ribbon
							<div class="ribbon-wrapper">
								<div class="price-ribbon ribbon-red">Popular</div>
							</div>
							<h2 class="pricing-plan-title">Starter</h2>
							<p class="pricing-plan-price">FREE</p>
							 Pricing Plan Features
							<ul class="pricing-plan-features">
								<li><strong>1</strong> user</li>
								<li><strong>Unlimited</strong> projects</li>
								<li><strong>2GB</strong> storage</li>
							</ul>
							<a href="index.html" class="btn">Order Now</a>
						</div>
						 End Pricing Plan
					    <div class="pricing-plan">
							<h2 class="pricing-plan-title">Advanced</h2>
							<p class="pricing-plan-price">$49<span>/mo</span></p>
								<ul class="pricing-plan-features">
									<li><strong>10</strong> users</li>
									<li><strong>Unlimited</strong> projects</li>
									<li><strong>20GB</strong> storage</li>
								</ul>
							<a href="index.html" class="btn">Order Now</a>
					    </div>
					     Promoted Pricing Plan
					    <div class="pricing-plan pricing-plan-promote">
								<h2 class="pricing-plan-title">Premium</h2>
								<p class="pricing-plan-price">$99<span>/mo</span></p>
								<ul class="pricing-plan-features">
									<li><strong>Unlimited</strong> users</li>
									<li><strong>Unlimited</strong> projects</li>
									<li><strong>100GB</strong> storage</li>
								</ul>
							<a href="index.html" class="btn">Order Now</a>
					    </div>
					    <div class="pricing-plan">
					    	 Pricing Plan Ribbon
							<div class="ribbon-wrapper">
								<div class="price-ribbon ribbon-green">New</div>
							</div>
							<h2 class="pricing-plan-title">Mega</h2>
							<p class="pricing-plan-price">$199<span>/mo</span></p>
								<ul class="pricing-plan-features">
									<li><strong>Unlimited</strong> users</li>
									<li><strong>Unlimited</strong> projects</li>
									<li><strong>100GB</strong> storage</li>
								</ul>
							<a href="index.html" class="btn">Order Now</a>
					    </div>
	        		</div>
	        		 End Pricing Plans Wrapper
	        	</div>
	    	</div>
	    </div>-->
	    <!-- End Pricing Table -->

		<!-- Our Clients -->


	    <!-- Footer -->
	    <div class="footer">
	    	<div class="container">
		    	<div class="row">
		    		<div class="col-footer col-md-3 col-xs-6">

		    	</div>
		    	<div class="row">
		    		<div class="col-md-12">
		    			<div class="footer-copyright"> Справочник - Мой Владикавказ &copy; 2016</div>
		    		</div>
		    	</div>
		    </div>
	    </div>
<style>
	.admin{
		background-color: #979797;
		border-bottom: 4px solid #4f8db3;
		z-index: 4;
	}
</style>

<?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>