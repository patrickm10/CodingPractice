# Create a list of numbers 1 to 20 and return only the even numbers

evens = [n for n in range(1,21) if n%2 == 0]
print(evens)

# Given a list of words return a dict of word → length

sports = ["Soccer", "Golf", "Basketball", "Volleyball", "Baseball"]
word_lengths = {sport: len(sport) for sport in sports}

print(f"\n{word_lengths}\n")
