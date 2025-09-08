# Return unique values from a list

lon = [1,23,4,55,5,6,4,3,2,1,3,4,5,23,23]

result_list = []

for n in lon:
    if n in result_list:
        print(f"{n} already in list")
    else:
        result_list.append(n)

print(result_list)
