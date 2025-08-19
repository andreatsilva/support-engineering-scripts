
# log_monitor.py
# This script monitors a log file for error messages and prints them to the console.
import time, re

log_file = "/var/log/myapp/app.log"
error_pattern = re.compile(r"(ERROR|Exception)")

with open(log_file, "r") as f:
    f.seek(0, 2)  # start at end
    while True:
        line = f.readline()
        if not line:
            time.sleep(1)
            continue
        if error_pattern.search(line):
            print(f"[ALERT] Found error: {line.strip()}")
