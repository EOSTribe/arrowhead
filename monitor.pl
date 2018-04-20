use strict;
use Sys::Info;
use Sys::Info::Constants qw( :device_cpu );
my $info = Sys::Info->new;
my $cpu  = $info->device('CPU');
my $os = $info->os();

my $datadir = $ARGV[0];

# Check data-dir and start script in place:
if(! -d $datadir ) {
	print "perl monitor.pl <eos-data-dir>\n";
	exit 1;
} elsif (!-f $datadir . "/config.ini") {
	print "Node config.ini file found under dir " . $datadir . "\n";
	exit 1;
} elsif(!-f $datadir . "/start.sh") {
	open FILE, ">$datadir/start.sh";
	print FILE "#!/bin/bash\n";
	print FILE "DATADIR=$datadir\n";
	print FILE "nodeos --enable-stale-production true --data-dir \$DATADIR --config-dir \$DATADIR > \$DATADIR/stdout.txt 2> \$DATADIR/stderr.txt & echo \$! > \$DATADIR/eosd.pid\n";
	close FILE;	
	my $rt = `chmod +x $datadir/start.sh`;
}
# Get producer:
my $producer = `grep producer-name $datadir/config.ini`;
$producer =~ s/producer-name\s*=\s*//;
chomp($producer);
# Check if process started and restart if needed:
my @nodeos_process = `ps -ef | grep "nodeos" | grep "$datadir"`;
my $proc_count = 0;
foreach my $proc (@nodeos_process) {
	$proc_count++;	
}

my $nodeos_status = "running";
if($proc_count < 2) {
	my $rt = `$datadir/start.sh`;
	print "Restarted: $datadir/start.sh [$rt]\n";
	$nodeos_status = "restarted";
}

# Get top info:
my @top = `top -n 1`;
chomp(@top);

print "{\n";
printf "\"producer\": \"%s\",\n", $producer;
printf "\"status\": \"%s\",\n", $nodeos_status;
printf "\"os\": \"%s\",\n", $os->name( edition => 1);
printf "\"server_uptime\": \"%.2f days\",\n", $os->tick_count/(60*60*24);
printf "\"cpu_info:\": \"%s\",\n", scalar($cpu->identify)  || 'N/A';
printf "\"cpu_speed\": \"%s MHz\",\n", $cpu->speed || 'N/A';
printf "\"cpu_count\": \"%d\",\n"  , $cpu->count || 1;
printf "\"avg_cpu_load\": \"%s\",\n" , $cpu->load  || 0;
printf "\"top_cpus_load\": \"%s\",\n", $top[2];
printf "\"top_mem\": \"%s\",\n", $top[3];
printf "\"top_swap\": \"%s\",\n", $top[4];
print "}\n";

exit;
