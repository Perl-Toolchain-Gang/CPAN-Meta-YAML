requires "B" => "0";
requires "Carp" => "0";
requires "Exporter" => "0";
requires "Fcntl" => "0";
requires "Scalar::Util" => "0";
requires "perl" => "5.008001";
requires "strict" => "0";
requires "warnings" => "0";

on 'test' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "File::Basename" => "0";
  requires "File::Find" => "0";
  requires "File::Spec" => "0";
  requires "File::Spec::Functions" => "0";
  requires "File::Temp" => "0";
  requires "Getopt::Long" => "0";
  requires "IO::Dir" => "0";
  requires "JSON::PP" => "0";
  requires "List::Util" => "0";
  requires "Test::More" => "0.99";
  requires "lib" => "0";
  requires "utf8" => "0";
  requires "vars" => "0";
  requires "version" => "0";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "0";
  recommends "CPAN::Meta::Requirements" => "2.120900";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.17";
};

on 'develop' => sub {
  requires "Dist::Zilla" => "5.013";
  requires "Dist::Zilla::Plugin::AppendExternalData" => "0";
  requires "Dist::Zilla::Plugin::Doppelgaenger" => "0.007";
  requires "Dist::Zilla::Plugin::Encoding" => "0";
  requires "Dist::Zilla::Plugin::MakeMaker::Highlander" => "0.003";
  requires "Dist::Zilla::Plugin::PkgVersion" => "0";
  requires "Dist::Zilla::PluginBundle::DAGOLDEN" => "0.060";
  requires "File::Spec" => "0";
  requires "File::Temp" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "Test::CPAN::Meta" => "0";
  requires "Test::More" => "0";
  requires "Test::Pod" => "1.41";
};
