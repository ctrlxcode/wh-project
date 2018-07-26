<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'modules' => [
        'admin' => [
            'class' => 'mdm\admin\Module',
            'modules' => [
                'rbac' => [
                    'class' => 'yii2mod\rbac\Module',
                    // Some controller property maybe need to change. 
                    'controllerMap' => [
                        'assignment' => [
                            'class' => 'yii2mod\rbac\controllers\AssignmentController',
                            'userIdentityClass' => 'app\models\User',
                            'searchClass' => 'Your own search model class',
                            'idField' => 'id',
                            'usernameField' => 'username',
                            'gridViewColumns' => [
                                 'id',
                                 'username',
                                 'email'
                             ]
                        ]
                    ]
                ],
            ],
            'layout' => 'left-menu',
            'mainLayout' => '@app/views/layouts/main.php',
        ]   
    ],
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        // 'urlManager' => [
        //     'enablePrettyUrl' => true,
        //     'showScriptName' => false,
        //     'enableStrictParsing' => false,
        //     'rules' => [
        //         'mycategory/<controller:\w+>/<action:\w+>' => '<controller>/<action>',
        //         '<controller:\w+>/<id:\d+>' => '<controller>/view',
        //         '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
        //         '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
        //         //Rules with Server Names
        //         'http://admin.domain.com/login' => 'admin/user/login',
        //         'http://www.domain.com/login' => 'site/login',
        //         'http://<country:\w+>.domain.com/profile' => 'user/view',
        //         '<controller:\w+>/<id:\d+>-<slug:[A-Za-z0-9 -_.]+>' => '<controller>/view',
        //     ],
        // ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager', // or use 'yii\rbac\DbManager'
        ]
    ],
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        'allowActions' => [
            'site/*',
            'gii/*',
            // 'admin/*',
           
        ]
    ],
];