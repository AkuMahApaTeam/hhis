<?php

namespace api\modules\v1\controllers;

use yii\rest\ActiveController;

/**
 * Country Controller API
 *
 * @author Budi Irawan <deerawan@gmail.com>
 */
class RiwayatController extends ActiveController
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

    public function actionView($id_pasien){


//        $pasien = \app\models\base\Riwayat::find()->where(['id_pasien' => $id_pasien])->one();
//        $id_pasien = \frontend\models\pasien\Pasien::find()
//            ->select('id_pasien')
//            ->where(['nik' => $nik])
//            ->one();
        $riwayat = \app\models\base\Riwayat::find()->where(['id_pasien' => $id_pasien])->all();
        $id_dokter = \app\models\base\Riwayat::find()
            ->select('id_dokter')
            ->where(['id_pasien' => $id_pasien])
            ->one();
        $dokter = \app\models\base\Dokter::find()->where(['id_dokter' => $id_dokter])->one();

//        return [$pasien,[\frontend\models\dokter\Dokter::find()->select('nama_dokter')
//            ->where(['id_dokter' => $id_dokter])
//            ->one()],$riwayat];
        return ["id_pasien"=>$riwayat->id_pasien,
            "nama_pasien"=>$riwayat->nama_pasien,
            "alamat"=>$riwayat->alamat,
            "no_telp_pasien"=>$riwayat->no_telp_pasien,
            "gol_darah"=>$riwayat->gol_darah,
            "jenis_kelamin"=>$riwayat->jenis_kelamin,
            "nik"=>$riwayat->nik,
            "riwayat"=>$riwayat];
    }

//    public $modelClass = 'api\modules\v1\models\Riwayat';
}
