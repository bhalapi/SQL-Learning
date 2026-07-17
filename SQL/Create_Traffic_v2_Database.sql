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