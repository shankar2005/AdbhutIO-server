import datetime
import os
import shutil
from pathlib import Path

from django.core.management import call_command

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


def backup_db():
    # Get the current date and time
    now = datetime.datetime.now()

    # Format the date and time to use in the backup file name
    backup_file_name = "db_backup_{:%Y-%m-%d_%H-%M-%S}.sqlite3".format(now)

    # Build the path to the backup file
    print("base dir is \n\n")
    print(BASE_DIR)
    backup_file_path = os.path.join(BASE_DIR, "backup", backup_file_name)

    # Use Django's "dumpdata" command to create a backup of the database
    call_command(
        "dumpdata",
        "--exclude",
        "contenttypes",
        "--exclude",
        "auth.permission",
        "--exclude",
        "sessions.session",
        "--indent",
        "2",
        "--output",
        backup_file_path,
    )

    # Delete the previous backup file if it exists
    previous_backup_file_path = os.path.join(BASE_DIR, "backup", "db_backup_*.sqlite3")
    for file_name in glob.glob(previous_backup_file_path):
        os.remove(file_name)


backup_db()
