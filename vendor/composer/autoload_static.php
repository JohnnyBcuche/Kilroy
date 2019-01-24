<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit87f1fa40c97674c97fff95f32404074f
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'Psr\\Log\\' => 8,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Psr\\Log\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/log/Psr/Log',
        ),
    );

    public static $prefixesPsr0 = array (
        'S' => 
        array (
            'Sendinblue' => 
            array (
                0 => __DIR__ . '/..' . '/mailin-api/mailin-api-php/src',
            ),
        ),
        'P' => 
        array (
            'PayPal' => 
            array (
                0 => __DIR__ . '/..' . '/paypal/rest-api-sdk-php/lib',
            ),
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit87f1fa40c97674c97fff95f32404074f::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit87f1fa40c97674c97fff95f32404074f::$prefixDirsPsr4;
            $loader->prefixesPsr0 = ComposerStaticInit87f1fa40c97674c97fff95f32404074f::$prefixesPsr0;

        }, null, ClassLoader::class);
    }
}
