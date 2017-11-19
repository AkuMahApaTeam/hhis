
<?php
foreach ($dataProvider as $key) {
     $b[] = ($key['namanya']);
     $a[] = (int)($key['diagno']);
     $sortan[] = (int)($key['diagno']);
 }
 rsort($sortan);
 for ($i=0; $i < count($sortan) ; $i++) { 
     if($a[$i] == $sortan[0]){
        $iterasi = $i;
        break;
     }
 }
// foreach($dataProvider as $values){ 
//  $a[0]= ($values['regional']); 
//  $c[]= ($values['regional']); 
//  $b[]= array(
//     'type'=> 'column', 
//     'name' =>$values['namanya'], 
//     'data' => array((int)$values['jmlmsisdn'], (int)$values['jmlba'],(int)$values['jmlcb'], (int)$values['jmlcbu']) ); 
// }
?>
 <div class="clearfix crud-navigation">
    
        <div class="pull-right">

                                                                                                            
            <?= 
            \yii\bootstrap\ButtonDropdown::widget(
            [
            'id' => 'giiant-relations',
            'encodeLabel' => false,
            'label' => '<span class="glyphicon glyphicon-paperclip"></span> ' . 'Tampilkan Grafik',
            'dropdown' => [
            'options' => [
            'class' => 'dropdown-menu-right'
            ],
            'encodeLabels' => false,
            'items' => [
            [
                'url' => ['riwayat/one_months'],
                'label' =>  '1 bulan terakhir',
            ],
            [
                'url' => ['riwayat/three_months'],
                'label' =>   '3 bulan terakhir',
            ],
            [
                'url' => ['riwayat/grafik'],
                'label' =>  'Semua Riwayat',
            ],
                              
                    
]
            ],
            'options' => [
            'class' => 'btn-default'
            ]
            ]
            );
            ?>
        </div>
    </div>
    <hr>

<?=
\dosamigos\highcharts\HighCharts::widget([
    'clientOptions' => [
        'chart' => [
                'type' => 'bar'
        ],
        'title' => [
             'text' => 'Grafik Riwayat Penyakit yang Pernah Dialami'
             ],
        'xAxis' => [
            'categories' => $b
        ],
        'yAxis' => [
            'title' => [
                'text' => 'Jumlah'
            ]
        ],
        'series' => [
            ['name' => 'Kuantitias', 'data' => $a]
           // ['name' => 'John', 'data' => [5, 7, 3,1,2]]
        ]
    ]
]);
 
?>