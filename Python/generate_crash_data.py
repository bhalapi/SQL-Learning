#This generates 95 additional crash records into the crashes table.

import os #os lets Python work with folders and file paths in a way that works on Windows, macOS, and Linux.
import sqlite3 #sqlite3 is Python's built-in library for talking to SQLite databases
import random

# __file__ is the location of THIS Python script. os.path.abspath() converts it into the full file path.
# # os.path.dirname() removes the filename and leaves only the folder.                                                       
script_folder = os.path.dirname(os.path.abspath(__file__))

# Build the path to the database by starting from the script folder, moving up one directory,
# then entering the Database folder, then selecting traffic.db.
database_path = os.path.join(script_folder, "..", "Database", "traffic.db")

# Connect to the SQLite database using the complete file path built above.
connection = sqlite3.connect(database_path)

# Create a cursor object so Python can send SQL commands to SQLite.
cursor = connection.cursor()

#Creates a list of some of the busiest intersections in Sterling Heights
roads = [
    "Hall Rd & Delco Blvd",
    "Hall Rd & Eastbrook Dr",
    "Hall Rd & Schoenherr Rd",
    "Hall Rd & Hayes Rd",
    "Hayes Rd & 19 Mile Rd",
    "Canal Rd & Schoenherr Rd",
    "Dobry Dr & Merrill Rd",
    "Van Dyke Ave & 17 Mile Rd",
    "Van Dyke Ave & 18 Mile Rd",
    "Van Dyke Ave & 18 1/2 Mile Rd",
    "Van Dyke Ave & Metro Pkwy",
    "Van Dyke Ave & Utica Rd",
    "M-53 & Clinton River Rd",
    "M-59 & Ryan Rd",
    "Maple Lane Dr & 14 Mile Rd",
    "Mound Rd & 17 Mile Rd",
    "Mound Rd & 18 Mile Rd",
    "Mound Rd & Metro Pkwy",
    "Ryan Rd & 15 Mile Rd",
    "Ryan Rd & 19 Mile Rd"
    "Ryan Rd & Fox Hill Dr",
    "Ryan Rd & Metro Pkwy",
    "Dequindre Rd & 15 Mile Rd",
    "Dequindre Rd & Metro Pkwy",
    "Schoenherr Rd & 15 Mile Rd",
    "Schoenherr Rd & Clinton River Rd",
    "Schoenherr Rd & Metro Pkwy",
    "Utica Rd & Dodge Park Rd",
    "15 Mile Rd & Dodge Park Rd",
    "17 Mile Rd & Dodge Park Rd"
]

#Creates a list with the different crash categories
severities = [
    "Property Damage",
    "Injury",
    "Fatal"
]

# Generate crash records 6 through 100.
# The database already contains crash IDs 1 through 5.
for crash_id in range(6, 101): 
    location = random.choice(roads)

    severity = random.choices(
        severities,
        weights=[70, 25, 5], #Using weighted choices makes the data seem more realistic - 70% Damage, 25% Injury, 5% Fatal
        k=1                  #Notice the weights will be applied in the order of the severities list
    )[0]

    month = random.randint(6, 8)
    day = random.randint(1, 28)

    date = f"2026-{month:02d}-{day:02d}"

    cursor.execute("""
        INSERT INTO crashes (crash_id, location, severity, date)
        VALUES (?, ?, ?, ?)
    """, (crash_id, location, severity, date))

connection.commit()
connection.close()

print("95 crash records generated successfully.")
