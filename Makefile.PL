
use strict;
use warnings;

 BEGIN { require v5.10.0; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Pod::Elemental::Transformer::SynHi',
                       'DISTNAME' => 'Pod-Elemental-Transformer-SynHi',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Ricardo SIGNES <rjbs@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0'
                                           },
                       'ABSTRACT' => 'a role for transforming code into syntax highlighted HTML regions',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100890',
                       'PREREQ_PM' => {
                                        'Moose::Role' => '0',
                                        'MooseX::Types::Moose' => '0',
                                        'Pod::Elemental' => '0',
                                        'namespace::autoclean' => '0',
                                        'MooseX::Types' => '0',
                                        'Pod::Elemental::Types' => '0',
                                        'HTML::Entities' => '0',
                                        'Pod::Elemental::Transformer' => '0',
                                        'List::MoreUtils' => '0',
                                        'Moose' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



