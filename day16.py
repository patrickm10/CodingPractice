# Return unique values from a list

lon = [1,23,4,55,5,6,4,3,2,1,3,4,5,23,23]

result_list = []

for n in lon:
    if n in result_list:
        print(f"{n} already in list")
    else:
        result_list.append(n)

print(result_list)



# Given a list of integers, return the top 10 most frequent numbers along with their counts.

lon = [1,23,4,55,5,6,4,3,2,1,3,4,5,23,23,23,23,23,4,4,4,23,23,23,55,5,55,55,55,2,45,5,6,65,44,4,3,3,2,2,3,4,34,23]

result_list = []
count = {}
for n in lon:
    if n in result_list:
        count[n] +=1
    else:
        count[n] = 1
        result_list.append(n)
    print(f"{n} found for {count[n]} time(s)")

counts = Counter(lon)
for num, reps in counts.most_common():
    print(f"Num: {num}, Reps: {reps}")



# Given a list of integers, return the top 10 most frequent numbers along with their counts.
# Modify the above so that specific values (for example [0, -1]) are ignored when counting.

lon = [1,23,4,55,5,6,4,3,2,1,3,4,5,23,23,23,23,23,4,4,4,23,23,23,55,5,55,55,55,2,45,5,6,65,44,4,3,3,2,2,3,4,34,23,-1,0,0,0,0,999]

null_values = [-1,0,999]

filtered_values = [n for n in lon if n not in null_values]

bad_values = [n for n in lon if n in null_values]

counts = Counter(filtered_values)
for num, reps in counts.most_common():
    print(f"Num: {num}, Reps: {reps}")

counts = Counter(bad_values)

print("\nInvalid values:")
for num, reps in counts.most_common():
    print(f"Num: {num}, Reps: {reps}")
