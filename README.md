# Uber Data Analytics

## Overview

This project involves processing and analyzing Uber trip data using various Google Cloud services, including Cloud Storage, Compute Engine and BigQuery for storing and querying data. The goal is to transform raw Uber data into structured tables and load them into BigQuery and LookerStudio for analytics and visualization. This project based on [Darshil's tutorial](https://www.youtube.com/watch?v=WpQECq5Hx9g).

Refer to `docs/Uber Data Analytics.pdf` to understand project implementation. <br>
[Looker Studio Visualization](https://lookerstudio.google.com/u/0/reporting/20849a3e-fcc5-4455-9942-291da35781d4/page/l2C9D)

## Technologies Used

- **Google Cloud Storage (GCS)**: Used to store raw data files in a bucket.
- **Google Compute Engine**: Used for running the data processing pipeline.
- **BigQuery**: Data warehouse for storing transformed data.
- **Mage AI**: Open-source tool used to build the ETL pipeline for transforming and loading data.
- **Looker Studio**: Data visualization tool for creating reports and dashboards.

## Project Structure

- **bigquery/**: Contains SQL query implementation on processed data
- **data/**: Contains raw data
- **docs/**: Contains project documentation
- **mage/**: Contains screenshots of Mage AI Pipeline
- **notebooks/**: Jupyter Notebooks used for initial exploration of the dataset (if any).
- **src/**: Contains the main Python scripts for data loading from GCS, transformation, and  data exporting to BigQuery.
