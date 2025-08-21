# Print every character of the string "FanDuel" on a new line

word = "FANDUEL"
for w in word:
    print(f"{w}")



# Create a dictionary with your name, age, and favorite sport, then print the values

personal = {
    "name" : "Patrick",
    "age" : 23,
    "sport" : "soccer"
}

for key,val in personal.items():
    print(f"{key} : {val}")


# Given nums = [3, 7, 2, 8, 5], return the largest number

nums = [3, 7, 2, 8, 5]
largest = max(nums)
print(largest)



# Write a function that counts how many even numbers are in a list

def count_evens(nums):
    count = 0
    for n in nums:
        if n % 2 == 0:
            count+=1
    return count
nums = [3, 7, 2, 8, 5]
print(count_evens(nums))




# Reverse the list [1, 2, 3, 4, 5] without using .reverse() or slicing

reversed_list = list(reversed(nums))
print(reversed_list)  # [5, 4, 3, 2, 1]
