#!/usr/bin/perl
#some weird Perl test
#
my %inner;

my @array = ('one','two','three');

my @data = (0,1,2);

my $idx;

my %wrapper = ();

foreach $idx (@data)
{
	%inner = ();
	$inner{$idx} = $array[$idx];
	my %temp = map {$_ => $inner{$_}} (keys %inner);
	$wrapper{$idx} = \%temp;
}

my $inner_idx;

foreach $idx (keys %wrapper)
{
	foreach $inner_idx (keys %{$wrapper{$idx}})
	{
		my $val = $wrapper{$idx}->{$inner_idx};
		print STDERR "$val\n";
	}
}
 