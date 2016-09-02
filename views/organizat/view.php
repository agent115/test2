<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

?>
<?php foreach($organization as $ord):?>
                            
					
						 <title> <?=$ord->name?></title> 
					<?php endforeach;?>

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
						<span><h3>Оценить <i class="glyphicon glyphicon-star" style="font-size: 15px;"></i>
								<i class="glyphicon glyphicon-star" style="font-size: 18px;"></i>
								<i class="glyphicon glyphicon-star" style="font-size: 20px;"></i>
								<i class="glyphicon glyphicon-star" style="font-size: 23px;"></i>
								<i class="glyphicon glyphicon-star" style="font-size: 26px;"></i></h3>
						</span>
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
	        <div class="col-md-6 col-md-offset-3">


				<h3>Отзывы к товару (<?php print_r($counts)?>)</h3>
				<hr>


				<?php foreach ($comments as $commi):?>

					<span id="time"><?= $commi->created?><br/></span>
					<span id="comment_author"> <?= $commi->comment_author?></span>
					<a href="<?= \yii\helpers\Url::to(['site/comment', 'com_id'=>$commi->comment_id])?>" title="Пожаловаться на комментарий"><i class="glyphicon glyphicon-eye-close"></i></a> <br/>
					<div id="comment_text"> <?= $commi->comment_text?></div><br/>


					<hr>

				<?php endforeach;?>


	<?php if(!Yii::$app->user->isGuest):?>
		<!--//получаем коммент к товару-->





				<div class="container">
					<div class="row">
						<div class="col-md-6">

							<?php if(Yii::$app->session->hasFlash('success')):?>
								<?= Yii::$app->session->getFlash('success')?>
							<?php endif;?>

                            <?php $form = ActiveForm::begin(); ?>



                            <?= $form->field($model, 'comment_text')->textarea(['rows'=>5]) ?>

                            <div class="form-group">
                                <?= Html::submitButton('ДОБАВИТЬ', ['class' => 'btn btn-primary']) ?>
                            </div>

                            <?php ActiveForm::end(); ?>


							</div>
								</div>
									</div>











	<?php else:?>

          <h3>Комментарии, <span style="color:red;">вы не зарегестрированный</span></h3>                                                                      
       <?php endif;?>
       </div>
        </div>
            </div>
</section>



