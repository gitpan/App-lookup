use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name        => 'App::lookup',
    license            => 'perl',
    dist_author        => q{Ahmad Syaltut <Isyaltut@gmail.com>},
    dist_version_from  => 'lib/App/lookup.pm',
    release_status     => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More'   => 0,
        'Test::Output' => 0,
        'FindBin'      => 0,
        'File::Spec'   => 0,
        'Text::Abbrev' => 0,
    },
    requires => {
        'Browser::Open'       => 0,
        'Config::Tiny'        => 0,
        'File::Basename'      => 0,
        'File::Spec'          => 0,
        'Getopt::Long'        => 0,
        'IPC::System::Simple' => 0,
        'Pod::Usage'          => 0,
        'Text::Abbrev'        => 0,
        'Text::Wrap'          => 0,
        'URI::Encode'         => 0,
    },
    add_to_cleanup     => ['App-lookup-*'],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
