# Finance & Supply Chain Analytics for AtliQ Hardwares

## Technologies Used
- **Database:** MySQL  
- **SQL Features:** Views, Stored Procedures, Functions  
- **Data Processing:** Aggregations, Joins, Subqueries  
- **Optimization Techniques:** Indexing, Query Optimization  
- **Reporting & Analytics:** SQL-based reporting using Views and Stored Procedures  

## Database Overview
The database `gdb0041` consists of **12 tables** with a total of **19+ lakh (1.9 million) rows of data**. It includes dimensional data (customer, product, and date references) and fact tables (sales, pricing, cost, and deductions) to provide deep insights into financial and supply chain operations. 

## Project Overview
This project provides a comprehensive analysis of financial and supply chain data for AtliQ Hardwares. The database is designed to optimize business intelligence by tracking sales, pricing, manufacturing costs, and forecasting accuracy. The use of views, stored procedures, and functions allows efficient data retrieval and decision-making.

## Purpose of the Project
The goal of this project is to enhance AtliQ Hardwares’ financial and supply chain decision-making through structured data storage and analytical queries. Key objectives include:
- **Tracking Sales Performance** – Analyzing gross and net sales trends.
- **Forecast Accuracy** – Comparing actual vs. forecasted sales.
- **Cost Optimization** – Evaluating freight and manufacturing costs.
- **Customer & Market Insights** – Identifying top-performing customers and markets.
- **Discount & Revenue Analysis** – Understanding pre- and post-invoice deductions.

## Database Structure
### Database Name: `gdb0041`

#### 1. Dimension Tables (Reference Data)
| Table Name         | Description                                          |
|-------------------|--------------------------------------------------|
| `dim_customer`    | Stores customer details such as name, location, and segmentation. |
| `dim_date`        | Maintains a structured date reference for time-based analysis. |
| `dim_product`     | Contains product information including category and division. |

#### 2. Fact Tables (Transactional Data)
| Table Name                      | Description  |
|---------------------------------|-------------------------------------------|
| `fact_act_est`                  | Contains actual and estimated sales data for comparison. |
| `fact_forecast_monthly`         | Holds sales forecast figures at a monthly level. |
| `fact_freight_cost`             | Stores transportation and logistics costs. |
| `fact_gross_price`              | Maintains details of product pricing before deductions. |
| `fact_manufacturing_cost`       | Tracks manufacturing expenses per product. |
| `fact_post_invoice_deductions`  | Records discounts applied after invoice generation. |
| `fact_pre_invoice_deductions`   | Captures deductions before invoicing. |
| `fact_sales_monthly`            | Stores monthly sales performance data. |

### 3. Created Views (For Simplified Reporting & Analysis)
| View Name                 | Description |
|---------------------------|-------------------------------------------|
| `gross_sales`             | Provides a summarized view of gross sales data. |
| `net_sales`               | Displays net sales after applying all deductions. |
| `sales_postinv_discount`  | Shows post-invoice discount data. |
| `sales_preinv_discount`   | Contains pre-invoice discount details. |

### 4. Stored Procedures (For Advanced Data Analysis & Reporting)
| Procedure Name                                   | Description |
|-------------------------------------------------|--------------------------------------------------|
| `get_forecast_accuracy`                         | Evaluates the accuracy of monthly sales forecasts. |
| `get_market_badge`                              | Assigns performance badges to markets based on sales trends. |
| `get_monthly_gross_sales_for_customer`         | Fetches gross sales data for a specific customer on a monthly basis. |
| `get_mult_cust_monthly_gross_sales`            | Retrieves gross sales for multiple customers monthly. |
| `get_top_n_customers_by_net_sales`             | Identifies the top N customers based on net sales. |
| `get_top_n_markets_by_gross_sales_in_ever`     | Lists top N markets based on gross sales. |
| `get_top_n_markets_by_net_sales`               | Displays the top N markets ranked by net sales. |
| `get_top_n_products_by_division_sold_quantit`  | Finds the top N products sold within specific divisions. |
| `get_top_n_products_by_net_sales`              | Highlights the top N products based on net sales. |

### 5. Functions (For Time-Based Calculations)
| Function Name        | Description |
|---------------------|-------------------------------------------|
| `get_fiscal_year`   | Returns the fiscal year for a given date. |
| `get_fiscal_quarter`| Determines the fiscal quarter based on the provided date. |

