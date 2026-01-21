#~~~~~~~~~~~~~~~~~~~~~~~ Environmental Settings~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
set nn             82                        ;# number of mobilenodes
# ~~~~~~~~~~~~~~~~~~~~~~ Simulator Object Creation~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set ns [new Simulator]
#~~~~~~~~~~~~~~~~~~~~~~ Trace File to record all the Events~~~~~~~~~~~~~~~~~~~~~~~~~

set f [open Trace.tr w]
$ns trace-all $f
$ns  use-newtrace
# ~~~~~~~~~~~~~~~~~~~~~~~ NAM Window creation~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set namtrace [open Nam.nam w]
$ns namtrace-all-wireless $namtrace 1451 800
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Topology Creation~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set topo [new Topography]
$topo load_flatgrid 1551 1000
# ~~~~~~~~~~~~~~~~~~~~~~~~General Operational Director~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

create-god $nn



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Node Configuration~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

$ns node-config  -adhocRouting DSDV \
 		 -llType LL \
                 -macType Mac/802_11 \
                 -ifqType CMUPriQueue \
                 -ifqLen 600 \
                 -antType Antenna/OmniAntenna \
                 -propType Propagation/TwoRayGround \
                 -phyType Phy/WirelessPhy \
                 -channelType Channel/WirelessChannel \
                 -topoInstance $topo \
		 -agentTrace ON \
                 -routerTrace ON \
                 -macTrace ON \
                 -movementTrace ON \
                 -idlePower 0.5 \
		 -rxPower 1.5 \
		 -txPower 2.0 \
		 -sleepPower 0.2 \
           	 -initialEnergy 100 \
                 -energyModel EnergyModel

           	 
		 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Node Creation ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

set god_ [create-god $nn]
for { set i 0 } { $i < $nn } { incr i} {
set node($i) [$ns node]
$god_ new_node $node($i)


if { $i<81 } { $ns initial_node_pos $node($i) 70 } else { $ns initial_node_pos $node($i) 70 }
$node($i) color purple
}
$node(49) set X_ 100.78   
$node(49) set Y_  980.56
$node(49) set Z_  3000
$node(57) set X_ 250.78     
$node(57) set Y_ 980.98
$node(57) set Z_ 3000
$node(66) set X_ 250.78     
$node(66) set Y_ 980.98
$node(66) set Z_ 3000
$node(69) set X_  550.78        
$node(69) set Y_ 980.98
$node(69) set Z_ 3000
$node(73) set X_ 700.96  
$node(73) set Y_  980.14
$node(73) set Z_ 3000
$node(77) set X_ 850.69      
$node(77) set Y_ 980.65 
$node(77) set Z_ 3000
$node(62) set X_ 1000.83      
$node(62) set Y_ 980.92 
$node(62) set Z_ 3000
$node(54) set X_ 1150.86      
$node(54) set Y_ 980.75 
$node(54) set Z_ 3000
$node(50) set X_ 1300.78      
$node(50) set Y_ 980.67 
$node(50) set Z_ 3000
$node(50) set X_ 1300.78      
$node(50) set Y_ 980.67 
$node(50) set Z_ 3000


$node(53) set X_ 25.71      
$node(53) set Y_ 860.98
$node(53) set Z_ 3000
$node(4) set X_ 175.78      
$node(4) set Y_ 860.98
$node(4) set Z_ 3000
$node(42) set X_ 325.96     
$node(42) set Y_ 860.14
$node(42) set Z_ 3000
$node(16) set X_ 475.56     
$node(16) set Y_ 860.65
$node(16) set Z_ 3000
$node(44) set X_ 625.65      
$node(44) set Y_ 860.67
$node(44) set Z_ 3000
$node(34) set X_ 775.83      
$node(34) set Y_ 860.92
$node(34) set Z_ 3000
$node(46) set X_ 925.78     
$node(46) set Y_ 860.68
$node(46) set Z_ 3000
$node(9) set X_ 1075.78    
$node(9) set Y_ 860.68
$node(9) set Z_ 3000
$node(58) set X_ 1225.71    
$node(58) set Y_ 860.98
$node(58) set Z_ 3000

$node(61) set X_ 100.76         
$node(61) set Y_ 740.9
$node(61) set Z_ 3000
$node(37) set X_ 250.96          
$node(37) set Y_ 740.14
$node(37) set Z_ 3000
$node(5) set X_ 400.56       
$node(5) set Y_ 740.65
$node(5) set Z_ 3000
$node(1) set X_  550.65   
$node(1) set Y_ 740.67  
$node(1) set Z_ 3000
$node(25) set X_ 700.83        
$node(25) set Y_ 740.92 
$node(25) set Z_ 3000
$node(41) set X_ 850.78        
$node(41) set Y_ 740.68
$node(41) set Z_ 3000
$node(2) set X_ 1000.78       
$node(2) set Y_ 740.68
$node(2) set Z_ 3000
$node(48) set X_ 1150.71      
$node(48) set Y_ 740.98
$node(48) set Z_ 3000
$node(80) set X_ 1300.78     
$node(80) set Y_ 740.98
$node(80) set Z_ 3000

$node(76) set X_ 25.96          
$node(76) set Y_ 620.14  
$node(76) set Z_ 3000
$node(6) set X_ 175.56        
$node(6) set Y_  620.65   
$node(6) set Z_ 3000
$node(32) set X_ 325.65         
$node(32) set Y_ 620.67 
$node(32) set Z_ 3000
$node(8) set X_  475.43   
$node(8) set Y_ 620.92   
$node(8) set Z_ 3000
$node(15) set X_ 625.78       
$node(15) set Y_  620.68  
$node(15) set Z_ 3000
$node(10) set X_ 775.73          
$node(10) set Y_ 620.68 
$node(10) set Z_ 3000
$node(28) set X_ 925.71           
$node(28) set Y_ 620.98
$node(28) set Z_ 3000
$node(12) set X_ 1075.78     
$node(12) set Y_  620.98 
$node(12) set Z_ 3000
$node(70) set X_ 1225.96    
$node(70) set Y_ 620.14 
$node(70) set Z_ 3000

$node(72) set X_ 100.56             
$node(72) set Y_ 500.65 
$node(72) set Z_ 3000
$node(13) set X_ 250.12        
$node(13) set Y_  500.67    
$node(13) set Z_ 3000
$node(18) set X_ 400.83           
$node(18) set Y_ 500.92 
$node(18) set Z_ 3000
$node(38) set X_  550.65    
$node(38) set Y_ 500.67   
$node(38) set Z_ 3000
$node(0) set X_ 700.43         
$node(0) set Y_ 500.92  
$node(0) set Z_ 3000
$node(17) set X_ 850.78             
$node(17) set Y_ 500.68 
$node(17) set Z_ 3000
$node(14) set X_ 1000.78            
$node(14) set Y_ 500.68 
$node(14) set Z_ 3000
$node(19) set X_ 1150.71      
$node(19) set Y_  500.98  
$node(19) set Z_ 3000
$node(74) set X_ 1300.78     
$node(74) set Y_ 500.98  
$node(74) set Z_ 3000

$node(65) set X_ 25.96                
$node(65) set Y_ 380.14  
$node(65) set Z_ 3000
$node(20) set X_ 175.35           
$node(20) set Y_  380.65   
$node(20) set Z_ 3000
$node(45) set X_ 325.54            
$node(45) set Y_ 380.65  
$node(45) set Z_ 3000
$node(22) set X_  475.78      
$node(22) set Y_ 380.68   
$node(22) set Z_ 3000
$node(36) set X_ 625.78           
$node(36) set Y_ 380.68   
$node(36) set Z_ 3000
$node(24) set X_  775.71               
$node(24) set Y_ 380.98  
$node(24) set Z_ 3000
$node(40) set X_ 925.78               
$node(40) set Y_ 380.98 
$node(40) set Z_ 3000
$node(26) set X_ 1075.96     
$node(26) set Y_  380.14  
$node(26) set Z_ 3000
$node(78) set X_ 1225.58      
$node(78) set Y_ 380.65  
$node(78) set Z_ 3000

$node(68) set X_ 100.54                   
$node(68) set Y_ 260.65  
$node(68) set Z_ 3000
$node(27) set X_ 250.78             
$node(27) set Y_  260.68  
$node(27) set Z_ 3000
$node(11) set X_ 400.78               
$node(11) set Y_ 260.68 
$node(11) set Z_ 3000
$node(3) set X_  550.71        
$node(3) set Y_ 260.98  
$node(3) set Z_ 3000
$node(30) set X_ 700.78              
$node(30) set Y_ 260.98   
$node(30) set Z_ 3000
$node(31) set X_  850.96                
$node(31) set Y_ 260.14   
$node(31) set Z_ 3000
$node(7) set X_ 1000.59                 
$node(7) set Y_ 260.65 
$node(7) set Z_ 3000
$node(33) set X_ 1150.54       
$node(33) set Y_  260.65 
$node(33) set Z_ 3000
$node(63) set X_ 1300.78       
$node(63) set Y_ 260.68 
$node(63) set Z_ 3000

$node(60) set X_ 25.78                    
$node(60) set Y_ 140.68    
$node(60) set Z_ 3000
$node(21) set X_ 175.71               
$node(21) set Y_ 140.98 
$node(21) set Z_ 3000
$node(35) set X_ 325.78               
$node(35) set Y_ 140.98 
$node(35) set Z_ 3000
$node(23) set X_  475.96       
$node(23) set Y_ 140.14      
$node(23) set Z_ 3000
$node(43) set X_ 625.55              
$node(43) set Y_  140.65    
$node(43) set Z_ 3000
$node(39) set X_  775.54                   
$node(39) set Y_ 140.65   
$node(39) set Z_ 3000
$node(47) set X_ 925.78                   
$node(47) set Y_ 140.68 
$node(47) set Z_ 3000
$node(29) set X_ 1075.78       
$node(29) set Y_  140.68  
$node(29) set Z_ 3000
$node(55) set X_ 1225.71     
$node(55) set Y_ 140.98  
$node(55) set Z_ 3000

$node(52) set X_ 100.78                      
$node(52) set Y_ 20.98     
$node(52) set Z_ 3000
$node(56) set X_ 250.96                   
$node(56) set Y_ 20.14 
$node(56) set Z_ 3000
$node(64) set X_ 400.55                
$node(64) set Y_  20.65  
$node(64) set Z_ 3000
$node(79) set X_  550.54          
$node(79) set Y_ 20.65     
$node(79) set Z_ 3000
$node(75) set X_ 700.78               
$node(75) set Y_  20.68      
$node(75) set Z_ 3000
$node(71) set X_  850.78                    
$node(71) set Y_ 20.68    
$node(71) set Z_ 3000
$node(67) set X_ 1000.71                   
$node(67) set Y_ 20.98  
$node(67) set Z_ 3000

$node(51) set X_ 1300.78       
$node(51) set Y_ 20.98  
$node(51) set Z_ 3000


#------------------ Create sink for All Nodes ----------------------------

#$ns at 0.0 "$node(81) color black"
#$ns at 0.0 "$node(81) add-mark c3 black hexagon" 
#$ns at 0.0 "$node(59) color black"
#$ns at 0.0 "$node(59) add-mark c3 black hexagon" 


for {set i 0} {$i<$nn} {incr i} {	 
if { $i<81 } {  $ns at 0.0 "$node($i) color green4" }

			set sink($i) [new Agent/LossMonitor]
			$ns attach-agent $node($i) $sink($i)
		     }


proc attach-CBR-traffic { node sink pkt int } {
			global ns
			set udp [new Agent/UDP]
			$ns attach-agent $node $udp
			#Create a CBR  agent and attach it to the node
			set cbr [new Application/Traffic/CBR]
			$cbr attach-agent $udp
			$cbr set packetSize_ $pkt	;#sub packet size
			$cbr set interval_ $int
			#Attach CBR source to sink;
			$ns connect $udp $sink
			return $cbr	
		      }

     
#-------------------------------Mobilityof all node------------------------




$ns at 0.2 "$node(49)  setdest 100.78   980.56  3000"
$ns at 0.2 "$node(57)  setdest 250.78   980.98  3000"
$ns at 0.2 "$node(66)  setdest 400.71   980.98  3000"
$ns at 0.2 "$node(69)  setdest 550.78   980.98  3000"
$ns at 0.2 "$node(73)  setdest 700.96   980.14  3000"
$ns at 0.2 "$node(77)  setdest 850.69   980.65  3000"
$ns at 0.2 "$node(62)  setdest 1000.83  980.92  3000"
$ns at 0.2 "$node(54)  setdest 1150.86  980.75  3000"
$ns at 0.2 "$node(50)  setdest 1300.78  980.67  3000"


$ns at 0.2 "$node(53)  setdest 25.71    860.98  3000"
$ns at 0.2 "$node(4)   setdest 175.78   860.98  3000"
$ns at 0.2 "$node(42)  setdest 325.96   860.14  3000"
$ns at 0.2 "$node(16)   setdest 475.56   860.65  3000"
$ns at 0.2 "$node(44)  setdest 625.65   860.67  3000"
$ns at 0.2 "$node(34)  setdest 775.83   860.92  3000"
$ns at 0.2 "$node(46)  setdest 925.78   860.68  3000"
$ns at 0.2 "$node(9)   setdest 1075.78  860.68  3000"
$ns at 0.2 "$node(58)  setdest 1225.71  860.98  3000"


$ns at 0.2 "$node(61)  setdest 100.76   740.98  3000"
$ns at 0.2 "$node(37)  setdest 250.96   740.14  3000"
$ns at 0.2 "$node(5)   setdest 400.56   740.65  3000"
$ns at 0.2 "$node(1)   setdest 550.65   740.67  3000"
$ns at 0.2 "$node(25)  setdest 700.83   740.92  3000"
$ns at 0.2 "$node(41)  setdest 850.78   740.68  3000"
$ns at 0.2 "$node(2)   setdest 1000.78  740.68  3000"
$ns at 0.2 "$node(48)  setdest 1150.71  740.98  3000"
$ns at 0.2 "$node(80)  setdest 1300.78  740.98  3000"


$ns at 0.2 "$node(76)  setdest 25.96    620.14  3000"
$ns at 0.2 "$node(6)   setdest 175.56   620.65  3000"
$ns at 0.2 "$node(32)  setdest 325.65   620.67  3000"
$ns at 0.2 "$node(8)   setdest 475.43   620.92  3000"
$ns at 0.2 "$node(15)  setdest 625.78   620.68  3000"
$ns at 0.2 "$node(10)  setdest 775.73   620.68  3000"
$ns at 0.2 "$node(28)  setdest 925.71   620.98  3000"
$ns at 0.2 "$node(12)  setdest 1075.78  620.98  3000"
$ns at 0.2 "$node(70)  setdest 1225.96  620.14  3000" 


$ns at 0.2 "$node(72) setdest 100.56   500.65  3000"
$ns at 0.2 "$node(13) setdest 250.12   500.67  3000"
$ns at 0.2 "$node(18) setdest 400.83   500.92  3000"
$ns at 0.2 "$node(38) setdest 550.65   500.67  3000"
$ns at 0.2 "$node(0) setdest 700.43   500.92  3000"
$ns at 0.2 "$node(17) setdest 850.78   500.68  3000"
$ns at 0.2 "$node(14) setdest 1000.78  500.68  3000"
$ns at 0.2 "$node(19) setdest 1150.71  500.98  3000"
$ns at 0.2 "$node(74) setdest 1300.78  500.98  3000"


$ns at 0.2 "$node(65) setdest 25.96    380.14  3000"
$ns at 0.2 "$node(20) setdest 175.35   380.65  3000"
$ns at 0.2 "$node(45) setdest 325.54   380.65  3000"
$ns at 0.2 "$node(22) setdest 475.78   380.68  3000"
$ns at 0.2 "$node(36) setdest 625.78   380.68  3000"
$ns at 0.2 "$node(24) setdest 775.71   380.98  3000"
$ns at 0.2 "$node(40) setdest 925.78   380.98  3000"
$ns at 0.2 "$node(26) setdest 1075.96  380.14  3000"
$ns at 0.2 "$node(78) setdest 1225.58  380.65  3000"


$ns at 0.2 "$node(68) setdest 100.54   260.65  3000"
$ns at 0.2 "$node(27) setdest 250.78   260.68  3000"
$ns at 0.2 "$node(11) setdest 400.78   260.68  3000"
$ns at 0.2 "$node(3)  setdest 550.71   260.98  3000"
$ns at 0.2 "$node(30) setdest 700.78   260.98  3000"
$ns at 0.2 "$node(31) setdest 850.96   260.14  3000"
$ns at 0.2 "$node(7)  setdest 1000.59  260.65  3000"
$ns at 0.2 "$node(33) setdest 1150.54  260.65  3000"
$ns at 0.2 "$node(63) setdest 1300.78  260.68  3000"


$ns at 0.2 "$node(60) setdest 25.78    140.68  3000"
$ns at 0.2 "$node(21) setdest 175.71   140.98  3000"
$ns at 0.2 "$node(35) setdest 325.78   140.98  3000"
$ns at 0.2 "$node(23) setdest 475.96   140.14  3000"
$ns at 0.2 "$node(43) setdest 625.55   140.65  3000"
$ns at 0.2 "$node(39) setdest 775.54   140.65  3000"
$ns at 0.2 "$node(47) setdest 925.78   140.68  3000"
$ns at 0.2 "$node(29) setdest 1075.78  140.68  3000"
$ns at 0.2 "$node(55) setdest 1225.71  140.98  3000"


$ns at 0.2 "$node(52) setdest 100.78   20.98  3000"
$ns at 0.2 "$node(56) setdest 250.96   20.14  3000"
$ns at 0.2 "$node(64) setdest 400.55   20.65  3000"
$ns at 0.2 "$node(79) setdest 550.54   20.65  3000"
$ns at 0.2 "$node(75) setdest 700.78   20.68  3000"
$ns at 0.2 "$node(71) setdest 850.78   20.68  3000"
$ns at 0.2 "$node(67) setdest 1000.71  20.98  3000"
$ns at 0.2 "$node(59) setdest 1150.78  20.98  3000"
$ns at 0.2 "$node(51) setdest 1300.78  20.98  3000"


#$ns at 0.2 "$node(81) setdest 1447.78  550.98  3000"


#-------------------Node update-------------------------------------
$ns at 0.6 "$node(49)  setdest 100.78   980.56  3000"
$ns at 0.6 "$node(57)  setdest 250.78   980.98  3000"
$ns at 0.6 "$node(66)  setdest 400.71   980.98  3000"
$ns at 0.6 "$node(69)  setdest 550.78   980.98  3000"
$ns at 0.6 "$node(73)  setdest 700.96   980.14  3000"
$ns at 0.6 "$node(77)  setdest 850.69   980.65  3000"
$ns at 0.6 "$node(62)  setdest 1000.83  980.92  3000"
$ns at 0.6 "$node(54)  setdest 1150.86  980.75  3000"
$ns at 0.6 "$node(50)  setdest 1300.78  980.67  3000"


$ns at 0.6 "$node(53)  setdest 25.71    860.98  3000"
$ns at 0.6 "$node(4)   setdest 175.78   860.98  3000"
$ns at 0.6 "$node(42)  setdest 325.96   860.14  3000"
$ns at 0.6 "$node(16)   setdest 475.56   860.65  3000"
$ns at 0.6 "$node(44)  setdest 625.65   860.67  3000"
$ns at 0.6 "$node(34)  setdest 775.83   860.92  3000"
$ns at 0.6 "$node(46)  setdest 925.78   860.68  3000"
$ns at 0.6 "$node(9)   setdest 1075.78  860.68  3000"
$ns at 0.6 "$node(58)  setdest 1225.71  860.98  3000"


$ns at 0.6 "$node(61)  setdest 100.76   740.98  3000"
$ns at 0.6 "$node(37)  setdest 250.96   740.14  3000"
$ns at 0.6 "$node(5)   setdest 400.56   740.65  3000"
$ns at 0.6 "$node(1)   setdest 550.65   740.67  3000"
$ns at 0.6 "$node(25)  setdest 700.83   740.92  3000"
$ns at 0.6 "$node(41)  setdest 850.78   740.68  3000"
$ns at 0.6 "$node(2)   setdest 1000.78  740.68  3000"
$ns at 0.6 "$node(48)  setdest 1150.71  740.98  3000"
$ns at 0.6 "$node(80)  setdest 1300.78  740.98  3000"


$ns at 0.6 "$node(76)  setdest 25.96    620.14  3000"
$ns at 0.6 "$node(6)   setdest 175.56   620.65  3000"
$ns at 0.6 "$node(32)  setdest 325.65   620.67  3000"
$ns at 0.6 "$node(8)   setdest 475.43   620.92  3000"
$ns at 0.6 "$node(15)  setdest 625.78   620.68  3000"
$ns at 0.6 "$node(10)  setdest 775.73   620.68  3000"
$ns at 0.6 "$node(28)  setdest 925.71   620.98  3000"
$ns at 0.6 "$node(12)  setdest 1075.78  620.98  3000"
$ns at 0.6 "$node(70)  setdest 1225.96  620.14  3000" 


$ns at 0.6 "$node(72) setdest 100.56   500.65  3000"
$ns at 0.6 "$node(13) setdest 250.12   500.67  3000"
$ns at 0.6 "$node(18) setdest 400.83   500.92  3000"
$ns at 0.6 "$node(38) setdest 550.65   500.67  3000"
$ns at 0.6 "$node(0) setdest 700.43   500.92  3000"
$ns at 0.6 "$node(17) setdest 850.78   500.68  3000"
$ns at 0.6 "$node(14) setdest 1000.78  500.68  3000"
$ns at 0.6 "$node(19) setdest 1150.71  500.98  3000"
$ns at 0.6 "$node(74) setdest 1300.78  500.98  3000"


$ns at 0.6 "$node(65) setdest 25.96    380.14  3000"
$ns at 0.6 "$node(20) setdest 175.35   380.65  3000"
$ns at 0.6 "$node(45) setdest 325.54   380.65  3000"
$ns at 0.6 "$node(22) setdest 475.78   380.68  3000"
$ns at 0.6 "$node(36) setdest 625.78   380.68  3000"
$ns at 0.6 "$node(24) setdest 775.71   380.98  3000"
$ns at 0.6 "$node(40) setdest 925.78   380.98  3000"
$ns at 0.6 "$node(26) setdest 1075.96  380.14  3000"
$ns at 0.6 "$node(78) setdest 1225.58  380.65  3000"


$ns at 0.6 "$node(68) setdest 100.54   260.65  3000"
$ns at 0.6 "$node(27) setdest 250.78   260.68  3000"
$ns at 0.6 "$node(11) setdest 400.78   260.68  3000"
$ns at 0.6 "$node(3)  setdest 550.71   260.98  3000"
$ns at 0.6 "$node(30) setdest 700.78   260.98  3000"
$ns at 0.6 "$node(31) setdest 850.96   260.14  3000"
$ns at 0.6 "$node(7)  setdest 1000.59  260.65  3000"
$ns at 0.6 "$node(33) setdest 1150.54  260.65  3000"
$ns at 0.6 "$node(63) setdest 1300.78  260.68  3000"


$ns at 0.6 "$node(60) setdest 25.78    140.68  3000"
$ns at 0.6 "$node(21) setdest 175.71   140.98  3000"
$ns at 0.6 "$node(35) setdest 325.78   140.98  3000"
$ns at 0.6 "$node(23) setdest 475.96   140.14  3000"
$ns at 0.6 "$node(43) setdest 625.55   140.65  3000"
$ns at 0.6 "$node(39) setdest 775.54   140.65  3000"
$ns at 0.6 "$node(47) setdest 925.78   140.68  3000"
$ns at 0.6 "$node(29) setdest 1075.78  140.68  3000"
$ns at 0.6 "$node(55) setdest 1225.71  140.98  3000"


$ns at 0.6 "$node(52) setdest 100.78   20.98  3000"
$ns at 0.6 "$node(56) setdest 250.96   20.14  3000"
$ns at 0.6 "$node(64) setdest 400.55   20.65  3000"
$ns at 0.6 "$node(79) setdest 550.54   20.65  3000"
$ns at 0.6 "$node(75) setdest 700.78   20.68  3000"
$ns at 0.6 "$node(71) setdest 850.78   20.68  3000"
$ns at 0.6 "$node(67) setdest 1000.71  20.98  3000"
$ns at 0.6 "$node(59) setdest 1150.78  20.98  3000"
$ns at 0.6 "$node(51) setdest 1300.78  20.98  3000"


#-------------------energy node-------------------------------------
$ns at 0.6 "$node(49)  setdest 100.78   980.56  3000"
$ns at 0.6 "$node(57)  setdest 250.78   980.98  3000"
$ns at 0.6 "$node(66)  setdest 400.71   980.98  3000"
$ns at 0.6 "$node(69)  setdest 550.78   980.98  3000"
$ns at 0.6 "$node(73)  setdest 700.96   980.14  3000"
$ns at 0.6 "$node(77)  setdest 850.69   980.65  3000"
$ns at 0.6 "$node(62)  setdest 1000.83  980.92  3000"
$ns at 0.6 "$node(54)  setdest 1150.86  980.75  3000"
$ns at 0.6 "$node(50)  setdest 1300.78  980.67  3000"


$ns at 0.6 "$node(53)  setdest 25.71    860.98  3000"
$ns at 0.6 "$node(4)   setdest 175.78   860.98  3000"
$ns at 0.6 "$node(42)  setdest 325.96   860.14  3000"
$ns at 0.6 "$node(16)   setdest 475.56   860.65  3000"
$ns at 0.6 "$node(44)  setdest 625.65   860.67  3000"
$ns at 0.6 "$node(34)  setdest 775.83   860.92  3000"
$ns at 0.6 "$node(46)  setdest 925.78   860.68  3000"
$ns at 0.6 "$node(9)   setdest 1075.78  860.68  3000"
$ns at 0.6 "$node(58)  setdest 1225.71  860.98  3000"


$ns at 0.6 "$node(61)  setdest 100.76   740.98  3000"
$ns at 0.6 "$node(37)  setdest 250.96   740.14  3000"
$ns at 0.6 "$node(5)   setdest 400.56   740.65  3000"
$ns at 0.6 "$node(1)   setdest 550.65   740.67  3000"
$ns at 0.6 "$node(25)  setdest 700.83   740.92  3000"
$ns at 0.6 "$node(41)  setdest 850.78   740.68  3000"
$ns at 0.6 "$node(2)   setdest 1000.78  740.68  3000"
$ns at 0.6 "$node(48)  setdest 1150.71  740.98  3000"
$ns at 0.6 "$node(80)  setdest 1300.78  740.98  3000"


$ns at 0.6 "$node(76)  setdest 25.96    620.14  3000"
$ns at 0.6 "$node(6)   setdest 175.56   620.65  3000"
$ns at 0.6 "$node(32)  setdest 325.65   620.67  3000"
$ns at 0.6 "$node(8)   setdest 475.43   620.92  3000"
$ns at 0.6 "$node(15)  setdest 625.78   620.68  3000"
$ns at 0.6 "$node(10)  setdest 775.73   620.68  3000"
$ns at 0.6 "$node(28)  setdest 925.71   620.98  3000"
$ns at 0.6 "$node(12)  setdest 1075.78  620.98  3000"
$ns at 0.6 "$node(70)  setdest 1225.96  620.14  3000" 


$ns at 0.6 "$node(72) setdest 100.56   500.65  3000"
$ns at 0.6 "$node(13) setdest 250.12   500.67  3000"
$ns at 0.6 "$node(18) setdest 400.83   500.92  3000"
$ns at 0.6 "$node(38) setdest 550.65   500.67  3000"
$ns at 0.6 "$node(0) setdest 700.43   500.92  3000"
$ns at 0.6 "$node(17) setdest 850.78   500.68  3000"
$ns at 0.6 "$node(14) setdest 1000.78  500.68  3000"
$ns at 0.6 "$node(19) setdest 1150.71  500.98  3000"
$ns at 0.6 "$node(74) setdest 1300.78  500.98  3000"


$ns at 0.6 "$node(65) setdest 25.96    380.14  3000"
$ns at 0.6 "$node(20) setdest 175.35   380.65  3000"
$ns at 0.6 "$node(45) setdest 325.54   380.65  3000"
$ns at 0.6 "$node(22) setdest 475.78   380.68  3000"
$ns at 0.6 "$node(36) setdest 625.78   380.68  3000"
$ns at 0.6 "$node(24) setdest 775.71   380.98  3000"
$ns at 0.6 "$node(40) setdest 925.78   380.98  3000"
$ns at 0.6 "$node(26) setdest 1075.96  380.14  3000"
$ns at 0.6 "$node(78) setdest 1225.58  380.65  3000"


$ns at 0.6 "$node(68) setdest 100.54   260.65  3000"
$ns at 0.6 "$node(27) setdest 250.78   260.68  3000"
$ns at 0.6 "$node(11) setdest 400.78   260.68  3000"
$ns at 0.6 "$node(3)  setdest 550.71   260.98  3000"
$ns at 0.6 "$node(30) setdest 700.78   260.98  3000"
$ns at 0.6 "$node(31) setdest 850.96   260.14  3000"
$ns at 0.6 "$node(7)  setdest 1000.59  260.65  3000"
$ns at 0.6 "$node(33) setdest 1150.54  260.65  3000"
$ns at 0.6 "$node(63) setdest 1300.78  260.68  3000"


$ns at 0.6 "$node(60) setdest 25.78    140.68  3000"
$ns at 0.6 "$node(21) setdest 175.71   140.98  3000"
$ns at 0.6 "$node(35) setdest 325.78   140.98  3000"
$ns at 0.6 "$node(23) setdest 475.96   140.14  3000"
$ns at 0.6 "$node(43) setdest 625.55   140.65  3000"
$ns at 0.6 "$node(39) setdest 775.54   140.65  3000"
$ns at 0.6 "$node(47) setdest 925.78   140.68  3000"
$ns at 0.6 "$node(29) setdest 1075.78  140.68  3000"
$ns at 0.6 "$node(55) setdest 1225.71  140.98  3000"


$ns at 0.6 "$node(52) setdest 100.78   20.98  3000"
$ns at 0.6 "$node(56) setdest 250.96   20.14  3000"
$ns at 0.6 "$node(64) setdest 400.55   20.65  3000"
$ns at 0.6 "$node(79) setdest 550.54   20.65  3000"
$ns at 0.6 "$node(75) setdest 700.78   20.68  3000"
$ns at 0.6 "$node(71) setdest 850.78   20.68  3000"
$ns at 0.6 "$node(67) setdest 1000.71  20.98  3000"
$ns at 0.6 "$node(59) setdest 1150.78  20.98  3000"
$ns at 0.6 "$node(51) setdest 1300.78  20.98  3000"



#---------------------------------FILE REPLICATION------------------------


proc neighbor { } { 

global ns node nn
set nbr [open Neighbor w]
puts $nbr "\n\t\t\t\t\tNeighbor Detail"
puts $nbr "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts $nbr "\t Node \t    Neighbor\t\t\tN_X-Pos\t\tN_Y-Pos\t\tH-Distance(d)"
puts $nbr "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
close $nbr

set nnbr [open nNeighbor w]
puts $nnbr "\n\t\t\t\t\t Non Neighbor Detail"
puts $nnbr "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts $nnbr "\t Node \tNon Neighbor\t\t\tDX-Pos\t\tDY-Pos\t\tH-Distance(d)"
puts $nnbr "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
close $nnbr


set br [open NNode w]
puts $br "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts $br "\t Node \tNon Neighbor\t\t\tDX-Pos\t\tDY-Pos\t\tH-Distance(d)"
puts $br "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

set brr [open Bio-Metric-Id w]
puts $brr "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts $brr "\t Node \t\t\tId"

puts $brr "\t 0 \t\t\t/9j/4AAQS0KZJRq"
puts $brr "\t 1 \t\t\t/9j/4AAQS1KZJRq"
puts $brr "\t 2 \t\t\t/9j/4AAQS2KZJRq"
puts $brr "\t 3 \t\t\t/9j/4AAQS3KZJRq"
puts $brr "\t 4 \t\t\t/9j/4AAQS4KZJRq"
puts $brr "\t 5 \t\t\t/9j/4AAQS5KZJRq"
puts $brr "\t 6 \t\t\t/9j/4AAQS6KZJRq"
puts $brr "\t 7 \t\t\t/9j/4AAQS7KZJRq"
puts $brr "\t 8 \t\t\t/9j/4AAQS8KZJRq"
puts $brr "\t 9 \t\t\t/9j/4AAQS9KZJRq"
puts $brr "\t 10 \t\t\t/9j/4AAQS10KZJRq"
puts $brr "\t 11 \t\t\t/9j/4AAQS11KZJRq"
puts $brr "\t 12 \t\t\t/9j/4AAQS12KZJRq"
puts $brr "\t 13 \t\t\t/9j/4AAQS13KZJRq"
puts $brr "\t 14 \t\t\t/9j/4AAQS14KZJRq"
puts $brr "\t 15 \t\t\t/9j/4AAQS15KZJRq"
puts $brr "\t 16 \t\t\t/9j/4AAQS16KZJRq"
puts $brr "\t 17 \t\t\t/9j/4AAQS17KZJRq"
puts $brr "\t 18 \t\t\t/9j/4AAQS18KZJRq"
puts $brr "\t 19 \t\t\t/9j/4AAQS19KZJRq"
puts $brr "\t 20 \t\t\t/9j/4AAQS20KZJRq"
puts $brr "\t 21 \t\t\t/9j/4AAQS21KZJRq"
puts $brr "\t 22 \t\t\t/9j/4AAQS22KZJRq"
puts $brr "\t 23 \t\t\t/9j/4AAQS23KZJRq"
puts $brr "\t 24 \t\t\t/9j/4AAQS24ZJRq"
puts $brr "\t 25 \t\t\t/9j/4AAQS25KZJRq"
puts $brr "\t 26 \t\t\t/9j/4AAQS26KZJRq"
puts $brr "\t 27 \t\t\t/9j/4AAQS27KZJRq"
puts $brr "\t 28 \t\t\t/9j/4AAQS28KZJRq"
puts $brr "\t 29 \t\t\t/9j/4AAQS29KZJRq"
puts $brr "\t 30 \t\t\t/9j/4AAQS30KZJRq"
puts $brr "\t 31 \t\t\t/9j/4AAQS31KZJRq"
puts $brr "\t 32 \t\t\t/9j/4AAQS32KZJRq"
puts $brr "\t 33 \t\t\t/9j/4AAQS33KZJRq"
puts $brr "\t 34 \t\t\t/9j/4AAQS34KZJRq"
puts $brr "\t 35 \t\t\t/9j/4AAQS35KZJRq"
puts $brr "\t 36 \t\t\t/9j/4AAQS36KZJRq"
puts $brr "\t 37 \t\t\t/9j/4AAQS37KZJRq"
puts $brr "\t 38 \t\t\t/9j/4AAQS38KZJRq"
puts $brr "\t 39 \t\t\t/9j/4AAQS39KZJRq"
puts $brr "\t 40 \t\t\t/9j/4AAQS40KZJRq"
puts $brr "\t 41 \t\t\t/9j/4AAQS41KZJRq"
puts $brr "\t 42 \t\t\t/9j/4AAQS42KZJRq"
puts $brr "\t 43 \t\t\t/9j/4AAQS43KZJRq"
puts $brr "\t 44 \t\t\t/9j/4AAQS44KZJRq"
puts $brr "\t 45 \t\t\t/9j/4AAQS45KZJRq"
puts $brr "\t 46 \t\t\t/9j/4AAQS46KZJRq"
puts $brr "\t 47 \t\t\t/9j/4AAQS47KZJRq"
puts $brr "\t 48 \t\t\t/9j/4AAQS48KZJRq"
puts $brr "\t 49 \t\t\t/9j/4AAQS49KZJRq"
puts $brr "\t 50 \t\t\t/9j/4AAQS50KZJRq"
puts $brr "\t 51 \t\t\t/9j/4AAQS51KZJRq"
puts $brr "\t 52 \t\t\t/9j/4AAQS52KZJRq"
puts $brr "\t 53 \t\t\t/9j/4AAQS53KZJRq"
puts $brr "\t 54 \t\t\t/9j/4AAQS54KZJRq"
puts $brr "\t 55 \t\t\t/9j/4AAQS55KZJRq"
puts $brr "\t 56 \t\t\t/9j/4AAQS56KZJRq"
puts $brr "\t 57 \t\t\t/9j/4AAQS57KZJRq"
puts $brr "\t 58 \t\t\t/9j/4AAQS58KZJRq"
puts $brr "\t 59 \t\t\t/9j/4AAQS59KZJRq"
puts $brr "\t 60 \t\t\t/9j/4AAQS60KZJRq"
puts $brr "\t 61 \t\t\t/9j/4AAQS61KZJRq"
puts $brr "\t 62 \t\t\t/9j/4AAQS62KZJRq"
puts $brr "\t 63 \t\t\t/9j/4AAQS63KZJRq"
puts $brr "\t 64 \t\t\t/9j/4AAQS64KZJRq"
puts $brr "\t 65 \t\t\t/9j/4AAQS65KZJRq"
puts $brr "\t 66 \t\t\t/9j/4AAQS66KZJRq"
puts $brr "\t 67 \t\t\t/9j/4AAQS67KZJRq"
puts $brr "\t 68 \t\t\t/9j/4AAQS68KZJRq"
puts $brr "\t 69 \t\t\t/9j/4AAQS69KZJRq"
puts $brr "\t 70 \t\t\t/9j/4AAQS70KZJRq"
puts $brr "\t 71 \t\t\t/9j/4AAQS71KZJRq"
puts $brr "\t 72 \t\t\t/9j/4AAQS72KZJRq"
puts $brr "\t 73 \t\t\t/9j/4AAQS73KZJRq"
puts $brr "\t 74 \t\t\t/9j/4AAQS74KZJRq"
puts $brr "\t 75 \t\t\t/9j/4AAQS75KZJRq"
puts $brr "\t 76 \t\t\t/9j/4AAQS76KZJRq"
puts $brr "\t 77 \t\t\t/9j/4AAQS77KZJRq"
puts $brr "\t 78 \t\t\t/9j/4AAQS78KZJRq"
puts $brr "\t 79 \t\t\t/9j/4AAQS79KZJRq"
puts $brr "\t 80 \t\t\t/9j/4AAQS80KZJRq"
puts $brr "\t 81 \t\t\t/9j/4AAQS81KZJRq"


puts $brr 

for {set i 0} {$i <81} {incr i} {
for {set j 0} {$j <81} {incr j} {
	set nbr [open Neighbor a]
        set nnbr [open nNeighbor a]
	set x1 [expr int([$node($i) set X_])]
	set y1 [expr int([$node($i) set Y_])]
	set x2 [expr int([$node($j) set X_])]
	set y2 [expr int([$node($j) set Y_])]
	set d [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
	if {$d<251 && $node($i)!= $node($j)} {
		puts $nbr "\t  $i\t\t$j\t\t\t$x2\t\t$y2\t\t  $d" 
		puts $br "\t  $i\t\t$j\t\t\t$x1\t\t$y1\t\t  $d" } 
        if { $d>=251 && $node($i)!= $node($j)} {
                     puts $nnbr "\t  $i\t\t$j\t\t\t$x2\t\t$y2\t\t  $d"     

                    # puts $brr "\t  $j\t\t\t$j"  
}
                                              
	close $nbr
        close $nnbr
        
}
}
close $br
close $brr
}

#---------------------------------GREEDY ALGORITHM------------------------
proc readoverall2 { } {
global ns sink node s d  nn
#Call the readoverall function through readoverall2
set p [readoverall]
set ov [open path$p w]
close $ov

for {set i 0} {$i < $nn } { incr i } {
	$ns at 12.2 "$node($i) color tan4"
    }

set ov [open connection.tcl w]
close $ov
set t [$ns now]
set nb [open temp w]
puts $nb "$s $d 12.2 0.09 128 8"
close $nb

$ns at 12.1 "exec awk -f conn.awk path1 path2 path3 temp "
#$ns at 12.1 "bcr awk -f energy cost awk -f packet delay awk -f pdr awk -f snr awk throughput awk -f"
$ns at 12.2  "source connection.tcl"

}

set alpha 82
set X 50
set R 100
set theta 2.17


proc readoverall { } {

global s d node ns sink
set ii 0
set p1_ii 0
set p2_ii 0
set p3_ii 0

set W (1-alpha)(1-X/R)+alpha(1-theta/90)
#open overall and store in array
set ov [open overall r]
set x($ii) $s
incr ii
while { [gets $ov data] >= 0 } {
set x($ii) $data
incr ii }
close $ov
set x($ii) $d
incr ii


#open path-1 and store in array
set p1 [open path1 r]

while { [gets $p1 data] >= 0 } {
set p1_x($p1_ii) $data
incr p1_ii }
close $p1


#open path-2 and store in array
set p2 [open path2 r]

while { [gets $p2 data] >= 0 } {
set p2_x($p2_ii) $data
set p2_ii [expr $p2_ii +1] }
close $p2

#open path-3 and store in array
set p3 [open path3 r]

while { [gets $p3 data] >= 0 } {
set p3_x($p3_ii) $data
set p3_ii [expr $p3_ii +1] }
close $p3


#Calculate 3 intermediate node near to BACK PRESSURE
set tmin 3001
set smin 3000
set min 2999

set ne_nd  0
set sne_nd 0
set tne_nd 0

set vel1 1111
set vel2 1111
set vel3 1111


#NCAR x,y position
set x1 [expr int([$node(81) set X_])]
set y1 [expr int([$node(81) set Y_])]

for {set jj 0} { $jj <$ii } {incr jj} {

	set x2 [expr int([$node($x($jj)) set X_])]
	set y2 [expr int([$node($x($jj)) set Y_])]
	set dis [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]

	if { $dis < $min  } {
           set tne_nd $sne_nd 
           set sne_nd $ne_nd 
           set ne_nd $x($jj) 

	   set tmin $smin
	   set smin $min
	   set min $dis


	   set vel1 $jj
	} elseif { $dis < $smin  } {

           set tne_nd $sne_nd 
           set sne_nd $x($jj) 

	   set tmin $smin
	   set smin $dis
	   set vel2 $jj
	} elseif { $dis < $tmin  } {
           set tne_nd $x($jj) 
	   set tmin $dis
	   set vel3 $jj
	} 
}

set rr 0
  #move NCAR between 2nd neighbor and 1st neighbor (if 1,2 neighbor are same path)
if {$rr == 0 } { 

  for { set dd 0 } { $dd < $p1_ii } {incr dd } {
	if { $p1_x($dd) == $ne_nd } {
		for {set k 0 } {$k <$p1_ii } {incr k} {
			if { $p1_x($k) == $sne_nd } {
			   set rr 1
			   set p 1
			}
		}
	}    
  }
  for { set dd 0 } {$dd<$p2_ii } {incr dd } {
	if { $p2_x($dd) == $ne_nd } {
		for {set k 0 } {$k <$p2_ii } {incr k} {
			if { $p2_x($k) == $sne_nd } {
			   set rr 1
			   set p 2
			}
		}
	}    
  }
  for { set dd 0 } {$dd<$p3_ii } {incr dd } {
	if { $p3_x($dd) == $ne_nd } {
		for {set k 0 } {$k <$p3_ii } {incr k} {
			if { $p3_x($k) == $sne_nd } {
			   set rr 1
			   set p 3
			}
		}
	}    
  }
   if { $rr == 1 } {
    set xx [expr int([$node($ne_nd) set X_])]
    set yy [expr int([$node($ne_nd) set Y_])]
  
    set nx [expr int([$node($sne_nd) set X_])]
    set ny [expr int([$node($sne_nd) set Y_])] 
  
    set xz [expr int(($nx + $xx)/2)]
    set yz [expr int(($ny + $yy)/2)]


    set de [expr int(sqrt(pow(($xx-$nx),2)+pow(($yy-$ny),2)))]
    if { $de <= 250 } { 
    
   if { $sne_nd == $s || $ne_nd== $s} {
    set jcbr [attach-CBR-traffic $node($sne_nd) $sink($ne_nd) 16 0.001]
    $ns at 12.15 "$jcbr start"
    $ns at 12.16 "$jcbr stop"
    } elseif { $sne_nd == $d || $ne_nd== $d} {
    set jcbr [attach-CBR-traffic $node($sne_nd) $sink($ne_nd) 16 0.001]
    $ns at 12.17 "$jcbr start"
    $ns at 12.18 "$jcbr stop"
    } else {
    set jcbr [attach-CBR-traffic $node($sne_nd) $sink($ne_nd) 16 0.001]
    $ns at 12.16 "$jcbr start"
    $ns at 12.17 "$jcbr stop"
  }
    return $p
    } else { set rr 0 }
  }
}

 if { $rr==0 } {
  #move NCAR between 3rd neighbor and 1 st neighbor (if 1,3 neighbors are same path )
    for { set dd 0 } {$dd<$p1_ii } {incr dd } {
	if { $p1_x($dd) == $ne_nd } {
		for {set k 0 } {$k <$p1_ii } {incr k} {
			if { $p1_x($k) == $tne_nd } {
			   set rr 1
			   set p 1
			}
		}
	}    
  }
  for { set dd 0 } {$dd<$p2_ii } {incr dd } {
	if { $p2_x($dd) == $ne_nd } {
		for {set k 0 } {$k <$p2_ii } {incr k} {
			if { $p2_x($k) == $tne_nd } {
			   set rr 1
			   set p 2
			}
		}
	}    
  }



for { set dd 0 } {$dd<$p3_ii } {incr dd } {
	if { $p3_x($dd) == $ne_nd } {
		for {set k 0 } {$k <$p3_ii } {incr k} {
			if { $p3_x($k) == $tne_nd } {
			   set rr 1
			   set p 3
			}
		}
	}    
  }
 if { $rr == 1 } {
  set xx [expr int([$node($ne_nd) set X_])]
  set yy [expr int([$node($ne_nd) set Y_])]
  
  set nx [expr int([$node($tne_nd) set X_])]
  set ny [expr int([$node($tne_nd) set Y_])] 
  
  set xz [expr int(($nx + $xx)/2)]
  set yz [expr int(($ny + $yy)/2)]
  
    set de [expr int(sqrt(pow(($xx-$nx),2)+pow(($yy-$ny),2)))]
    if { $de <= 250 } { 
   
  if { $ne_nd == $s || $tne_nd== $s} {
    set jcbr [attach-CBR-traffic $node($ne_nd) $sink($tne_nd) 16 0.001]
    $ns at 12.15 "$jcbr start"
    $ns at 12.16 "$jcbr stop"
    } elseif { $ne_nd == $d || $tne_nd== $d} {
    set jcbr [attach-CBR-traffic $node($ne_nd) $sink($tne_nd) 16 0.001]
    $ns at 12.17 "$jcbr start"
    $ns at 12.18 "$jcbr stop"
    } else {
    set jcbr [attach-CBR-traffic $node($ne_nd) $sink($tne_nd) 16 0.001]
    $ns at 12.16 "$jcbr start"
    $ns at 12.17 "$jcbr stop"
  }
    return $p
    } else { set rr 0 }


  }
}
#move BACK PRESSURE between 3rd neighbor and 1 st neighbor (if 2,3 neighbors are same path )

if { $rr == 0 } {
  
    for { set dd 0 } {$dd<$p1_ii } {incr dd } {
	if { $p1_x($dd) == $sne_nd } {
		for {set k 0 } {$k <$p1_ii } {incr k} {
			if { $p1_x($k) == $tne_nd } {
			   set rr 1
			   set p 1
			}
		}
	}    
  }
  for { set dd 0 } {$dd<$p2_ii } {incr dd } {
	if { $p2_x($dd) == $sne_nd } {
		for {set k 0 } {$k <$p2_ii } {incr k} {
			if { $p2_x($k) == $tne_nd } {
			   set rr 1
			   set p 2
			}
		}
	}    
  }
  for { set dd 0 } {$dd<$p3_ii } {incr dd } {
	if { $p3_x($dd) == $sne_nd } {
		for {set k 0 } {$k <$p3_ii } {incr k} {
			if { $p3_x($k) == $tne_nd } {
			   set rr 1
			   set p 3
			}
		}
	}    
  }
 if { $rr == 1 } {
  set xx [expr int([$node($sne_nd) set X_])]
  set yy [expr int([$node($sne_nd) set Y_])]
  
  set nx [expr int([$node($tne_nd) set X_])]
  set ny [expr int([$node($tne_nd) set Y_])] 
  
  set xz [expr int(($nx + $xx)/2)]
  set yz [expr int(($ny + $yy)/2)]
  
  set de [expr int(sqrt(pow(($xx-$nx),2)+pow(($yy-$ny),2)))]
  if { $de <= 250 } { 
  
  if { $sne_nd == $s || $tne_nd== $s} {
    set jcbr [attach-CBR-traffic $node($sne_nd) $sink($tne_nd) 16 0.001]
    $ns at 12.15 "$jcbr start"
    $ns at 12.16 "$jcbr stop"
    } elseif { $sne_nd == $d || $tne_nd== $d} {
    set jcbr [attach-CBR-traffic $node($sne_nd) $sink($tne_nd) 16 0.001]
    $ns at 12.17 "$jcbr start"
    $ns at 12.18 "$jcbr stop"
    } else {
    set jcbr [attach-CBR-traffic $node($sne_nd) $sink($tne_nd) 16 0.001]
    $ns at 12.16 "$jcbr start"
    $ns at 12.17 "$jcbr stop"
  }
  return $p
  } else { set rr 0 }

  }
}

}

#------ set a color source & destination,create desX_Y file----------
proc weight { } { 
          global ns node s d
          set x1 [$node($s) set X_]
          set y1 [$node($s) set Y_]
	  set x2 [$node($d) set X_]
          set y2 [$node($d) set Y_] 
	  set dis [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
	   if { $dis<250 } { puts "\n Source & Destination is very close \nCant choose portfolio selection \n Go to Terminate !!!\n\n" ;exit 0 } 
          set desX [expr int([$node($d) set X_])]
          set desY [expr int([$node($d) set Y_])]
	  set t [open des_X_Y w]
          puts $t "$desX\t $desY"
          close $t

 
	 


#######################################################################################

        $ns  at 4.37 "$node(52) color black"
	$ns  at 4.37 "$node(56) color black"
	$ns  at 4.37 "$node(64) color black"
	$ns  at 4.37 "$node(79) color black"
	$ns  at 4.37 "$node(75)  color black"
        $ns  at 4.37 "$node(71) color black" 

	$ns  at 4.37 "$node(67) color black"
	#$ns  at 4.37 "$node(59) color black"
	#$ns  at 4.52 "$node(51) color pink"
	$ns  at 4.37  "$node(60) color black"
	$ns  at 4.37  "$node(21) color black"
        $ns  at 4.37  "$node(35) color black"

	$ns at 4.37 "$node(23) color black"
	$ns at 4.37 "$node(43) color black"
	$ns at 4.37 "$node(39) color black"
	$ns at 4.37 "$node(47) color black"
	$ns at 4.37 "$node(29) color black"
        $ns at 4.37 "$node(55) color black"

	#$ns  at 4.60 "$node(68) color pink"
	$ns  at 4.37 "$node(27) color black"
	$ns  at 4.37 "$node(11) color black"
	$ns  at 4.37 "$node(3) color black"
	$ns at  4.37  "$node(30) color black"
        $ns at  4.37  "$node(31) color black"

	$ns  at 4.37 "$node(7) color black"
	$ns  at 4.37 "$node(33) color black"
	$ns  at 4.37 "$node(63) color black"
	$ns  at 4.37 "$node(65) color black"
	$ns  at 4.37 "$node(20) color black"
	$ns  at 4.37 "$node(45) color black"

        $ns  at 4.37 "$node(22) color black"
	$ns  at 4.37 "$node(36) color black"
	$ns  at 4.37 "$node(24) color black"
	$ns  at 4.37 "$node(40) color black"
	$ns  at 4.37 "$node(26) color black"
	$ns  at 4.37 "$node(78) color black"

        $ns  at 4.37 "$node(13) color black"
	$ns  at 4.37 "$node(18) color black"
	$ns  at 4.37 "$node(17) color black"
	$ns  at 4.37 "$node(14) color black"





 
 

 

#############################################################################################

         
}





#-------------------Get Sourse and Destination ---------------------


#------Sourse--------
proc sourse { } {
puts "Enter the source node (0-81):"
set s [gets stdin]
if { $s <0 || $s>81 } { 
puts " Wrong input !!!" 
sourse } else { return $s } }


#------Destination------

proc destination { } {
puts "Enter the Destination node (0-81):"
set d [gets stdin]
if { $d <0 || $d>81 } { 
puts " Wrong input !!!" 
destination } else { return $d } }


set s [sourse]
set d [destination]




if { $s==$d } {  puts " Source and destination same !!!" 
puts "...........Press Any key to Exit........"
gets stdin ex
exit 0 }
set f2 [open "sou-des" w]
puts $f2 "$s  $d "
close $f2


set nb [open temp w]
puts $nb "$s $d 5.0 0.09 64 7.2"
close $nb


set nnbr [open btemp w]
puts $nnbr "0 80 1.0 0.2 $s $d "
close $nnbr




#------- Calling the Function---------------

$ns at 0.9 "weight" 
$ns at 0.9 "neighbor"

$ns at 1.0 "exec awk -f S_broadcast.awk btemp NNode"
$ns at 1.0 "source S_broadcast.tcl"
#create Neighbor

$ns at 2.0 "exec awk -f path1.awk des_X_Y sou-des Neighbor" 

#create path1

$ns at 2.1 "exec awk -f n1awk.awk sou-des path1 Neighbor"
#create Neighbor-1 

$ns at 2.2 "exec awk -f path2.awk des_X_Y sou-des Neighbor1" 
#$ns at 2.2 "source clr2"
#create path-2

$ns at 2.3 "exec awk -f n2awk.awk sou-des path2 Neighbor1" 
#create Neighbor-2

$ns at 2.4 "exec awk -f path3.awk des_X_Y sou-des Neighbor2" 
#$ns at 2.4 "source clr3"


$ns at 2.8 "exec awk -f conn.awk path1 path2 path3 temp "
$ns at 4.9 "source connection.tcl"
 
#create path-3

$ns at 3.0 "exec awk -f path.awk path1 path2 path3 "
#create overall path


$ns at 10.5 "readoverall2"
#Moving Intruder(Black_hole)-1 towards the path




#~~~~~~~~~~~~~~~~~~~~~~~~~` Finish Procedure to exec NAM Window~~~~~~~~~~~~~~~~~~~~~~~~~~~

proc finish {} {
	global ns namtrace tp pr dp
	$ns flush-trace
        close $namtrace    
	exec nam -r 5m Nam.nam &   ;#watch the output
    	exec xgraph energy.xg  -t "Energy" -x "no of packets transmitted" -y "energy consumption(joules)" -bg white  & 		
	exit 0
	}


$ns at 20.0 "finish"

puts "Start of simulation.."
$ns run


