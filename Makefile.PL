use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'App::lookup',
    AUTHOR        => 'Ahmad Syaltut <Isyaltut@gmail.com>',
    ABSTRACT_FROM => 'lib/App/lookup.pm',
    VERSION_FROM  => 'lib/App/lookup.pm',
    LICENSE       => 'Perl_5',

    EXE_FILES => ['bin/lookup'],

    PREREQ_PM => {
        'Browser::Open'       => 0,
        'Config::Tiny'        => 0,
        'File::Basename'      => 0,
        'File::Spec'          => 0,
        'Getopt::Long'        => 0,
        'IPC::System::Simple' => 0,
        'List::Util'          => 0,
        'Pod::Usage'          => 0,
        'Text::Abbrev'        => 0,
        'Text::Wrap'          => 0,
        'URI::Encode'         => 0,
    },

    TEST_REQUIRES => {
        'Test::More'   => 0,
        'Test::Output' => 0,
        'FindBin'      => 0,
        'File::Spec'   => 0,
        'Text::Abbrev' => 0,
    },

    META_MERGE => {
        resources => {
            homepage   => 'https://github.com/Syaltut/perl-App-lookup',
            repository => 'git://github.com/Syaltut/perl-App-lookup.git',
        },
    }
);
