<?php

namespace api\modules\v1\controllers;

use yii\filters\VerbFilter;
use yii\rest\ActiveController;
use yii\rest\Controller;

/**
 * Country Controller API
 *
 * @author Budi Irawan <deerawan@gmail.com>
 */
class PasienController extends Controller
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

    public function actionView($id_user){
        $id_pasien = \api\modules\v1\models\Pasien::find()
            ->select('id_pasien')
            ->where(['id_user' => $id_user])
            ->one();
        $id_dokter = \api\modules\v1\models\Riwayat::find()
            ->select('id_dokter')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $nama_pasien = \api\modules\v1\models\Pasien::find()
            ->select('nama_pasien')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $nama_dokter = \api\modules\v1\models\Dokter::find()
            ->select(['nama_dokter', 'id_dokter'])
            ->where(['id_dokter' => $id_dokter])
            ->distinct()
            ->all();
        $no_telp_dokter = \api\modules\v1\models\Dokter::find()
            ->select(['no_telp','id_dokter'])
            ->where(['id_dokter' => $id_dokter])
            ->all();
        $alamat_praktik = \api\modules\v1\models\Dokter::find()
            ->select(['alamat_praktik','id_dokter'])
            ->where(['id_dokter' => $id_dokter])
            ->all();
        $alamat_rumah = \api\modules\v1\models\Dokter::find()
            ->select(['alamat_rumah','id_dokter'])
            ->where(['id_dokter' => $id_dokter])
            ->all();
        $umur = \api\modules\v1\models\Riwayat::find()
            ->select('umur')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $berat_badan= \api\modules\v1\models\Riwayat::find()
            ->select('berat_badan')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $tinggi_badan = \api\modules\v1\models\Riwayat::find()
            ->select('tinggi_badan')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $riwayat_kesehatan_keluarga= \api\modules\v1\models\Riwayat::find()
            ->select('riwayat_kesehatan_keluarga')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $keluhan_utama = \api\modules\v1\models\Riwayat::find()
            ->select('keluhan_utama')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $id_diagnosa =  \api\modules\v1\models\Riwayat::find()
            ->select('diagnosa')
            ->where(['id_pasien' => $id_pasien])
            ->one();
        $diagnosa = \api\modules\v1\models\DaftarPenyakit::find()
            ->select('nama_penyakit')
            ->where(['id' => $id_diagnosa])
            ->all();
        $larangan = \api\modules\v1\models\Riwayat::find()
            ->select('larangan')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $tgl_periksa= \api\modules\v1\models\Riwayat::find()
            ->select('tgl_periksa')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $perawatan = \api\modules\v1\models\Riwayat::find()
            ->select('perawatan')
            ->where(['id_pasien' => $id_pasien])
            ->all();

        $pasien = \api\modules\v1\models\Pasien::find()
            ->where(['id_pasien'=> $id_pasien])->all();

        $data = [];
        $datadokter = [];

        $riwayat = \api\modules\v1\models\Riwayat::find()
            ->select('id_dokter')
            ->where(['id_pasien'=> $id_pasien])
            ->distinct()
            ->all();
        foreach ($riwayat as $model) {

            $nmdokter = '';
            foreach ($nama_dokter as $dok) {
                if($dok->id_dokter == $model->id_dokter){
                    $nmdokter = $dok->nama_dokter;
                }
            }

            $notelpdokter = '';
            foreach ($no_telp_dokter as $telp) {
                if($telp->id_dokter == $model->id_dokter){
                    $notelpdokter = $telp->no_telp;
                }
            }

            $alamatpraktik = '';
            foreach ($alamat_praktik as $almt) {
                if($almt->id_dokter == $model->id_dokter){
                    $alamatpraktik = $almt->alamat_praktik;
                }
            }
            $alamatrumah = '';
            foreach ($alamat_rumah as $almt_rumah) {
                if($almt_rumah->id_dokter == $model->id_dokter){
                    $alamatrumah = $almt_rumah->alamat_rumah;
                }
            }

            $datadokter[] = [
                'nama_dokter' => $nmdokter,
                'no_telp_dokter' => $notelpdokter,
                'alamat_praktik' => $alamatpraktik,
                'alamat_rumah' => $alamatrumah,
            ];
        }

        foreach ($pasien as $model) {
            $data[] = [
                'id_pasien' => $model->id_pasien,
                'nama_pasien' => $model->nama_pasien,
                'umur' => $umur[0]->umur,
                'jenis_kelamin' => $model->jenis_kelamin,
                'email' => $model->email,
                'golongan_darah' => $model->gol_darah,
                'berat_badan' => $berat_badan[0]->berat_badan,
                'tinggi_badan' => $tinggi_badan[0]->tinggi_badan,
                'riwayat_penyakit_keluarga' => $riwayat_kesehatan_keluarga[0]->riwayat_kesehatan_keluarga,
                'alamat' => $model->alamat,
                'larangan' => $larangan[0]->larangan,
                'pemeriksaan_terbaru' => $tgl_periksa[0]->tgl_periksa,
                'dokter' => $datadokter
            ];
        }


        return [
            "status" => "sukses",
            "data" => $data
        ];
    }

    public $modelClass = 'api\modules\v1\models\Pasien';
}
