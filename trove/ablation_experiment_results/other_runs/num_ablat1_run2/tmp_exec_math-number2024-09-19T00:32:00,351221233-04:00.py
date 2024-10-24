# let's assume the first number is x
# then the second number is 100 - x
# we can write a function that returns True if x is a valid number
def is_valid_number(x):
    if x < 1 or x > 100:
        return False
    if x % 4 != 3:
        return False
    if x % 3 != 1:
        return False
    if x % 5 != 1:
        return False
    return True

# now let's find the two numbers
x = 1
while True:
    if is_valid_number(x):
        y = 100 - x
        if is_valid_number(y):
            break
    x += 1

print(x + y)