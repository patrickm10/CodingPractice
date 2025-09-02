# Read a CSV and print only the headers
def load_file(file_path):
    df = pl.read_csv(file_path)
    return df

df = load_file("orders.csv")
print(df.columns)



# Count how many rows are in the file

length = df.height
print(length)



# Return a list of values from a specific column
quants = df["quantity"].to_list()
print(quants)
