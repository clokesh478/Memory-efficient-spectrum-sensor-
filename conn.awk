BEGIN {
i=0 ; j=0 ; k=0
}


{
if(FILENAME=="path1")
{
nod1[i++]=$1
}

if(FILENAME=="path2")
{
nod2[j++]=$1
}

if(FILENAME=="path3")
{
nod3[k++]=$1
}

if(FILENAME=="temp")
{
s=$1
d=$2
tm=$3
tm1=$3
itval=$4
pkt=$5
edt=$6
}

}

END {
print i
print j
print k

if(i<j && k<j)
 p=j
else if (j<i && k<i)
 p=i
else if (j<k && i<k)
 p=k
else if(i==j)
p=i
else if (j==k)
p=j
else
p=k

print "$ns at "tm" \"$node("s") color orange\"" > "connection.tcl"
print "$ns at "tm" \"$node("d") color orange\"" > "connection.tcl"
print "$ns at "tm" \"$node("81") color brown\"" > "connection.tcl"



st=0
while(st<p-1)
{

   if(nod1[st+1]!="")
  {
   print "set inf"st" [attach-CBR-traffic $node("nod1[st]") $sink("nod1[st+1]") "pkt" "itval"]" > "connection.tcl"
   print "$ns at "tm" \"$inf"st" start\"" > "connection.tcl"
   print "$ns at "tm+edt" \"$inf"st" stop\"" > "connection.tcl"
   if(nod1[st+1]!=d)
   print "$ns at "tm1" \"$node("nod1[st+1]") color red\"" > "connection.tcl"
   print "$ns at "tm1" \"$node("nod1[st]") label Path\"" > "connection.tcl"
  }

 if(nod2[st+1]!="")
  {
   print "set inff"st" [attach-CBR-traffic $node("nod2[st]") $sink("nod2[st+1]") "pkt" "itval"]" > "connection.tcl"
   print "$ns at "tm" \"$inff"st" start\"" > "connection.tcl"
   print "$ns at "tm+edt" \"$inff"st" stop\"" > "connection.tcl"
   if(nod2[st+1]!=d)
	print "$ns at "tm1" \"$node("nod2[st+1]") color brown\"" > "connection.tcl"
        print "$ns at "tm1" \"$node("nod2[st]") label Trust\"" > "connection.tcl"
	
  }
if(nod3[st+1]!="")
  {
   print "set infff"st" [attach-CBR-traffic $node("nod3[st]") $sink("nod3[st+1]") "pkt" "itval"]" > "connection.tcl"
   print "$ns at "tm" \"$infff"st" start\"" > "connection.tcl"
   print "$ns at "tm+edt" \"$infff"st" stop\"" > "connection.tcl"
   if(nod3[st+1]!=d)
      print "$ns at "tm1" \"$node("nod3[st+1]") color blue\"" > "connection.tcl"
      print "$ns at "tm1" \"$node("nod3[st]") label File\"" > "connection.tcl"
  }

tm=tm+0.01
st++
}





}
