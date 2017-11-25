<?php
use yii\helpers\Html;
use yii\helpers\Url;
    $data = $dataProvider->getModels();
?>
<div class="container">
    <div class="row" style="padding:5%">
        <?php
            foreach ($data as $value ) { ?>
        <div class="col-md-4">
            <div class="panel panel-success" style="text-align:center">
                <div class="panel-heading">
                     <h3 class="panel-title"><?php echo $value['judul'] ; ?></h3>
                    
                </div>
                <div class="panel-body">
                    <?php
                        $small = substr($value['abstrak'], 0, 100); 
                    echo $small;?>...<?= Html::a('<span class="glyphicon glyphicon-eye-open" style="color:orange"></span>',['viewarticle','id' => $value['id_artikel']],['class' => 'circle btn btn-succes']) ?>
                    
                </div>
            </div>
        </div>
        <?php
            }
        ?>
    </div>
</div>