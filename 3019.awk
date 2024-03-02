#!/bin/awk -f
{
    input=tolower($0)
    count=0;
    for (i=0; i < length($0); i++) {
        if (substr(input, i, 1) != substr(input, i + 1, 1)) {
            count++;
        }
    }
    print count;
}

