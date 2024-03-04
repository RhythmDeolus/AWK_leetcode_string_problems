#!/bin/awk -f
{
    n=split($0, arr, "\\s");
    prev = arr[1];
    for (i = 2; i <= n; i++) {
        for(j = 0; j < length(arr[i]); j++) {
            if (j >= length(prev) ||
                substr(prev, j + 1, 1) != substr(arr[i], j + 1, 1)) {
                break;
            }
        }
        prev = substr(prev, 1, j);
    }
    print prev;
}
