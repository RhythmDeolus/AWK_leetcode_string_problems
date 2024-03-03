#!/bin/awk -f
{
    n=split($0, a, ",");
    c = 0;
    for (i = 1; i <= n - 1; i++) {
        for (j = i + 1; j <= n; j++) {
            s = a[i];
            t = a[j];
            if (match(t, "^"s) && match(t, s"$")) c++;
        }
    }
    print c;
}
