<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Riwayat;

/**
* RiwayatSearch represents the model behind the search form about `app\models\Riwayat`.
*/
class RiwayatSearch extends Riwayat
{
/**
* @inheritdoc
*/
public function rules()
{
return [
[['id_riwayat', 'id_pasien', 'id_dokter', 'umur', 'berat_badan', 'tinggi_badan', 'diagnosa'], 'integer'],
            [['riwayat_kesehatan_keluarga', 'keluhan_utama', 'larangan',  'tgl_periksa', 'perawatan'], 'safe'],
];
}

/**
* @inheritdoc
*/
public function scenarios()
{
// bypass scenarios() implementation in the parent class
return Model::scenarios();
}

/**
* Creates data provider instance with search query applied
*
* @param array $params
*
* @return ActiveDataProvider
*/
public function search($params)
{
$query = Riwayat::find();

$dataProvider = new ActiveDataProvider([
'query' => $query,
]);

$this->load($params);

if (!$this->validate()) {
// uncomment the following line if you do not want to any records when validation fails
// $query->where('0=1');
return $dataProvider;
}

$query->andFilterWhere([
            'id_riwayat' => $this->id_riwayat,
            'id_pasien' => $this->id_pasien,
            'id_dokter' => $this->id_dokter,
            'umur' => $this->umur,
            'berat_badan' => $this->berat_badan,
            'tinggi_badan' => $this->tinggi_badan,
            'diagnosa' => $this->diagnosa,
            'tgl_periksa' => $this->tgl_periksa,
        ]);

        $query->andFilterWhere(['like', 'riwayat_kesehatan_keluarga', $this->riwayat_kesehatan_keluarga])
            ->andFilterWhere(['like', 'keluhan_utama', $this->keluhan_utama])
            ->andFilterWhere(['like', 'larangan', $this->larangan])
            ->andFilterWhere(['like', 'perawatan', $this->perawatan]);

return $dataProvider;
}
public function searchDetail($params,$id_pasien)
{
$query = Riwayat::find();

$dataProvider = new ActiveDataProvider([
'query' => $query,
]);

$this->load($params);

if (!$this->validate()) {
// uncomment the following line if you do not want to any records when validation fails
// $query->where('0=1');
return $dataProvider;
}

$query->andFilterWhere([
            'id_riwayat' => $this->id_riwayat,
            'id_pasien' => $id_pasien,
            'id_dokter' => $this->id_dokter,
            'umur' => $this->umur,
            'berat_badan' => $this->berat_badan,
            'tinggi_badan' => $this->tinggi_badan,
            'diagnosa' => $this->diagnosa,
            'tgl_periksa' => $this->tgl_periksa,
        ]);

        $query->andFilterWhere(['like', 'riwayat_kesehatan_keluarga', $this->riwayat_kesehatan_keluarga])
            ->andFilterWhere(['like', 'keluhan_utama', $this->keluhan_utama])
            ->andFilterWhere(['like', 'larangan', $this->larangan])
            ->andFilterWhere(['like', 'perawatan', $this->perawatan]);

return $dataProvider;
}
public function searchGrafik($params,$id_pasien)
{
// $query = Riwayat::find()
// ->select([
//     'COUNT(Riwayat.diagnosa) AS jum_diagnosa ',
//     'daftar_penyakit.nama_penyakit'
// ])
// ->andWhere('Riwayat.id_pasien = '.$id_pasien)
// ->leftJoin('daftar_penyakit','Riwayat.diagnosa = daftar_penyakit.id')
// ->groupBy('Riwayat.diagnosa');
    $db = Yii::$app->db;
    $dataProvider = $db->createCommand('SELECT count(r.diagnosa) as diagno,d.nama_penyakit as namanya from riwayat r, daftar_penyakit d WHERE r.id_pasien=1 AND r.diagnosa = d.id GROUP BY(r.diagnosa)')->queryAll();
// $dataProvider = new ActiveDataProvider([
// 'query' => $query,
// ]);
//var_dump($dataProvider);

$this->load($params);

if (!$this->validate()) {
// uncomment the following line if you do not want to any records when validation fails
// $query->where('0=1');
return $dataProvider;
}
return $dataProvider;
}
}