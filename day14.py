# Parse a JSON string into a dict
# Safely handle invalid JSON with try/except
import json
def parse_file(file_path):
    try:
        with open(file_path, "r") as f:
            data = json.load(f)
    except json.JSONDecodeError:
        raise ValueError("JSON Not Valid")
    return data

data = parse_file("departments.json")
records = data["departments"]   # pull the list of department dicts
print(records)


# Validate required keys in each record
def validate_records(records, required_keys):
    all_valid = True
    for i, record in enumerate(records, start=1):
        missing = [key for key in required_keys if key not in record]
        if missing:
            print(f"Record {i} is missing keys: {missing}")
            all_valid = False
    return all_valid

required = ["dept_id", "dept_name", "location", "salary"]
print("Valid:", validate_records(records, required))
