# ABSTRACT: Read and write a subset of YAML for CPAN Meta files

=head1 SYNOPSIS

    use CPAN::Meta::YAML;

    # methods for files
    $yaml = CPAN::Meta::YAML->read('META.yml');
    $yaml->write('MYMETA.yml');

    # methods for strings
    $yaml_text = $yaml->write_string;
    $yaml = CPAN::Meta::YAML->read_string($yaml_text);

    # finding the metadata
    my $meta = $yaml->[0];

    # handling errors
    $yaml->write($file)
      or die CPAN::Meta::YAML->errstr;

=head1 DESCRIPTION

This module implements a subset of the YAML specification for use in reading
and writing CPAN metadata files like F<META.yml> and F<MYMETA.yml>.  It should
not be used for any other general YAML parsing or generation task.

=head1 SUPPORT

This module is currently derived from L<YAML::Tiny> by Adam Kennedy.  If
there are bugs in how it parses a particular META.yml file, please file
a bug report in the YAML::Tiny bugtracker:
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=YAML-Tiny>

=head1 SEE ALSO

L<YAML::Tiny>, L<YAML>, L<YAML::XS>

=cut

