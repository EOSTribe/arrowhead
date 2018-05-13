use strict;


my @DATADIRS = ("/opt/node1",
	"/opt/node2",
	"/opt/node3");

foreach my $datadir (@DATADIRS) {
	open LOG, ">>$datadir/restart.log";
	if (!-f $datadir . "/config.ini") {
		print LOG "Node config.ini file found under dir " . $datadir . "\n";
		close LOG;
		exit 1;
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

	if($proc_count < 2) {
		my $rt = `$datadir/start.sh`;
		print LOG "Restarted $producer : $datadir/start.sh [$rt]\n";
	} 
	close LOG;
}

