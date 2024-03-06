#!/bin/awk -f
{
    while (gsub(/(\(\))+|(\{\})+|(\[\])+/, "")) {
    }
    print length($0)==0? "true": "false";
}
