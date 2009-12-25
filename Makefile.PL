
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Pod-Elemental-Transformer-SynHi',
  NAME      => 'Pod::Elemental::Transformer::SynHi',
  AUTHOR    => "Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>",
  ABSTRACT  => "a\ role\ for\ transforming\ code\ into\ syntax\ highlighted\ HTML\ regions",
  VERSION   => '0.093580',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Pod::Elemental" => '0',
  },
  test => {TESTS => 't/*.t'}
);

