import os, time

build_dir = "/var/builds"
days_old = 7
now = time.time()

for file in os.listdir(build_dir):
    filepath = os.path.join(build_dir, file)
    if os.path.isfile(filepath) and os.stat(filepath).st_mtime < now - days_old * 86400:
        os.remove(filepath)
        print(f"Deleted old artifact: {file}")
