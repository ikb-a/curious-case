# gcd(a,b)

Note: TroVE starts problems with a toolbox, and it *generates* both a **Solution** section intended for solution code, and a *Tools* section intended for edits to the input toolbox. *Tools* should not be mistaken for the toolbox (though it can result in changes being made to the toolbox in the future, it is an output)

- Reported usage freq: 4
- True usage freq: 1
- True usage freq in correct sln: 1
- True usage freq in correct sln by type (IMPORT, EDIT, or ADD): 
{
  "ADD [in sln]": 1,
  "ADD [in tools] + ADD [in sln]": 1
}

- True usage freq in incorrect sln by type: 
{
  "ADD [in sln]": 2,
  "ADD [in tools] + ADD [in sln]": 2,
  "IMPORT [sln+tools] ": 1,
  "IMPORT [tools] ": 3,
  "REUSE": 5
}


NOTE: By 'True usage freq' we mean that the function was both imported *and* the function name appears in the body of the solution

```python

def gcd(a,b):
    while b!= 0:
        a, b = b, a % b
    return a
```



# Correct Usages: 
## Example Idx 25
**Question**
As $n$ ranges over the positive integers, what is the maximum possible value that the greatest common divisor of $13n + 8$ and $5n+3$ can take?


*ADD [in tools] + ADD [in sln]* 0-th **Solution**
```python
def gcd(a,b):
    while b!= 0:
        a, b = b, a % b
    return a

n = 1
while True:
    gcd_n_plus_8_and_n_plus_3 = gcd(13*n+8,5*n+3)
    if gcd_n_plus_8_and_n_plus_3 == 1:
        break
    n += 1
print(n)
```


*0-th Tools*
```python

def gcd(a,b):
    while b!= 0:
        a, b = b, a % b
    return a
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*ADD [in sln]* 3-th **Solution**
```python
def gcd(a, b):
    if b == 0:
        return a
    else:
        return gcd(b, a % b)

n = 1
max_gcd = 0

while True:
    gcd_value = gcd(13 * n + 8, 5 * n + 3)
    if gcd_value > max_gcd:
        max_gcd = gcd_value
    else:
        break
    n += 1

print(max_gcd)
```


*3-th Tools*



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

# Incorrect Usages: 
## Example Idx 25
**Question**
As $n$ ranges over the positive integers, what is the maximum possible value that the greatest common divisor of $13n + 8$ and $5n+3$ can take?


*IMPORT [tools] * (WRONG) 0-th **Solution**
```python
n = symbols('n')
gcd_13n8 = solve(gcd(13*n + 8, 5*n + 3), n)[0]
print(gcd_13n8)
```


*0-th Tools*
```python
from sympy import gcd
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*REUSE* (WRONG) 1-th **Solution**
```python
n = symbols('n', integer=True, positive=True)
f = 13*n + 8
g = 5*n + 3
solve(f, g, gcd(f,g))
```


*1-th Tools*
```python
import sympy
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*REUSE* (WRONG) 2-th **Solution**
```python
n = symbols('n')
expr1 = 13*n + 8
expr2 = 5*n + 3
gcd = math.gcd(expr1, expr2)
print(gcd)
```


*2-th Tools*
```python
import math
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*IMPORT [tools] * (WRONG) 3-th **Solution**
```python
n = symbols('n')
a = 13*n + 8
b = 5*n + 3
GCD = math.gcd(a,b)
print(GCD)
```


*3-th Tools*
```python
from sympy import symbols
```
```python
from sympy import gcd
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*IMPORT [tools] * (WRONG) 4-th **Solution**
```python
a = 13*n + 8
b = 5*n + 3
gcd(a,b) = gcd(8,3)
gcd(8,3) = 1
```


*4-th Tools*
```python
from sympy import gcd
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*ADD [in sln]* (WRONG) 1-th **Solution**
```python
def gcd(a, b):
    while b!= 0:
        a, b = b, a % b
    return a

def max_gcd(n):
    max_gcd = 0
    for i in range(n):
        for j in range(n):
            if i + j == n:
                gcd = gcd(13*i + 8, 5*j + 3)
                if gcd > max_gcd:
                    max_gcd = gcd
    return max_gcd

print(max_gcd(100))
```


*1-th Tools*
```python
import numpy as np
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*IMPORT [sln+tools] * (WRONG) 2-th **Solution**
```python
from sympy.ntheory import gcd

def gcd_of_two_numbers(a, b):
    return gcd(a, b)

max_value = 0
for n in range(1, 1000000):
    gcd_value = gcd_of_two_numbers(13*n + 8, 5*n + 3)
    if gcd_value > max_value:
        max_value = gcd_value

print(max_value)
```


*2-th Tools*
```python
from sympy.ntheory import gcd
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*ADD [in tools] + ADD [in sln]* (WRONG) 3-th **Solution**
```python
def gcd(a, b):
    while b!= 0:
        a, b = b, a % b
    return a

def max_gcd(n):
    return max(gcd(13*n+8, 5*n+3), gcd(13*n+8, 5*n+3-13))

print(max_gcd(1000000))
```


*3-th Tools*
```python

def gcd(a, b):
    while b!= 0:
        a, b = b, a % b
    return a
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*ADD [in tools] + ADD [in sln]* (WRONG) 4-th **Solution**
```python
def gcd(a, b):
    while b!= 0:
        a, b = b, a % b
    return a

n = 1
while True:
    gcd_13n_8_5n_3 = gcd(13*n+8, 5*n+3)
    if gcd_13n_8_5n_3 > n:
        break
    n += 1

print(n)
```


*4-th Tools*
```python

def gcd(a, b):
    while b!= 0:
        a, b = b, a % b
    return a
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*REUSE* (WRONG) 0-th **Solution**
```python
n = 1
while True:
    d = gcd(13*n + 8, 5*n + 3)
    if d > n:
        break
    n += 1
print(n)
```


*0-th Tools*



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*REUSE* (WRONG) 1-th **Solution**
```python
n = 1
while True:
    d = gcd(13*n+8, 5*n+3)
    if d > n:
        break
    n += 1
print(n-1)
```


*1-th Tools*



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*ADD [in sln]* (WRONG) 2-th **Solution**
```python
def gcd(a, b):
    while b!= 0:
        a, b = b, a % b
    return a

def max_gcd(n):
    return max(gcd(13*n+8, 5*n+3), gcd(13*n+3, 5*n+8))

max_gcd(1000)
```


*2-th Tools*



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*REUSE* (WRONG) 4-th **Solution**
```python
gcd = math.gcd(13*n+8, 5*n+3)
print(gcd)
```


*4-th Tools*



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

