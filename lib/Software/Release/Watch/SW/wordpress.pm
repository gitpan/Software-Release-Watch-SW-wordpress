package Software::Release::Watch::SW::wordpress;

use 5.010;
use Moo;

our $VERSION = '0.01'; # VERSION

with 'Software::Release::Watch::Source::WebPage::ArchiveLinks';
with 'Software::Release::Watch::Versioning::SemVer';
with 'Software::Release::Watch::Software';

sub url { "http://wordpress.org/download/release-archive/" }

sub filter_filename {
    my ($self, $fn) = @_;
    $fn =~ /^wordpress-(?=\d)/o;
}


1;
# ABSTRACT: Watch wordpress releases


__END__
=pod

=head1 NAME

Software::Release::Watch::SW::wordpress - Watch wordpress releases

=head1 VERSION

version 0.01

=for Pod::Coverage .+

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

