$ns at 12.2 "$node(56) color orange"
$ns at 12.2 "$node(76) color orange"
$ns at 12.2 "$node(81) color brown"
set inf0 [attach-CBR-traffic $node(56) $sink(27) 128 0.09]
$ns at 12.2 "$inf0 start"
$ns at 20.2 "$inf0 stop"
$ns at 12.2 "$node(27) color red"
$ns at 12.2 "$node(56) label Path"
set infff0 [attach-CBR-traffic $node(56) $sink(35) 128 0.09]
$ns at 12.2 "$infff0 start"
$ns at 20.2 "$infff0 stop"
$ns at 12.2 "$node(35) color blue"
$ns at 12.2 "$node(56) label File"
set inf1 [attach-CBR-traffic $node(27) $sink(13) 128 0.09]
$ns at 12.21 "$inf1 start"
$ns at 20.21 "$inf1 stop"
$ns at 12.2 "$node(13) color red"
$ns at 12.2 "$node(27) label Path"
set infff1 [attach-CBR-traffic $node(35) $sink(45) 128 0.09]
$ns at 12.21 "$infff1 start"
$ns at 20.21 "$infff1 stop"
$ns at 12.2 "$node(45) color blue"
$ns at 12.2 "$node(35) label File"
set inf2 [attach-CBR-traffic $node(13) $sink(72) 128 0.09]
$ns at 12.22 "$inf2 start"
$ns at 20.22 "$inf2 stop"
$ns at 12.2 "$node(72) color red"
$ns at 12.2 "$node(13) label Path"
set infff2 [attach-CBR-traffic $node(45) $sink(32) 128 0.09]
$ns at 12.22 "$infff2 start"
$ns at 20.22 "$infff2 stop"
$ns at 12.2 "$node(32) color blue"
$ns at 12.2 "$node(45) label File"
set inf3 [attach-CBR-traffic $node(72) $sink(76) 128 0.09]
$ns at 12.23 "$inf3 start"
$ns at 20.23 "$inf3 stop"
$ns at 12.2 "$node(72) label Path"
set infff3 [attach-CBR-traffic $node(32) $sink(37) 128 0.09]
$ns at 12.23 "$infff3 start"
$ns at 20.23 "$infff3 stop"
$ns at 12.2 "$node(37) color blue"
$ns at 12.2 "$node(32) label File"
set infff4 [attach-CBR-traffic $node(37) $sink(61) 128 0.09]
$ns at 12.24 "$infff4 start"
$ns at 20.24 "$infff4 stop"
$ns at 12.2 "$node(61) color blue"
$ns at 12.2 "$node(37) label File"
set infff5 [attach-CBR-traffic $node(61) $sink(76) 128 0.09]
$ns at 12.25 "$infff5 start"
$ns at 20.25 "$infff5 stop"
$ns at 12.2 "$node(61) label File"
