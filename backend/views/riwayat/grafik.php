
<?php
if($dataProvider !=null){
foreach ($dataProvider as $key) {
     $b[] = ($key['namanya']);
     $a[] = (int)($key['diagno']);
     $sortan[] = (int)($key['diagno']);
     $keluhan_terbanyak[] = ($key['keluhan']);
     $larangan_terbanyak[] = ($key['larangan']);
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
<hr>
<h3>Analitical</h3>
<div class="alert alert-danger" role="alert">
 <?php
    echo "Sakit yang paling banyak anda alami adalah ".$b[$iterasi];
 ?>
</div>
<hr>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Diagnose</th>
      <th scope="col">Keluhan</th>
      <th scope="col">Terapi</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><?php echo $b[$iterasi] ?></td>
      <td><?php echo $keluhan_terbanyak[$iterasi] ?> </td>
      <td><?php echo $larangan_terbanyak[$iterasi] ?></td>
    </tr>
  </tbody>
</table>
<?php
}else{
?>
<div class="alert alert-danger" role="alert">Data Tidak Ditemukan, silahkan melakukan pemeriksaan terlebih dahulu
</div>
<?php
}
?>