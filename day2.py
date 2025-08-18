
# Given a list of dicts with key price compute the average price rounded to 2 decimals
items = [
    {"name": "apple", "price" : 1.25},
    {"name": "banana", "price": .75},
    {"name": "orange", "price" : .80},
    {"name": "grapes", "price" : 1.10}
]

avg_price = round(
    sum(i["price"] for i in items) / len(items)
    ,2
)

print(f"Avg Price {avg_price}")

# Flatten a nested list [[1,2],[3,4]] → [1,2,3,4] without itertools
nested = [[1,2],[3,4]]
flat = []

for flat_list in nested:
    for item in flat_list:
        flat.append(item)

print(flat)

# Implement a frequency counter for characters in a string

string = "Basketball"
freq = {}

string = string.strip().lower()
for char in string:
    if char in freq:
        freq[char] += 1
    else:
        freq[char] = 1
print(freq)
