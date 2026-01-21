BEGIN {

i=0;
}

{
if(FILENAME=="sou-des")
{ 
  s=$1
  d=$2

}

   if(FILENAME=="path2")
   { 
     x[i]=$1;
     i++;
   }

   if(FILENAME=="Neighbor1")
   { 
      if(($1<100 && $1>-1) && ($2<100 && $2>-1))
      {
      for(k=0;k<i;k++)
      {
        if($1==s && $2==x[k] && $2!=d)
        { $0=0;}
        if($1!=s && $1==x[k] && $2!=d)
        { $0=0; }
        if($2==x[k] && $2!=s && $2!=d)
        { $0=0; }      
      }
      print $0 >"Neighbor2"
      print $1
      }
   }
}
END {
}

