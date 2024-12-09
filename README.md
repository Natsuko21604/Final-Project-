# Final-Project
🚕 NYC Yellow Taxi & Uber Data Analysis Project
📄 Project Overview
This project explores trends in hired-ride data (Yellow Taxi and Uber) in New York City from January 2020 to August 2024, joined with local historical weather data. The goal is to:

Download and clean trip and weather data.
Store data in a SQLite database.
Write SQL queries to answer analytical questions.
Create visualizations to uncover trends and insights.
The analysis helps to understand user preferences, trip patterns, and how weather conditions impact ride behavior.

📂 Project Structure
graphql
Copy code
project/
│-- data/                   # Contains downloaded data files
│   ├─ yellow_taxi_data/    # Yellow Taxi Parquet files
│   ├─ hvfhv_data/          # HVFHV (Uber) Parquet files
│   ├─ weather_data/        # Weather data files
│   └─ taxi_zones/          # Taxi zone shapefile data
│-- notebooks/
│   └─ analysis_notebook.ipynb  # Jupyter Notebook with all parts of the project
│-- schema.sql              # SQL file defining database schema
│-- requirements.txt        # List of required Python packages
│-- .gitignore              # Specifies files to ignore (e.g., large data files)
└-- README.md               # Project documentation (this file)
📊 Project Workflow
The project is divided into four main parts:

Data Preprocessing
Storing Data
Understanding Data (SQL Queries)
Visualizing Data
🚀 Part 1: Data Preprocessing
Tasks
Download Data:

Use requests and BeautifulSoup to download Parquet files for Yellow Taxi and Uber (HVFHV).
Filter the relevant URLs using regular expressions.
Sampling:

Implement Cochran's formula to determine appropriate sample sizes for each dataset to manage memory constraints.
Cleaning & Filtering:

Use pandas and geopandas to:
Replace location IDs with latitude/longitude coordinates using taxi zone shapefiles.
Filter invalid trips (e.g., trips with zero distance or out-of-bound coordinates).
Normalize column names and types.
Ensure data is limited to NYC bounds.
🗄️ Part 2: Storing Data
Tasks
Create a SQLite Database:

Use SQLAlchemy or sqlite3 to create and manage the database.
Create Tables:

Tables for:
Yellow Taxi Trips
Uber (HVFHV) Trips
Hourly Weather Data
Daily Weather Data
Generate a Schema:

Create schema.sql to define the structure of the database tables.
🧐 Part 3: Understanding Data (SQL Queries)
SQL Queries
Most Popular Taxi Hour:

Determine the most popular hour for Yellow Taxi rides.
Most Popular Uber Day:

Find the most popular day of the week for Uber rides.
95th Percentile of Trip Distance:

Calculate the 95th percentile of trip distance for January 2024.
Weather on the Busiest Days:

Identify the top 10 busiest days in 2023 and their weather conditions.
Rides During Snow Days:

Find the 10 snowiest days (2020-2024) and the number of trips on those days.
Impact of Tropical Storm Ophelia:

Analyze trips and weather conditions during Tropical Storm Ophelia (September 28-30, 2023) and the surrounding days.
📊 Part 4: Visualizing Data
Visualizations
Most Popular Hour to Take a Taxi:

Bar chart showing the popularity of Yellow Taxi rides by hour.
Average Distance by Month:

Line plot with 90% confidence intervals for average trip distances (January 2020 - August 2024).
Airport Drop-offs by Day of the Week:

Bar chart comparing drop-offs at JFK, LGA, and EWR by day of the week.
Monthly Total Fares Comparison:

Histogram comparing monthly fares, surcharges, taxes, and tolls for Yellow Taxis and Ubers.
Impact of Precipitation & Distance on Tips:

4 scatter plots showing tips vs. distance and precipitation for Yellow Taxis and Ubers (2022-2023).
Heatmap of Hired Trips in 2020:

Geospatial heatmap showing trip density across NYC in 2020.
Additional Features
Interactive Elements:
Animations and widgets for enhanced visualization.
Weather Integration:
Visual comparisons of ride patterns before sunrise/after sunset using historical sunrise/sunset data.
🛠️ Setup Instructions
1. Clone the Repository
bash
Copy code
git clone https://github.com/your-username/nyc-taxi-uber-analysis.git
cd nyc-taxi-uber-analysis
2. Install Dependencies
bash
Copy code
pip install -r requirements.txt
3. Run the Notebook
Open Jupyter Notebook:

bash
Copy code
jupyter notebook notebooks/analysis_notebook.ipynb
📥 Data Sources
NYC Yellow Taxi & Uber Trip Data:
NYC Taxi and Limousine Commission (TLC) Trip Record Data

Historical Weather Data:
Local climatological data for 2020-2024 (provided in project folder).

Taxi Zone Shapefile:
NYC Taxi Zone Shapefile (PARQUET)

📌 Key Points
Code Modularity: Each step is broken into functions for clarity and reuse.
Memory Management: Sampling and cleaning ensure efficient data handling.
Documentation: Markdown cells explain each step for readability.
Visualization: Insightful visualizations to explore trends and patterns.
💡 Tips
Handling Large Data:
Use sampling and .gitignore to avoid storing large files in your repository.

Interactive Visuals:
For maps and heatmaps, export them as static images or HTML for GitHub compatibility.

🔗 References
Pandas Documentation
Geopandas Documentation
SQLAlchemy Documentation
Folium Documentation
NYC TLC Data Dictionaries
👥 Contributors
Hongye You: hy2890

Feel free to contribute! Create a pull request or open an issue if you have suggestions.