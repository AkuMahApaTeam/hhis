<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use \dmstr\bootstrap\Tabs;
use yii\helpers\StringHelper;
use yii\helpers\ArrayHelper;

/**
* @var yii\web\View $this
* @var app\models\Riwayat $model
* @var yii\widgets\ActiveForm $form
*/

?>
<div class="box box-warning">
   <div class="box-body">
<div class="riwayat-form">

    <?php $form = ActiveForm::begin([
    'id' => 'Riwayat',
    'layout' => 'horizontal',
    'enableClientValidation' => true,
    'errorSummaryCssClass' => 'error-summary alert alert-error'
    ]
    );
    ?>

    <div class="">
        <?php $this->beginBlock('main'); ?>

        <p>
           
        <div class="row">
            <div class="tab-content">
                 <div role="tabpanel" class="tab-pane fade in active" id="home">
                    <h4 style="text-align: center; color: #16a085">DATA DIRI</h4>
                    <div class="col-md-6 col-sm-6">
                                       <!-- attribute tgl_periksa -->
                        <?= $form->field($model, 'tgl_periksa')->textInput(['readonly'=>true,   'value'=>date('Y-m-d')]) ?>

            <!-- attribute umur -->
                        <?= $form->field($model, 'umur')->textInput() ?>
                    </div>
                    <div class="col-md-6 col-sm-6">

            <!-- attribute berat_badan -->
                        <?= $form->field($model, 'berat_badan')->textInput()->label('Berat Badan (Kg)') ?>

            <!-- attribute tinggi_badan -->
                        <?= $form->field($model, 'tinggi_badan')->textInput()->label('Tinggi Badan (Cm)') ?>
                    </div>
                    <div role="tablist" style="text-align: center">
                        <div class="btn-group" role="group">
                            <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><button type="button" class="btn btn-primary but1">Next</button></a>

                        </div>
                       
                    </div>
                 </div>

                 <div role="tabpanel" class="tab-pane fade" id="profile">
                    
                      <h4 style="text-align: center;color: #16a085">PEMERIKSAAN</h4>
                      <div class="row">
                        <div class="col-md-6">
                              <!-- attribute keluhan_utama -->
                        <?= $form->field($model, 'keluhan_utama')->textarea(['rows' => 6]) ?>
                            <!-- attribute head -->
                       <?= $form->field($model, 'head')->textarea(['rows' => 6]) ?>
            <!-- attribute neck -->
                       <?= $form->field($model, 'neck')->textarea(['rows' => 6]) ?>
                         </div>
                         <div class="col-md-6">
                             <!-- attribute thorax -->
                       <?= $form->field($model, 'thorax')->textarea(['rows' => 6]) ?>
            <!-- attribute abdomen -->
                       <?= $form->field($model, 'abdomen')->textarea(['rows' => 6]) ?>
            <!-- attribute ekstremitas -->
                       <?= $form->field($model, 'ekstremitas')->textarea(['rows' => 6]) ?>
                         </div>
                     </div>
                      
           
                        <!-- attribute pemeriksa_penunjang -->

                        <div role="tablist" style="text-align: center">
                            <div class="btn-group" role="group">
                                <a href="#home" aria-controls="home" role="tab" data-toggle="tab"><button type="button"class="btn btn-primary but1">Previous</button></a>
                                    <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"><button type="button" class="btn btn-primary but1">Next</button></a>
                            </div>
                       
                        </div>
                </div>

                 <div role="tabpanel" class="tab-pane fade" id="messages">
                    <div class="row">
                        <div class="col-md-6">
                              <?= $form->field($model, 'pemeriksa_penunjang')->textarea(['rows' => 6]) ?>
                            <!-- attribute riwayat_kesehatan_keluarga -->
                            <?= $form->field($model, 'riwayat_kesehatan_keluarga')->textarea(['rows' => 6]) ?>

                 <?= // generated by schmunk42\giiant\generators\crud\providers\core\RelationProvider::activeField
                            $form->field($model, 'diagnosa')->widget(\kartik\select2\Select2::className(), [
                                'data' => ArrayHelper::map(app\models\DaftarPenyakit::find()->all(), 'id', 'nama_penyakit'),
                                'disabled' => \Yii::$app->user->identity->role == 6 ? true : false,
                                'options' => [
                                    'prompt' => 'Pilih Jenis Penyakit',
                                    'id' => 'diagnoasa',

                                ],
                            ])->label('Diagnosa')->hint('*pilih lainnya jika pilihan diagnosa tidak ditemukan'); ?>

                            <?= $form->field($model, 'diagnosa_text')->textarea(['rows' => 6,'class'=>'diag_text'])->label('Diagnosa Lainnya')->hint('* diisi apabila tidak ditemukan pada pilihan diagnosa') ?>
                        </div>
                        <div class="col-md-6">

                <!-- attribute larangan -->
                            <?= $form->field($model, 'larangan')->textarea(['rows' => 6])->label('Terapi/Penata Laksana') ?>

                <!-- attribute advis -->
                           <?= $form->field($model, 'advis')->textarea(['rows' => 6]) ?>
                           <!-- attribute perawatan -->
                            <?= $form->field($model, 'perawatan')->textInput(['maxlength' => true])->label('Tindak Lanjut') ?>




                              <?= $form->field($model, 'id_pasien')->hiddenInput(['value'=>$modelPasien->id_pasien])->label(false) ?>
                            <?= $form->field($model, 'id_dokter')->hiddenInput(['value'=>$modelDokter->id_dokter])->label(false) ?>
                        </div>
                    </div>
              
                    <div role="tablist" style="text-align: center">
                            <div class="btn-group" role="group">
                                <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><button type="button"class="btn btn-primary but1">Previous</button></a>
                                 
                            
                 
            
        </p>
                          
                            <?php echo $form->errorSummary($model); ?>
                            <?= Html::submitButton(
                            '<span class="glyphicon glyphicon-check"></span> ' .
                            ($model->isNewRecord ? 'Create' : 'Save'),
                            [
                            'id' => 'save-' . $model->formName(),
                            'class' => 'btn btn-success'
                            ]
                            );
                            ?>
                            <?php $this->endBlock(); ?>
                            
                            <?=
                        Tabs::widget(
                                     [
                                        'encodeLabels' => false,
                                        'items' => [ 
                                            [
                        'label'   =>  'Riwayat',
                        'content' => $this->blocks['main'],
                        'active'  => true,
                    ],
                                        ]
                                     ]
                        );
                        ?>
                            </div>
                        </div>
                            <?php ActiveForm::end(); ?>
                </div>
            </div>
         </div>

    </div>


</div>
</div>
</div>
<script>
    $(document).ready(function () {
        $('.diag_text').hide();
    $(document.body).on('change', '#diagnoasa', function () {
        var val = $('#diagnoasa').val();
        if(val == 1 ) {
          $('.diag_text').show();
        } else {
          $('.diag_text').hide();
        }
    });
});
    </script>
