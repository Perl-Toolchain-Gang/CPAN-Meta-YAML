# ABSTRACT: Read and write a subset of YAML for CPAN Meta files

=head1 SYNOPSIS

    use CPAN::Meta::YAML;

    # reading a META file
    open $fh, "<:utf8", "META.yml";
    $yaml_text = do { local $/; <$fh> };
    $yaml = CPAN::Meta::YAML->read_string($yaml_text)
      or die CPAN::Meta::YAML->errstr;

    # finding the metadata
    $meta = $yaml->[0];

    # writing a META file
    $yaml_text = $yaml->write_string
      or die CPAN::Meta::YAML->errstr;
    open $fh, ">:utf8", "META.yml";
    print $fh $yaml_text;

=head1 DESCRIPTION

This module implements a subset of the YAML specification for use in reading
and writing CPAN metadata files like F<META.yml> and F<MYMETA.yml>.  It should
not be used for any other general YAML parsing or generation task.

NOTE: META.yml (and MYMETA.yml) files should be UTF-8 encoded.  Users are
responsible for proper encoding and decoding.  In particular, the C<read> and
C<write> methods do B<not> support UTF-8 and should not be used.

=head1 SUPPORT

This module is currently derived from L<YAML::Tiny> by Adam Kennedy.  If
there are bugs in how it parses a particular META.yml file, please file
a bug report in the YAML::Tiny bugtracker:
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=YAML-Tiny>

=head1 SEE ALSO

L<YAML::Tiny>, L<YAML>, L<YAML::XS>

=cut

