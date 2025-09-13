# FreightFlow-Optimizer 🚚

This repository contains the code, data, and analysis for a case study on optimizing shipping logistics and supply chain routes. [cite_start]The goal of this project was to analyze shipping data to satisfy operational constraints while minimizing freight and warehousing costs[cite: 12].

[cite_start]This project was developed using Google Cloud Platform (GCP), leveraging services like GCS, Dataflow, BigQuery, and Looker Studio to build an end-to-end data analysis pipeline[cite: 409].

## 🛠️ Tech Stack & Methodology

The entire workflow was orchestrated on GCP:
* [cite_start]**Data Lake:** Google Cloud Storage (GCS) was used to store the 7 raw CSV datasets[cite: 285].
* [cite_start]**ETL Pipeline:** Google Cloud Dataflow automated the ingestion of data from GCS into BigQuery tables[cite: 309].
* [cite_start]**Data Warehouse:** Google BigQuery served as the central platform for data storage and SQL-based analysis[cite: 316, 323].
* [cite_start]**BI & Visualization:** Looker Studio was connected to BigQuery to create interactive dashboards and visualize the findings[cite: 331].

### Project Flowchart
*(In GitHub, replace the text above with this to display the image: `![Methodology Flowchart](assets/methodology_flowchart.png)`)*

---

## 📊 Dataset Overview

[cite_start]The analysis is based on a dataset comprising seven interconnected tables, modeling a single day of logistics operations[cite: 11, 13]:

1.  [cite_start]**OrderList**: The central table containing over 9,000 customer orders[cite: 15, 237, 251].
2.  [cite_start]**FreightRates**: Contains shipping options, constraints, and costs[cite: 19].
3.  [cite_start]**PlantPorts**: Defines valid shipping routes between warehouses and ports[cite: 23].
4.  [cite_start]**ProductsPerPlant**: Specifies which products can be fulfilled by each warehouse[cite: 27].
5.  [cite_start]**VmiCustomers**: Lists special customers tied to specific warehouses[cite: 31].
6.  [cite_start]**WhCapacities**: Defines the daily order processing capacity of each warehouse[cite: 36, 38].
7.  [cite_start]**WhCosts**: Contains the storage cost per unit for each warehouse[cite: 41].

---

## 🚀 How to Use This Repository

To replicate this analysis, follow these steps:

1.  **Clone the Repository:**
    ```sh
    git clone [https://github.com/your-username/shipping-logistics-analysis.git](https://github.com/your-username/shipping-logistics-analysis.git)
    ```
2.  **Set up GCP:**
    * Create a new GCP project.
    * Enable the APIs for GCS, BigQuery, and Dataflow.
    * [cite_start]Configure the necessary IAM roles (e.g., BigQuery Data Owner, Storage Object Admin)[cite: 298].
3.  **Upload Data:**
    * Create a GCS bucket.
    * Upload the 7 CSV files from the `/data` directory into the bucket.
4.  **Load Data into BigQuery:**
    * Create a new BigQuery dataset.
    * [cite_start]Use the BigQuery UI or a Dataflow template ("CSV Files to BigQuery") to load each CSV file into its own table within the dataset[cite: 310].
5.  **Run Analysis:**
    * Navigate to the BigQuery console.
    * Open and run the queries from the `/sql_queries` directory to perform the analysis.
6.  **Visualize Results:**
    * Connect Looker Studio to your BigQuery dataset and recreate the visualizations from the case study.

---

## 🔍 Key Findings & Insights

The analysis of 13 SQL queries yielded several key insights into the shipping operations:

* [cite_start]**Plant Dominance**: **PLANT03** is the primary logistics hub, handling the vast majority of orders (8,541) and shipping weight (~140K units)[cite: 341, 347].
* [cite_start]**Port Activity**: **PORT04** is the most critical shipping port, processing 98.1% of all orders (9,041)[cite: 398].
* [cite_start]**Shipping Mode Efficiency**: **AIR** shipping is more cost-effective for bulk transport, handling significantly more weight at a much lower average rate ($1.18) compared to **GROUND** ($12.71)[cite: 393, 394].
* [cite_start]**Customer Behavior**: A small group of top-tier customers accounts for a large volume of repeat orders, with the leading customer placing 976 orders[cite: 361, 363].

For a detailed breakdown of each query and its findings, please see the full case study in the `/report` directory.
