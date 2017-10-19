<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel" style="text-align: center">
            <div class="center">
                <img src="<?= Yii::$app->request->baseUrl. '/dist/logo.png'?>" alt="User Image" width="30%"/>
            </div><br>
            <div style="color: #ffffff">
                <b>Patient<br>
                    Medical History
                </b>
            </div>
        </div>

        <ul class="sidebar-menu">
            <li class="header">MENU UTAMA</li>
        </ul>
        <?php

        use hscstudio\mimin\components\Mimin;
        $menuItems = backend\components\SidebarMenu::getMenu();

        //$menuItems = Mimin::filterMenu($menuItems);

        ?>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu'],
                'items' => $menuItems,
            ]
        ) ?>

    </section>

</aside>
