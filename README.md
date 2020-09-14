# NAME

Mojolicious::Plugin::Gallery - Simple phot gallery for Mojolicious

# SYNOPSIS

    use Mojolicious::Plugin::Gallery;

# DESCRIPTION

Mojolicious::Plugin::Gallery is if you want simple gallery

Exampler content main.conf
  {
    gallery => {
      main\_path => 'public/gallery',
      sizes => {
        thumbnail => {
          width   => 412,
          height  => 412,
          crop    => 1,
          quality => 85
        },
        medium => {
          width   => 800,
          height  => 550,
          crop    => 0,
          quality => 90
        },
        large => {
          width   => 1200,
          height  => 800,
          crop    => 0,
          quality => 90
        }
      }
    },
  }

example app.pl

    #!/usr/bin/env perl

    use lib 'lib';
    use Mojolicious::Lite;

    app->plugin(Config => { file => 'main.conf' });

    app->plugin('Gallery');

    get '/' => sub {
      my $c = shift;

      $c->render(text => '<a href="/gallery">Gallery</a>');
    };

    app->start;

Alose you can find example app on https://github.com/sklukin/Mojolicious-Plugin-Galley

Your steps
  - Make dir in public/gallery
  - Run ./cmd.pl resize
  - Update info in public/gallery/&lt;your album>/meta.yml
  - Restart your app

# AUTHOR

sklukin <sklukin@yandex.ru>

# COPYRIGHT

Copyright 2020-2020 sklukin

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO
