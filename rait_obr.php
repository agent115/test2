<?php





/*use app\models\Raitip;
if(isset(Yii::$app->request->post['action'])){
    if(htmlentities(Yii::$app->request->post['action'], END_QUOTES, "UTF-8")== 'rauting'){


        $id =  (int)Yii::$app->request->post('idBox');
        $rate= (float)idBox('rate');
        $ip = \Yii::$app->user->identity->username;


        $sql = Raitip::find()->where(['ip'=>$ip])->where(['stati_id'=> $id])->all();
        $mess = array();
        if(!$sql){
            $mess["error"] = true;
            $mess['message'] = error();
            exit(json_encode($mess));
        }
        if(!$sql['0']){
            $mod = new Raitip();
            $mod->ip = $ip;
            $mod->stati_id = $id;

            $resul2 = Raitid::find()->select(['stati_id' => $rate, "rait_counter" => "rait_counter" +1 ])->where(["id" => $id])->all();

            if(!$resul2){
                $mess["error"] = true;
                $mess['message'] = error();
                exit(json_encode($mess));
            }

        }else{
            $mess["error"] = true;
            $mess['message'] = 'Вы уже голосовали';
            exit(json_encode($mess));
        }
    }*/
/*}*/

