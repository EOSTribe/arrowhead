use strict;
use LWP::UserAgent;
use URI::Escape;
use Sys::Info;
use Sys::Info::Constants qw( :device_cpu );
my $info = Sys::Info->new;
my $cpu  = $info->device('CPU');
my $os = $info->os();

my $post_url = "http://eosslc.com:3000/bpstats";

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
my $external_ip = `curl -s ipecho.net/plain;echo`;
chomp($external_ip);
my $internal_ip = `hostname -I`;
chomp($internal_ip);
my $hostname = `hostname`;
chomp($hostname);

my $os_name = $os->name( edition => 1);
my $uptime_days = sprintf("%.2f", $os->tick_count/(60*60*24));
my $cpu_info = scalar($cpu->identify);
my $cpu_speed = $cpu->speed;
my $cpu_count = $cpu->count || 1;
my $cpu_load = $cpu->load  || 0;
my $timestamp = localtime;

my $json = "{" .
	"\"producer\": \"$producer\"," .
	"\"node_status\": \"$nodeos_status\"," .
	"\"os_name\": \"$os_name\"," .
	"\"hostname\": \"$hostname\"," .
	"\"external_ip\": \"$external_ip\"," .
	"\"internal_ip\": \"$internal_ip\"," . 
	"\"server_uptime\": \"".$uptime_days." days\"," .
	"\"cpu_info:\": \"$cpu_info\"," . 
	"\"cpu_speed\": \"$cpu_speed MHz\"," . 
	"\"cpu_count\": \"$cpu_count\"," .
	"\"avg_cpu_load\": \"$cpu_load\"," .
	"\"timestamp\": \"$timestamp\"" .
	"}";
#print $json;

#Post Json to report server:;
my $ua = LWP::UserAgent->new;
my $req = HTTP::Request->new(POST => $post_url);
$req->header('Content-Type' => 'application/json');
$req->content($json);

my $response = $ua->request($req);
if (! $response->is_success() ) {
    print("Error sending to report server: " . $response->status_line());
}

exit;
