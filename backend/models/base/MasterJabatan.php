<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;

/**
 * This is the base-model class for table "master_jabatan".
 *
 * @property integer $id
 * @property string $nama_jabatan
 *
 * @property \backend\models\Forum[] $forums
 * @property string $aliasModel
 */
abstract class MasterJabatan extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'master_jabatan';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nama_jabatan'], 'required'],
            [['nama_jabatan'], 'string', 'max' => 250]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama_jabatan' => 'Nama Jabatan',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getForums()
    {
        return $this->hasMany(\backend\models\Forum::className(), ['id_jabatan' => 'id']);
    }




}
