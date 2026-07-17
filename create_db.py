# Import SQLite so Python can create and work with SQLite databases
import sqlite3

# Connect to the traffic_v2 database.
# If the database file does not already exist, SQLite will create it.
connection = sqlite3.connect("Database/traffic_v2.db")

# Create a cursor.
# The cursor is what actually sends SQL commands to the database.
cursor = connection.cursor()

# Create the crashes table in the SQLite database by executing SQL commands.
# The SQL statements will be placed between the triple quotation marks below.
cursor.execute("""
CREATE TABLE crashes (
    crash_id INTEGER PRIMARY KEY,

    date TEXT,

    day_of_week TEXT,

    crash_time TEXT,

    crash_road TEXT,

    intersecting_road TEXT,

    speed_limit INTEGER,

    traffic_control TEXT,

    construction_zone TEXT,

    construction_speed_limit INTEGER,

    severity TEXT,

    crash_type TEXT,

    vehicles_involved INTEGER,

    ped_cyclist_count INTEGER,

    hit_and_run_status TEXT,

    uninsured_motorists INTEGER,

    weather TEXT,

    lighting TEXT,

    road_surface TEXT,

    alcohol_drugs TEXT,

    citation_issued TEXT
);               
""")

# Save the changes permanently to the database file
connection.commit()

# Close the cursor and database connection
cursor.close()
connection.close()