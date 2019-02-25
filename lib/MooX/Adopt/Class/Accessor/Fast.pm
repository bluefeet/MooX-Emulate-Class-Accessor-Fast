package MooX::Adopt::Class::Accessor::Fast;
our $VERSION = '0.05';

$INC{'Class/Accessor/Fast.pm'} = __FILE__;

package #don't index
    Class::Accessor::Fast;

use Moo;
use namespace::clean;
with 'MooX::Emulate::Class::Accessor::Fast';

1;

=head1 NAME

MooX::Adopt::Class::Accessor::Fast -
  Hijack Class::Accessor::Fast in %INC;

=head1 SYNOPSYS

    use MooX::Adopt::Class::Accessor::Fast;
    use CAF::Using::Module;
    #that's it! JustWorks

=head1 DESCRIPTION

This module attempts to hijack L<Class::Accessor::Fast> in %INC and replace it
with L<MooX::Emulate::Class::Accessor::Fast>. Make sure it is loaded before the
classes you have that use <Class::Accessor::Fast>. It is meant as a tool to help
you migrate your project from L<Class::Accessor::Fast>, to
L<MooX::Emulate::Class::Accessor::Fast> and ultimately, to L<Moo>.

=head1 SEE ALSO

L<Moo>, L<Class::Accessor>, L<Class::Accessor::Fast>,
L<MooseX::Emulate::Class::Accessor::Fast>

=head1 AUTHORS AND LICENSE

See L<MooX::Emulate::Class::Accessor::Fast/AUTHORS>
and L<MooX::Emulate::Class::Accessor::Fast/LICENSE>.

