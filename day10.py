# Given nums = [2,4,6,8,10], return a new list with each squared

nums = [2,4,6,8,10]
squared = list(map(lambda n: n* n, nums))

print(squared)



# Write a function that takes a string and returns it without vowels

keyword = "Beastmode"

def remove_vowels(str) -> str:
    """_summary_

    Args:
        str (_type_): _description_

    Returns:
        str: _description_
    """
    vowels = "aeiou"
    result = ""

    for ch in str:
        if ch in vowels:
            pass
        else:
            result+=ch
    return result

print(remove_vowels(keyword))




# Merge two lists [1,2,3] and [4,5,6] into one without using +

list_a = [1,2,3,4]
list_b = [5,6,7,8]

merged_list = list_a.copy()
merged_list.extend(list_b)

print(f"{merged_list}\n")



