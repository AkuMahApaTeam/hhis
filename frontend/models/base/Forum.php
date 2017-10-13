<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace frontend\models\base;

use Yii;

/**
 * This is the base-model class for table "forum".
 *
 * @property integer $id
 * @property integer $id_kategori_forum
 * @property integer $id_jabatan
 * @property string $judul
 * @property string $isi
 * @property string $tanggal
 * @property integer $status
 * @property integer $id_mahasiswa
 *
 * @property \frontend\models\KategoriForum $idKategoriForum
 * @property \frontend\models\MasterJabatan $idJabatan
 * @property \frontend\models\Mahasiswa $idMahasiswa
 * @property \frontend\models\KomentarForum[] $komentarForums
 * @property string $aliasModel
 */
abstract class Forum extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'forum';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_kategori_forum', 'judul', 'isi'], 'required'],
            [['id_kategori_forum', 'status', 'id_mahasiswa'], 'integer'],
            [['isi'], 'string'],
            [['tanggal'], 'safe'],
            [['judul'], 'string', 'max' => 250],
            [['id_kategori_forum'], 'exist', 'skipOnError' => true, 'targetClass' => \frontend\models\KategoriForum::className(), 'targetAttribute' => ['id_kategori_forum' => 'id']],
            [['id_mahasiswa'], 'exist', 'skipOnError' => true, 'targetClass' => \frontend\models\Mahasiswa::className(), 'targetAttribute' => ['id_mahasiswa' => 'id']]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_kategori_forum' => 'Kategori',
            'judul' => 'Judul',
            'isi' => 'Isi',
            'tanggal' => 'Tanggal',
            'status' => 'Status',
            'id_mahasiswa' => 'Mahasiswa',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdKategoriForum()
    {
        return $this->hasOne(\frontend\models\KategoriForum::className(), ['id' => 'id_kategori_forum']);
    }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdMahasiswa()
    {
        return $this->hasOne(\frontend\models\Mahasiswa::className(), ['id' => 'id_mahasiswa']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getKomentarForums()
    {
        return $this->hasMany(\frontend\models\KomentarForum::className(), ['id_forum' => 'id']);
    }




}
