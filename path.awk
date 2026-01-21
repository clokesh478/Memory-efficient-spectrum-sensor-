BEGIN {
n=0
m=0
o=0
i=0
}

{
if (FILENAME=="path1")
{
a[n++]=$1
}
if (FILENAME=="path2")
{
b[m++]=$1
}
if (FILENAME=="path3")
{
c[o++]=$1
}
}

END {
for (i=1;i<n-1;i++)
{
print a[i] > "overall"

}
for (j=1;j<m-1;j++)
{

print b[j] > "overall"

}
for (k=1;k<o-1;k++)
{

print c[k] > "overall"
}
}
