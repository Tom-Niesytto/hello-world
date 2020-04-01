my $_query = 'test';
my $temp_query_file = "____temp_sql_in.txt";

open FQUERY, ">$temp_query_file" or die "unable to open $temp_query_file for writing $!";

print FQUERY $_query;
close FQUERY;
