<?php

namespace api\modules\v1\controllers;

use yii\rest\ActiveController;

/**
 * Country Controller API
 *
 * @author Budi Irawan <deerawan@gmail.com>
 */
class KabupatenController extends ActiveController
{
  public function behaviors()
  {
      return [
          [
              'class' => \yii\filters\ContentNegotiator::className(),
              'only' => ['index', 'view'],
              'formats' => [
                  'application/json' => \yii\web\Response::FORMAT_JSON,
              ],
          ],
      ];
  }

    public function actionRead(){
        $data = [];
        $cek_kab = \api\modules\v1\models\Kabupaten::find()->all();        
            foreach ($cek_kab as $kab) {
                 $data[] = [
                'id_kab' => $kab['id_kab'],
                'id_prov' => $kab['id_prov'],
                'nama' => $kab['nama']
               
            ];
            }
             return [
                "datakota" => $data
            ];

        
     }




    public $modelClass = 'api\modules\v1\models\Kabupaten';
}
