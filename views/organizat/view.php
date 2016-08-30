<?php foreach($organization as $ord):?>
                            
					
						 <title> <?=$ord->name?></title> 
					<?php endforeach;?>
<?php use yii\helpers\Html;?>
<?php $this->title='Организации';?>


<?php foreach($categ as $cats):?>
          <ul class="breadcrumb">
          <li><a href="<?=  \yii\helpers\Url::home()?>"><i class="glyphicon glyphicon-home"> </i> Главная</a> <span class="divider">/</span></li>
          <li><a href="<?=  \yii\helpers\Url::to(['category/view', 'id'=>$cats->id])?>"><?=$cats->name ?></a></li>
          <li>
          	
          	<?php if(!empty($organization)):?>
						<?php foreach($organization as $ord):?>
                            
						<?=$ord->name?></a>
						 
					<?php endforeach;?>
		
					<?php endif;?>
          </li>
          
        </ul>
    <?php endforeach;?>
<section>
    
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<?php if(!empty($organization)):?>
						<?php foreach($organization as $ord):?>
                            <div class="maps"><?= $ord->mars ?></div>
						<h3><?=$ord->name?></a></h3>
					<p><i class="glyphicon glyphicon-earphone"></i>Телефон:<?= $ord->phone?></p>
						<p><i class="glyphicon glyphicon-earphone"></i>Телефон:<?= $ord->phone_2?></p>
						<p><i class="glyphicon glyphicon-map-marker"></i>Адрес:<?= $ord->adress?></p>
						<p><i class="glyphicon glyphicon-time"></i>График:<?= $ord->grafic?></p>
						<pre><?=$ord->keywords?></pre>
						
					<?php endforeach;?>
		
					<?php endif;?>
			</div>
                    <div class="col-md-2 col-md-offset-1">
                        <?php foreach ($Category as $cat):?>
                        <a id='icon' title="<?=$cat->name?>" href="<?= \yii\helpers\Url::to(['category/view', 'id' => $cat['id']]) ?>"><?= Html::img("@web/{$cat-> description}",['class'=>'vidget'] )?></a>
                        <?php endforeach;?>
                    </div>
                    
                    
		</div>
	</div>
	<div id="com" class="container ">
	    <div class="row">
	        <div class="col-md-offset-3">
	<?php if(!Yii::$app->user->isGuest):?>
<!-- Put this script tag to the <head> of your page -->
<script type="text/javascript" src="//vk.com/js/api/openapi.js?127"></script>

<script type="text/javascript">
  VK.init({apiId: 5596481, onlyWidgets: true});
</script>

<!-- Put this div tag to the place, where the Comments block will be -->
<div id="vk_comments"></div>
<script type="text/javascript">
VK.Widgets.Comments("vk_comments", {redesign: 1, limit: 10, width: "600", attach: "*"});
</script>
  <?php else:?>

          <h3>Комментарии, <span style="color:red;">вы не зарегестрированный</span></h3>                                                                      
       <?php endif;?>
       </div>
        </div>
            </div>
</section>



