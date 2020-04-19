<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit79a663e782e1920675402ed12b306e7a
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit79a663e782e1920675402ed12b306e7a::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit79a663e782e1920675402ed12b306e7a::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}