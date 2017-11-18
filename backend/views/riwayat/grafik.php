<?=
\dosamigos\highcharts\HighCharts::widget([
    'clientOptions' => [
        'chart' => [
                'type'=>'pie',
                'options3d'=>[
                    'enabled' =>'true',
                    'alpha' => 45,
                    'beta' => 0

                ]
        ],
        'title' => [
             'text' => 'Fruit Consumption'
             ],
        'plotOptions' =>[
            'pie' =>[
                'allowPointSelect' => 'true',
                'cursor' => 'pointer',
                'depth' => 35,
                'dataLabels' =>[
                    'enabled' => 'true',
                    'format' => '{point.name}'
                ]
            ]
        ],
        'series' => [

            'type' =>'pie',
            'name' => 'browser',
            'data' =>[
                ['Firefox',45.0],
                ['iE',26.8],
                ['Safari', 8.5],
                ['Opera', 6.2],
                ['Others', 0.7]

            ]

           
        ]
    ]
]);
?>
   <!--  series: [{
        type: 'pie',
        name: 'Browser share',
        data: [
            ['Firefox', 45.0],
            ['IE', 26.8],
            {
                name: 'Chrome',
                y: 12.8,
                sliced: true,
                selected: true
            },
            ['Safari', 8.5],
            ['Opera', 6.2],
            ['Others', 0.7]
        ]
    }] -->