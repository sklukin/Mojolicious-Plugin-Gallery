package Mojolicious::Plugin::Gallery;

use strict;
use 5.008_005;
our $VERSION = '0.01';

1;
__END__

=encoding utf-8

=head1 NAME

Mojolicious::Plugin::Gallery - Simple phot gallery for Mojolicious

=head1 SYNOPSIS

  use Mojolicious::Plugin::Gallery;

=head1 DESCRIPTION

Mojolicious::Plugin::Gallery is if you want simple gallery

Your steps
- Make dir in public/gallery
- Run ./cmd.pl resize
- Update info in public/gallery/<your album>/meta.yml
- Restart your app

=head1 AUTHOR

sklukin E<lt>sklukin@yandex.ruE<gt>

=head1 COPYRIGHT

Copyright 2020- sklukin

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
