# Given a list of dictionaries like:
# Sort players by score descending.
# Return the top 2 players with their names and scores.

players = [
    {"name": "Alice", "score": 42},
    {"name": "Bob", "score": 99},
    {"name": "Charlie", "score": 75},
    {"name": "Adam", "score": 90}
]

def top_n_players(players, n=2):
    return sorted(players, key=lambda p: p["score"], reverse=True)[:n]

print(top_n_players(players))



# You are given a list of order records:
# Write a function that filters out invalid rows (negative qty or missing price).
# Compute and return the total revenue for valid rows.

orders = [
    {"id": 1, "qty": 3, "price": 10.5},
    {"id": 2, "qty": -1, "price": 12.0},
    {"id": 3, "qty": 5, "price": None}
]


def validate_records(orders):
    valid_orders = []
    for order in orders:
        if order["qty"] > 0:
            valid_orders.append(order)
        else:
            print(f"Order {order["id"]} qty invalid: {order["qty"]}")
    return valid_orders

print(validate_records(orders))



# Log Cleaner
# Write a function that takes a list of log lines (strings).
# Return only the lines that contain the word "ERROR".
# Also count how many "WARNING" lines appear and return that count.

logs = [
    "2025-09-05 10:01:22 INFO User logged in",
    "2025-09-05 10:02:05 WARNING Disk space low",
    "2025-09-05 10:03:10 ERROR Failed to connect to database",
    "2025-09-05 10:04:45 INFO Scheduled job started",
    "2025-09-05 10:05:33 WARNING Memory usage high",
    "2025-09-05 10:06:12 ERROR Timeout on request"
]

def process_logs(logs):
    error_lines = [line for line in logs if "ERROR" in line]
    warning_count = [line for line in logs if "WARNING" in line]
    return error_lines, warning_count

errors, warnings = process_logs(logs)
print("\nErrors:")
for e in errors:
    print(f"{e}")
print()

print(f"Number of warnings in the logs:", len(warnings), ".\n")


