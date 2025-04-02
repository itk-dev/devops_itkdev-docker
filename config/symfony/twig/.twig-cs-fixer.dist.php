<?php
// https://github.com/VincentLanglet/Twig-CS-Fixer/blob/main/docs/configuration.md#configuration-file

$finder = new TwigCsFixer\File\Finder();
$finder->in('templates');

$config = new TwigCsFixer\Config\Config();
$config->setFinder($finder);

return $config;
