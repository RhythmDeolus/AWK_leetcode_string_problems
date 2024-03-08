#!/bin/awk -f
{
    for(i=length($0);i!=0;i--)
        x=(x substr($0,i,1))
    if (x==$0) print "true";
     else print "false";
}
