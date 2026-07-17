# Sterling Heights Traffic Analytics Simulator

## Project Overview

This project creates a fictional SQLite database containing 4,000 simulated traffic crashes occurring in Sterling Heights, Michigan, during calendar year 2026.

The dataset is designed for practicing SQL, Python, investigative data analysis, and traffic-safety reporting. All records are fictional and do not represent actual police reports or crash data.
===========================================================================================================================

## Database

Database file:

`Database/traffic_v2.db`

Primary table:

`crashes`

## Crashes Table

| Column | Data Type | Purpose |
|---|---|---|
| crash_id | INTEGER PRIMARY KEY | Fictional crash report number, from 260001 through 264000 |
| date | TEXT | Crash date in YYYY-MM-DD format |
| day_of_week | TEXT | Day derived from the crash date |
| crash_time | TEXT | Time in 24-hour HH:MM format |
| crash_road | TEXT | Primary roadway where the crash occurred |
| intersecting_road | TEXT | Intersecting roadway |
| speed_limit | INTEGER | Normal roadway speed limit |
| traffic_control | TEXT | Signal, Stop Sign, Yield Sign, or None |
| construction_zone | TEXT | Yes or No |
| construction_speed_limit | INTEGER | Temporary speed limit during construction. Equals speed_limit when construction_zone = No |
| severity | TEXT | Property Damage, Injury, or Fatal |
| crash_type | TEXT | Manner of collision |
| vehicles_involved | INTEGER | Number of vehicles involved |
| ped_cyclist_count | INTEGER | Number of pedestrians or cyclists involved |
| hit_and_run_status | TEXT | No, Yes - Solved, or Yes - Unsolved |
| uninsured_motorists | INTEGER | Number of uninsured motorists involved |
| weather | TEXT | Clear, Rain, Fog, Snow, or Other |
| lighting | TEXT | Lighting condition derived primarily from crash time |
| road_surface | TEXT | Dry, Wet, Snow, Ice, or Other |
| alcohol_drugs | TEXT | Yes or No |
| citation_issued | TEXT | Yes or No |
===========================================================================================================================

## Data Generation Rules

### Total Records

- 4,000 fictional crashes
- Date range: January 1, 2026 through December 31, 2026
- Police report numbers: 26-1 through 26-4000

### Severity

- Property Damage: 73%
- Injury: 25%
- Fatal: 2%

### Crash Type

- Rear End: 35%
- Angle: 25%
- Side Swipe: 15%
- Single Vehicle: 11%
- Backing: 6%
- Head On: 6%
- Other: 2%

Single Vehicle includes pedestrian and bicyclist crashes.

### Hit and Run Status

- No: 85%
- Yes - Solved: 10%
- Yes - Unsolved: 5%

### Citation Issued

- Yes: 90%
- No: 10%

### Alcohol or Drugs

- Yes: 10%
- No: 90%

### Weather

- Clear: approximately 70% annually
- Remaining crashes are distributed among Rain, Fog, Snow, and Other
- Weather probabilities vary by season

### Time of Day

- Highest crash frequency: 3:00 PM through 7:00 PM
- Second-highest crash frequency: 6:00 AM through 9:00 AM
- Overnight hours have the lowest frequency

### Seasonal Frequency

- Summer has the highest crash frequency
- Winter has the second-highest crash frequency
- Spring and fall have lower and approximately similar frequencies
===========================================================================================================================

## High-Risk Intersections

### Highest-Risk Intersection

- Van Dyke Ave and Metropolitan Pkwy

### Other High-Risk Intersections

- Hall Rd and Schoenherr Rd
- Hall Rd and Hayes Rd
- Mound Rd and 17 Mile Rd
- Ryan Rd and 15 Mile Rd
- Dobry Dr and Merrill Rd
- Hall Rd and Delco Blvd
- Canal Rd and Schoenherr Rd
- Van Dyke Ave and 17 Mile Rd
- Van Dyke Ave and 18 Mile Rd

All other included intersections should have approximately equal base weighting.

### Construction Zones

- `construction_zone` contains `Yes` or `No`.
- Construction zones are most common from June through August.
- Spring and early fall have a moderate construction-zone probability.
- Winter has a very low construction-zone probability.
- When a crash occurs in a construction zone, the posted speed limit is normally 10 mph below the roadway's standard speed limit.
- The simulated posted speed limit will not be lower than 25 mph.

### Construction Speed Limits

When `construction_zone` is `Yes`, the following temporary speed limits apply:

| Normal Speed Limit | Construction Speed Limit |
|---:|---:|
| 70 | 55 |
| 55 | 45 |
| 50 | 40 |
| 45 | 35 |
| 40 | 25 |
| 35 | 25 |
| 30 | 25 |
| 25 | 25 |

When `construction_zone` is `No`, `construction_speed_limit` will equal the normal `speed_limit`.