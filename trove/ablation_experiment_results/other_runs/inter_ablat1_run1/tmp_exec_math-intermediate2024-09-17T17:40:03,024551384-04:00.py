from math import log2

from math import floor

from math import ceil

A = sum(map(lambda x: ceil(log2(x)), range(2, 1001)))
B = sum(map(lambda x: floor(log2(x)), range(2, 1001)))
print(A - B)