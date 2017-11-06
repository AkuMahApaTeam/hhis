<?php

namespace api\modules\v1\controllers;

use yii\filters\VerbFilter;
use yii\rest\Controller;

/**
 * Country Controller API
 *
 * @author Budi Irawan <deerawan@gmail.com>
 */
class RiwayatController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post', 'delete'],
                ],
            ],
//            'access' => [
//                'class' => \yii\filters\AccessControl::className(),
//                'rules' => [
//                    [
//                        'allow' => true,
//                        'actions' => ['index', 'view', 'create', 'update', 'delete'],
//                        'roles' => ['@']
//                    ],
//                    [
//                        'allow' => false
//                    ]
//                ]
//            ]
        ];
    }

    public function actionView($id_pasien){
        $riwayat = \api\modules\v1\models\Riwayat::find()->where(['id_pasien' => $id_pasien])->all();
        $id_dokter = \api\modules\v1\models\Riwayat::find()
            ->select('id_dokter')
            ->where(['id_pasien' => $id_pasien])
            ->one();
        $dokter = \api\modules\v1\models\Dokter::find()->where(['id_dokter' => $id_dokter])->one();
        return ["data" => $riwayat];
    }

    public $modelClass = 'api\modules\v1\models\Riwayat';
}
