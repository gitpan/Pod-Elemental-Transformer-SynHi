
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Pod::Elemental::Transformer::SynHi',
                       'DISTNAME' => 'Pod-Elemental-Transformer-SynHi',
                       'AUTHOR' => 'Ricardo SIGNES <rjbs@cpan.org>',
                       'ABSTRACT' => 'a role for transforming code into syntax highlighted HTML regions',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100250',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Pod::Elemental' => '0',
                                        'ExtUtils::MakeMaker' => '6.11'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



