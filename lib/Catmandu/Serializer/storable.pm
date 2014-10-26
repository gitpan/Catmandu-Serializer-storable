package Catmandu::Serializer::storable;

use Catmandu::Sane;
use MIME::Base64 ();
use Storable ();
use Moo;

=head1 NAME

Catmandu::Serializer::storable - A Catmandu::Serializer backend using Storable

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

sub serialize {
    MIME::Base64::encode(Storable::nfreeze($_[1]));
}

sub deserialize {
    Storable::thaw(MIME::Base64::decode($_[1]));
}

1;

