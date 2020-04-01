#list INC env array
my $i;
for (@INC) {
    printf("%d %s\n", $i++, $_)
}