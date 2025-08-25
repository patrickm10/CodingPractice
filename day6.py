# Replace all spaces in "hello world from python" with underscores

phrase = "hello world from python"

phrase = phrase.replace(" ", "_")
print(f"\n{phrase}\n")



# Count how many vowels are in "programming is fun"

sentence = "programming is fun"

def count_vowels(str):
    vowels = ["a", "i", "e", "o", "u"]
    count = 0

    for ch in str:
        if ch in vowels:
            count += 1
    return count

print(count_vowels(sentence))



# Write a function that takes a temperature in Celsius and returns Fahrenheit


temp = 37

def change_temp_to_farenheight(temp) -> int:
    """_summary_

    Args:
        temp (_type_): _description_

    Returns:
        int: _description_
    """
    print(f"\nOriginal Celsius Temp: {temp}\n")
    faren = ((temp * 9) / 5) + 32
    return faren

print(f"Farenheit temp: {change_temp_to_farenheight(temp)}\n")



# Given a list of names, return a dictionary where the key is the name and the value is the length of the name

names = ["Anders", "Blake", "Adam", "Montez"]

name_lengths = {name: len(name) for name in names}
print(name_lengths)



# Merge two dictionaries: {"a":1,"b":2} and {"c":3,"d":4}

dict_a = {"a":1,"b":2}
dict_b = {"c":3,"d":4}

merged = dict_a | dict_b

print(merged)



