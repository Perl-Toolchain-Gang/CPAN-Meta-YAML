requires "Carp" => "0";
requires "Exporter" => "0";
requires "Scalar::Util" => "0";
requires "perl" => "5.006";
requires "warnings" => "0";

on 'test' => sub {
  requires "File::Spec" => "0";
  requires "File::Spec::Functions" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "Test::More" => "0.94";
  requires "strict" => "0";
  requires "vars" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.17";
};

on 'develop' => sub {
  requires "Test::CPAN::Meta" => "0";
  requires "Test::Pod" => "1.41";
};
