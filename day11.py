# Write a function factorial(n) using a loop

def factorial(n):
    result = 1
    for i in range(1,n+1):
        result*=i
        print(f"Factorial {i}: {result}\n")
    return result

print(factorial(10))



# From {"a":3,"b":5,"c":2}, return the key with the largest value

nums = {"a":3,"b":5,"c":2}

largest = max(nums.values())
print(largest)


# Check if two strings are anagrams of each other (ignoring spaces and case)

def are_anagrams(str1:str, str2:str) -> bool:
    str1 = str1.replace(" ", "").lower()
    str2 = str2.replace(" ", "").lower()

    return sorted(str1) == sorted(str2)

print(are_anagrams("Listen", "Silent"))       # True
print(are_anagrams("A gentleman", "Elegant man"))  # True
print(are_anagrams("Hello", "World"))  


# Write a function that returns the sum of digits of an integer

cc_num = 123444324454327

sum = 0

for ch in str(cc_num):
    sum+=int(ch)
print(f"\n{sum}\n")



# Flatten a nested dict { "a":{"b":2}} into { "a.b":2 } (1 level only)

nested = { "a":{"b":2}}

flat_dict = {}
for outer_key, inner_dict in nested.items():
    for inner_key, value in inner_dict.items():
        flat_dict[f"{outer_key}.{inner_key}"] = value

print(flat_dict)



# Given a sentence, return the longest word

sentence = "Hi my name is Patrick M"

words = sentence.split()

longest_word = ""
for word in words:
    print(f"{word} : {len(word)}")
    if len(word) > len(longest_word):
        longest_word = word
print(longest_word)
