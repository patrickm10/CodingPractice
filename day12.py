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


# Read a text file and count the number of lines
file_path = "shakespeare.txt"

def read_text_file(file_path):
    with open(file_path, "r") as f:
        return sum(1 for _ in f)

print(f"Number of lines: {read_text_file(file_path)}\n")



# Count how many times each word appears

def word_count(file_path, stopwords=None):
    if stopwords is None:
        stopwords = {"the", "and", "a", "is", "of", "but","for", "thee"}  # default ignored words
    with open(file_path, "r") as f:
        text = f.read().lower().replace(".", "")
        words = text.replace(",", "").split()
        filtered_words = [w for w in words if w not in stopwords]
        return Counter(filtered_words)

counts = word_count(file_path, stopwords={"the", "and", "to", "in", "of", "my", "thy", "thou", "i", "with", "that", "but","for", "thee", "a"})
# for word, freq in counts.items():
#     print(f"{word}: {freq}")

print(counts.most_common(3))

