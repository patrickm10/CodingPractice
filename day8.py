
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



