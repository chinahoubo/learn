#!usr/bin/perl 
use strict;
use POSIX;
use Encode;
my $current_time = strftime("%Y年%m月%d日",localtime);
my $myfilename;
#my $string;
my $tab = " "x4;
sub usage(){
	print "please input filename, And you can only enter one parameter!";	
}

if (@ARGV != 1 ) {
	usage();
}else{
	$myfilename = $ARGV[0];
}

open (INPUT,">",$myfilename), or die "can't create this file $myfilename\n";
my $string = "";
$string .= "#!usr/bin/perl -w\n";
$string .= "use strcit;\n";
$string .= "use utf8;\n";
$string .= "use unicode;\n";
$string .= "\n";
$string .= "#---------------------------------------------- #\n";
$string .= "#Filename = $myfilename                         \n";
$string .= "#Author :  HBO                                  \n";
$string .= "#Time   :  $current_time                        \n";
$string .= "#Address:  四川成都                            \n";
$string .= "#Description :                                  \n";
$string .= "#                                               \n";
$string .= "#                                               \n";
$string .= "#---------------------------------------------- #\n";
print INPUT $string;
close(INPUT);






print "current time is : $current_time";
print "current time is : $myfilename";
