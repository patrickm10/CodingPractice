
# Write a function that takes a number n and prints 1 to n, replacing multiples of 3 with "Fizz", 5 with "Buzz", and both with "FizzBuzz"
def fun_function(n):
    """_summary_

    Args:
        n (_type_): _description_
    """
    for i in range(1, n + 1):
        if i % 3 == 0 and i % 5 == 0:
            print("FizzBuzz")
        elif i % 3 == 0:
            print("Fizz")
        elif i %5 == 0:
            print("Buzz")
        else:
            print(i)

print()
fun_function(20)



# From nums = [10, 20, 30, 40, 50], return a new list where each number is divided by 10

nums = [10, 20, 30, 40, 50]

new_nums = [n//10 for n in nums]

print(new_nums)



# Write a program that asks the user for a password. Keep asking until

password = "pass123"
count = 0

def ordinal(n):
    if 10 <= n % 100 <= 20:
        suffix = "th"
    else:
        suffix = {1: "st", 2: "nd", 3: "rd"}.get(n % 10, "th")
    return f"{n}{suffix}"

while True:
    attempt = input("Enter a password: ")
    if attempt == password:
        print("Access granted.\n")
        break
    else:
        count += 1
        print(f"Incorrect password. This was the {ordinal(count)} attempt.")



# Write a function that returns the minimum number in a list
nums = [1,4,5,6,7,23,244,445,242]

def min_number(lon) -> int:
    """_summary_

    Args:
        lon (list): _description_

    Returns:
        int: _description_
    """
    return min(lon)

print(min_number(nums))



# Given a string, return it reversed without using slicing
def reverse_string(s: str) -> str:
    """_summary_

    Args:
        s (str): _description_

    Returns:
        str: _description_
    """
    return "".join(reversed(s))

print(reverse_string("Ballers"))




# Create a dict counting how many times each word appears in "to be or not to be"

poem = "to be or not to be"
words = poem.split()

words_count = {}
for word in words:
    words_count[word] = words_count.get(word,0) + 1

print(words_count)



