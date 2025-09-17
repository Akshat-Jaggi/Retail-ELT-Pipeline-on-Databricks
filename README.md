# E-Commerce Retail Data Engineering Pipeline on Databricks 

## Project Overview
This project demonstrates an end-to-end ELT (Extract → Load → Transform) pipeline on E-Commerce Retail Sales data from Kaggle. The pipeline is implemented in Databricks using PySpark and Delta tables, and includes a live Dashboard to visualize business KPIs.

## Architecture

1. **Bronze Layer**: Raw ingestion of retail sales CSV. Stores all original data for audit purposes. (As Databricks Free Edition was used for this project and DBFS is disabled, I directly had to upload the data as a managed table within the Databricks Workspace to get my work going) 
2. **Silver Layer**: 
   - Cleans and enforces schema.
   - Handles nulls and duplicates
   - Casts dates and numeric columns
3. **Gold Layer**: Aggregates business KPIs:
   - Revenue by Country in the year of 2011 
   - Monthly Sales Trends
   - Top 10 Customers related to highest overall revenue  
4. **Dashboard Layer**: Visualizes Gold tables with bar and Area charts, automatically refreshed via Databricks Job.

<img width="1916" height="1012" alt="image" src="https://github.com/user-attachments/assets/ce97c0ca-c6a8-415c-b533-bea69bb7c75a" />


## Technologies Used
- Databricks Free Edition  
- PySpark
- SQL  
- Delta Tables  
- Databricks Jobs
- Databricks Dashboard  

## Highlights / Key Features
- End-to-end ELT pipeline with clear separation of layers  
- Schema enforcement and data quality handling  
- Partitioning and optimized Gold tables  
- Dashboard for real-time business insights  
- Handles missing Customer IDs with a robust solution  

## Databricks Dashboard Preview
<img width="1915" height="1018" alt="image" src="https://github.com/user-attachments/assets/dc2c9d5f-182b-4d91-8bd3-95b07552b24e" />

## Dataset
Retail sales dataset from Kaggle: [Online Retail Dataset on Kaggle](https://www.kaggle.com/datasets/mohammadtalib786/retail-sales-dataset/data)
Data Size: Dataset has 541909 Rows

## How to Run
1. Import notebooks into Databricks Workspace  
2. Configure the Databricks Job:
   - Task 1 → Bronze  
   - Task 2 → Silver  
   - Task 3 → Gold  
   - Task 4 → Dashboard  
3. Run the job to execute the full pipeline and refresh the dashboard  
