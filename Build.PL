use 5.010000;

use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name        => 'ms-bin',
    dist_version       => 0.001,
    dist_abstract      => 'Various mass spec programs',
    license            => 'GPL_3',
    dist_author        => q{Jeremy Volkening <jdv@base2bio.com>},
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More'    => 0,
        'File::Compare' => 0,
    },
    requires => {
        'MS'     => 0,
    },
    meta_merge => {
        resources => {
            repository => 'https://github.com/jvolkening/ms-bin'
        }
    },
    add_to_cleanup => [ 'ms-bin-*' ],
    create_license => 1,
);
$builder->create_build_script;
