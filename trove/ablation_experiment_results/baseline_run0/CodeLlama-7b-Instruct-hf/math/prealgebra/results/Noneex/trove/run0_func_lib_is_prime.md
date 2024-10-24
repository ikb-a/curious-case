# is_prime(num)

Note: TroVE starts problems with a toolbox, and it *generates* both a **Solution** section intended for solution code, and a *Tools* section intended for edits to the input toolbox. *Tools* should not be mistaken for the toolbox (though it can result in changes being made to the toolbox in the future, it is an output)

- Reported usage freq: 15
- True usage freq: 5
- True usage freq in correct sln: 3
- True usage freq in correct sln by type (IMPORT, EDIT, or ADD): 
{
  "ADD [in sln]": 1,
  "ADD [in tools] + ADD [in sln]": 2,
  "EDIT [in sln]": 1,
  "EDIT [in tools]": 1,
  "REUSE": 2
}

- True usage freq in incorrect sln by type: 
{
  "ADD [in tools]": 2,
  "ADD [in tools] + EDIT [in sln]": 1,
  "EDIT [in sln]": 4,
  "EDIT [in tools]": 2,
  "IMPORT [tools] ": 1,
  "REUSE": 2
}


NOTE: By 'True usage freq' we mean that the function was both imported *and* the function name appears in the body of the solution

```python

def is_prime(num):
    if num <= 1:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True
```



# Correct Usages: 
## Example Idx 157
**Question**
What is the largest prime factor of 1391?


*ADD [in tools] + ADD [in sln]* 0-th **Solution**
```python
def is_prime(num):
    if num <= 1:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True

def largest_prime_factor(n):
    for i in range(n, 1, -1):
        if is_prime(i) and n % i == 0:
            return i
    return 1

print(largest_prime_factor(1391))
```


*0-th Tools*
```python

def is_prime(num):
    if num <= 1:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*ADD [in tools] + ADD [in sln]* 1-th **Solution**
```python
def is_prime(n):
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True

def largest_prime_factor(n):
    for i in range(n, 1, -1):
        if is_prime(i) and n % i == 0:
            return i
    return 1

print(largest_prime_factor(1391))
```


*1-th Tools*
```python

def is_prime(n):
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*ADD [in sln]* 4-th **Solution**
```python
# Largest Prime Factor
def largest_prime_factor(n):
    for i in range(n-1, 1, -1):
        if n % i == 0 and is_prime(i):
            return i
    return 1

def is_prime(n):
    if n == 1 or n == 0:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True

print(largest_prime_factor(1391))
```


*4-th Tools*



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

## Example Idx 172
**Question**
Let $n$ be the product of the two smallest 3-digit prime numbers.  Find the sum of the digits of $n$.


*EDIT [in sln]* 4-th **Solution**
```python
from math import sqrt

def is_prime(n):
    if n == 1 or n == 0:
        return False
    for i in range(2, int(sqrt(n)) + 1):
        if n % i == 0:
            return False
    return True

def find_smallest_3_digit_primes():
    primes = []
    for i in range(100, 1000):
        if is_prime(i):
            primes.append(i)
            if len(primes) == 2:
                break
    return primes

def sum_digits(n):
    return sum(int(d) for d in str(n))

def problem_45():
    smallest_3_digit_primes = find_smallest_3_digit_primes()
    n = smallest_3_digit_primes[0] * smallest_3_digit_primes[1]
    return sum_digits(n)

print(problem_45())
```


*4-th Tools*



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

## Example Idx 276
**Question**
$97$ is the largest prime less than $100$. What is the largest prime factor of $97!$ (97 factorial)?  (Reminder: The number $n!$ is the product of the integers from 1 to $n$.  For example, $5!=5\cdot 4\cdot3\cdot2\cdot 1= 120$.)


*REUSE* 1-th **Solution**
```python
n = 97
largest_prime = 97
for i in range(2, n):
    if n % i == 0 and is_prime(i):
        largest_prime = i
print(largest_prime)
```


*1-th Tools*
```python
import math
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

*REUSE* 2-th **Solution**
```python
n = 97
for p in range(n, 1, -1):
    if is_prime(p):
        factors = divisors(n, p)
        print(f"The largest prime factor of 97! is {factors[-1]}")
        break
```


*2-th Tools*
```python
import math
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

*EDIT [in tools]* 3-th **Solution**
```python
# largest prime factor
n = 97
for i in range(2, n+1):
    if n % i == 0 and is_prime(i):
        print(i)
```


*3-th Tools*
```python
import math
```
```python
from sympy import symbols
```
```python
from sympy import solve
```
```python
from sympy import divisors
```
```python
# is_prime(num)
def is_prime(num):
    if num == 1:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True
```
```python
# divisors(n)
def divisors(n):
    return [i for i in range(1, int(n ** 0.5) + 1) if n % i == 0]
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

# Incorrect Usages: 
## Example Idx 157
**Question**
What is the largest prime factor of 1391?


*REUSE* (WRONG) 3-th **Solution**
```python
n = 1391
p = [p for p in divisors(n) if p.is_prime]
print(f"{p[-1]:.2f}")
```


*3-th Tools*
```python
import math
```
```python
from sympy import symbols
```
```python
from sympy import solve
```
```python
from sympy import divisors
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

*ADD [in tools]* (WRONG) 2-th **Solution**
```python
for i in range(2, 1391):
    if 1391 % i == 0 and is_prime(i):
        print(i)
```


*2-th Tools*
```python

def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```

```

## Example Idx 172
**Question**
Let $n$ be the product of the two smallest 3-digit prime numbers.  Find the sum of the digits of $n$.


*ADD [in tools] + EDIT [in sln]* (WRONG) 2-th **Solution**
```python
def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True

def find_prime(n):
    for i in range(100, 999):
        if is_prime(i) and is_prime(n // i):
            return n // i
    return -1

n = find_prime(3) * find_prime(4)
print(sum(map(int, str(n))))
```


*2-th Tools*
```python

def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True

```
```python

def find_prime(n):
    for i in range(100, 999):
        if is_prime(i) and is_prime(n // i):
            return n // i
    return -1
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

*EDIT [in sln]* (WRONG) 3-th **Solution**
```python
import math

def is_prime(x):
    if x == 1 or x == 0:
        return False
    for i in range(2, int(math.sqrt(x)) + 1):
        if x % i == 0:
            return False
    return True

def smallest_prime_product(n):
    for i in range(10, n):
        if is_prime(i) and is_prime(n // i):
            return i * n // i

print(sum(int(x) for x in str(smallest_prime_product(1000000))))
```


*3-th Tools*
```python
import math
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

*ADD [in tools]* (WRONG) 4-th **Solution**
```python
# find the two smallest 3-digit prime numbers
a = 3
b = 5
while not is_prime(a):
    a += 1
while not is_prime(b):
    b += 1

# find the product of the two smallest 3-digit prime numbers
n = a * b

# find the sum of the digits of n
sum_of_digits = 0
for digit in str(n):
    sum_of_digits += int(digit)

print(sum_of_digits)
```


*4-th Tools*
```python

def is_prime(n):
    if n == 1 or n == 0:
        return False
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

## Example Idx 276
**Question**
$97$ is the largest prime less than $100$. What is the largest prime factor of $97!$ (97 factorial)?  (Reminder: The number $n!$ is the product of the integers from 1 to $n$.  For example, $5!=5\cdot 4\cdot3\cdot2\cdot 1= 120$.)


*IMPORT [tools] * (WRONG) 4-th **Solution**
```python
n = 97
factors = divisors(math.factorial(n))
prime_factors = [x for x in factors if is_prime(x)]
print(f"The largest prime factor of 97! is: {max(prime_factors)}")
```


*4-th Tools*
```python
import math
```
```python
from sympy import symbols
```
```python
from sympy import solve
```
```python
from sympy import divisors
```
```python
from sympy import is_prime
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

*REUSE* (WRONG) 4-th **Solution**
```python
n = 97
largest_prime = 0
for i in range(2, n+1):
    if n % i == 0 and is_prime(i):
        largest_prime = i
print(largest_prime)
```


*4-th Tools*



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

## Example Idx 474
**Question**
What is the sum of all the positive two-digit integers where one of the digits is four times the other?


*EDIT [in tools]* (WRONG) 0-th **Solution**
```python
def is_factor_of_34_or_multiple_of_7(num):
    if (num % 7 == 0 or num % 34 == 0):
        return True
    else:
        return False

def sum_of_positive_two_digit_integers(num):
    count = 0
    for i in range(10, num):
        if is_prime(i) and is_factor_of_34_or_multiple_of_7(i):
            count = count + i
    return count

print(sum_of_positive_two_digit_integers(100))
```


*0-th Tools*
```python
import math
```
```python
from sympy import symbols
```
```python
from sympy import solve
```
```python
from sympy import divisors
```
```python
import sympy as sp
```
```python
from sympy import isprime
```
```python
from statistics import median
```
```python

def is_prime(num):
    if num == 1:
        return False
    else:
        for i in range(2, int(num ** 0.5) + 1):
            if num % i == 0:
                return False
        return True
```
```python

def divisors(n):
    return [i for i in range(1, n + 1) if n % i == 0]
```
```python

def is_factor_of_34_or_multiple_of_7(num):
    if (num % 7 == 0 or num % 34 == 0):
        return True
    else:
        return False
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

*EDIT [in sln]* (WRONG) 1-th **Solution**
```python
def is_prime(num):
    if num == 1:
        return False
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False
    return True

def divisors(n):
    return [i for i in range(1, int(n**0.5) + 1) if n % i == 0]

def is_factor_of_34_or_multiple_of_7(num):
    if num < 10 or num > 99:
        return False
    for i in range(10, 100):
        if num % i == 0:
            return True
    return False

def sum_of_all_positive_two_digit_numbers_where_one_of_the_digits_is_four_times_the_other(n):
    count = 0
    for i in range(10, n):
        for j in range(10, i):
            if is_prime(i) and is_prime(j) and j * 4 == i:
                count += i
    return count

print(sum_of_all_positive_two_digit_numbers_where_one_of_the_digits_is_four_times_the_other(100))
```


*1-th Tools*
```python
import math
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

*EDIT [in sln]* (WRONG) 4-th **Solution**
```python
def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True

def divisors(n):
    divisor_list = []
    for i in range(1, int(n ** 0.5) + 1):
        if n % i == 0:
            divisor_list.append(i)
            if n // i!= i:
                divisor_list.append(n // i)
    return divisor_list

def is_factor_of_34_or_multiple_of_7(num):
    if num < 10:
        return False
    if num % 3 == 0 or num % 4 == 0:
        return True
    if num % 7 == 0:
        return True
    return False

num_list = []
for i in range(10, 100):
    if is_prime(i) and is_factor_of_34_or_multiple_of_7(i):
        num_list.append(i)

sum = 0
for num in num_list:
    sum += num

print(sum)
```


*4-th Tools*
```python
import math
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

## Example Idx 592
**Question**
What is the smallest positive multiple of $6$ that is also a multiple of $8$?


*EDIT [in sln]* (WRONG) 1-th **Solution**
```python
for i in range(1, 10000):
    if is_factor_of_34_or_multiple_of_7(i):
        if is_prime(i):
            print(i)
            break

def is_factor_of_34_or_multiple_of_7(num):
    if num % 7 == 0 or num % 34 == 0:
        return True
    else:
        return False

def is_prime(num):
    if num <= 1:
        return False
    for i in range(2, num):
        if num % i == 0:
            return False
    return True

def divisors(n):
    return [i for i in range(1, n + 1) if n % i == 0]
```


*1-th Tools*
```python
import math
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

*EDIT [in tools]* (WRONG) 3-th **Solution**
```python
n = 6
while True:
    if is_prime(n) and is_factor_of_34_or_multiple_of_7(n):
        print(n)
        break
    n += 1
```


*3-th Tools*
```python
import math
```
```python
from sympy import divisors
```
```python
from sympy import symbols
```
```python
from sympy import solve
```
```python
from sympy import isprime
```
```python
import sympy as sp
```
```python
from statistics import median
```
```python

def is_prime(num):
    if num == 1:
        return False
    for i in range(2, int(math.sqrt(num)) + 1):
        if num % i == 0:
            return False
    return True
```
```python

def is_factor_of_34_or_multiple_of_7(n):
    if n % 34 == 0 or n % 7 == 0:
        return True
    return False
```



*Incoming Toolbox* (filtered to just the REUSEd tool)
```
# 
is_prime(num)
```

