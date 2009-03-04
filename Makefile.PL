use inc::Module::Install;

perl_version '5.8.1';
name 'Text-JaroWinkler';

all_from 'lib/Text/JaroWinkler.pm';

requires 'perl' => '5.8.1';
requires 'Params::Validate';
requires 'Exporter::Lite';

auto_install;
WriteAll;
