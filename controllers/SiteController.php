<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\CommentForm;
use app\models\Login;
use app\models\ContactForm;
use app\models\Signup;
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post','get'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Login action.
     *
     * @return string
     */
   
      public function actionLogin()
    {
        if(!Yii::$app->user->isGuest)
        {
            return $this->goHome();
        }
        $login_model = new LoginForm();
        if( Yii::$app->request->post('Login'))
        {
            $login_model->attributes = Yii::$app->request->post('Login');
            if($login_model->validate())
            {
                Yii::$app->user->login($login_model->getUser());
                return $this->goHome();
            }
        }
        return $this->render('login',['login_model'=>$login_model]);
    }
    
    
     public function actionLogo()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return string
     */
    public function actionContact()
    {
          $model = new ContactForm();

        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['agent1156@yandex.ru'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');
          

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
        
        
        
        /*  $session = Yii::$app->session;
        $session->open();
        
        $model = new ContactForm();
        if( $model->load(Yii::$app->request->post()) ){
            
            if($model->send()){
                
                Yii::$app->session->setFlash('success', 'Ваш заказ принят. Менеджер вскоре свяжется с Вами.')
            
                    ->setFrom(['agent1156@yandex.ru' => 'yii2.loc'])
                    ->setTo($order->email)
                    ->setSubject('Заказ')
                    ->send();
              
                return $this->refresh();
            }else{
                Yii::$app->session->setFlash('error', 'Ошибка оформления заказа');
            }
        }
        return $this->render('contact', compact('model'))*/;
    }

    public function actionComment()
    {
        $model = new CommentForm();

        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['agent1156@yandex.ru'])) {
            $model->comment_id = Yii::$app->request->get('comment_id');
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);




    }
    

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }
    
    public function actionSignup(){
        
        $model = new Signup();
       
           $model ->attributes = Yii::$app->request->post('Signup');
           if($model->validate()){
               $model->signup();
               return $this->goHome();
           }
        return $this->render('signup', compact('model'));
    
    
    
}
}
