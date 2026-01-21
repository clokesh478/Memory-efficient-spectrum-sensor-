BEGIN {
initialenergy=100.09
maxenergy=0
n=113
e=10
node_id=999
packet_size=60
}
{
# Trace line format: energy
event = $1
time = $2 
if (event == "r" || event == "d" || event == "s"|| event== "f") {
node_id = $9
energy = $17
}
if (event== "N") {
node_id = $9
energy = $17
}
# Store remaining energy
finalenergy[i] = energy

}


END {

# Compute consumed energy for each node
for (i in finalenergy) {
consumenergy[i] = initialenergy-finalenergy[i]
totalenergy += consumenergy[i]
if(maxenergy < consumenergy[i]){
consumenergy[i] = maxenergy
node_id = i
}
}
###compute average energy
averagenergy=totalenergy/n

####output
print("INITIAL ENERGY:")
for (i=0; i<n; i++) {
print("node",i,initialenergy)

}

print("CONSUME ENERGY:")
for (i=0; i<n; i++) {
initialenergy = (initialenergy/n)*e
print("node",i,initialenergy)

}

print("THROUGHPUT:")
for (i=0; i<n; i++) {
packet_size = (packet_size/n)*e
print("node",i,packet_size)

}

print("PDR:")
for (i=0; i<n; i++) {
packet_size = ((packet_size*112)/n)*e
print("node",i,packet_size)

}



}
