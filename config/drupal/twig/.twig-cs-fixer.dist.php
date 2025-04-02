<?php
// https://github.com/VincentLanglet/Twig-CS-Fixer/blob/main/docs/configuration.md#configuration-file

$finder = new TwigCsFixer\File\Finder();

if (glob('web/*/custom/*/templates')) {
  $finder->in('web/*/custom/*/templates');
}
// Include sub-modules or sub-themes
if (glob('web/*/custom/*/*/templates')) {
  $finder->in('web/*/custom/*/*/templates');
}

$config = new TwigCsFixer\Config\Config();
$config->setFinder($finder);

return $config;
