# Uber Analytics Project

## Overview

This project involves processing and analyzing Uber trip data using various Google Cloud services, including Cloud Storage, Compute Engine and BigQuery for storing and querying data. The goal is to transform raw Uber data into structured tables and load them into BigQuery and LookerStudio for analytics and visualization.

## Technologies Used

- **Google Cloud Storage (GCS)**: Used to store raw data files in a bucket.
- **Google Compute Engine**: Used for running the data processing pipeline.
- **BigQuery**: Data warehouse for storing transformed data.
- **Mage AI**: Open-source tool used to build the ETL pipeline for transforming and loading data.
- **Looker Studio**: Data visualization tool for creating reports and dashboards.

## Project Structure

- **data/**: Contains raw, transformed, and BigQuery data.
- **src/**: Contains the main Python scripts for data loading, transformation, and exporting data to BigQuery.
- **config/**: Contains configuration files for Mage AI and BigQuery.
- **tests/**: Contains unit tests to ensure the correctness of data transformation and loading scripts.
- **docs/**: Contains additional documentation and project reports.
- **notebooks/**: Jupyter Notebooks used for initial exploration of the dataset (if any).

## Setup Instructions

### Prerequisites

Ensure you have the following setup before running the project:

- A Google Cloud account with access to BigQuery, Compute Engine, and Storage.
- Python 3.x installed on your local machine.
- Mage AI installed (check Mage AI documentation for installation steps).

### Clone the Repository

```bash
git clone https://github.com/yourusername/uber-analytics-project.git
cd uber-analytics-project
