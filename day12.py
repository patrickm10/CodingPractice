# Write a function that sums all numbers in a list

nums = [1,3,4,5,5,6,6,6,44,3,2]

result = sum(nums)
print(f"{result}\n")



# Write a function that sums all numbers in a list
# Extend it to skip non-numeric values

nums = [1,3,4,5,"a",5,6,"b",6,6,44,3,2]

result = 0
for n in nums:
    if isinstance (n,(int,float)):
        result+= n
    else:
        print(f"Not valid {n}")
print(f"{result}\n")



# Write a function that sums all numbers in a list
# Extend it to skip non-numeric values
# Raise an error if the list is empty

nums = []

result = 0
if not nums:
    raise ValueError ("List is empty")
else:
    for n in nums:
        if isinstance (n,(int,float)):
            result+= n
        else:
            print(f"Not valid {n}")

print(f"{result}\n")
