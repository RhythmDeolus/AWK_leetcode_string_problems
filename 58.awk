#!/bin/awk -f
{
    match($0, /^\s*(\w+\s+)*(\w+)\s*$/, tmp);
    print length(tmp[2]);
}
