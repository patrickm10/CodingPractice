# Convert a list of strings to uppercase using list comprehension

los = ["soccer", "basketball", "tennis", "frisbee", "golf"]

upper_cased = [s.upper() for s in los]

print(upper_cased)



# Given a dict of student → grade, return the average grade

grades = {"Sally": 95, "Adam": 76, "Blake": 86, "Anders": 57}

avg_grade = sum(grades.values()) / len(grades)
print(avg_grade)



# Given a list of numbers, return the maximum without using max()

lon = [1,4,5,5,6,43,35,56,633]

greatest = lon[0]
for n in lon:
    if n > greatest:
        greatest = n
print(greatest)




# Given a sentence, return the number of words

sentence = "I am the greatest coder in the world"

words = sentence.split()
count = len(words)

print(count)



# Replace all vowels in a string with "*"

word = "soccer"
vowels = "aeiou"

result = ""
for w in word:
    if w in vowels:
        result += "*"
    else:
        result += w

print(result)
