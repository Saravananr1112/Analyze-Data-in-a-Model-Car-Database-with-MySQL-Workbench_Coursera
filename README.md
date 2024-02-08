# Model Car Database
### About Company
Mint Classics Company, a retailer of classic model cars and other vehicles, is looking at closing one of their storage facilities.To support a data-based business decision, they are looking for suggestions and recommendations for reorganizing or reducing inventory, while still maintaining timely service to their customers. For example, they would like to be able to ship a product to a customer within 24 hours of the order being placed.

### Project Objectives
1. Explore products currently in inventory.
2. Determine important factors that may influence inventory reorganization/reduction.
3. Provide analytic insights and data-driven recommendations.

### Import the Classic Model Car Relational Database
For this task I will Download the mintclassicsDB.sql file, which is the SQL script that will create and populate the Mint Classics relational database.

### Exploring Mint Classic database and business processes
Diving into the database structure and to see what type of data is stored in each table and how the tables are related. Since the database is designed to represent the business, familiarity with the database builds familiarity with business process. Using the EER, we can visualize how data flows. How it is processed mirrors how business activities occur and interrelationships among tables.

![EER](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/ff5efad3-9393-464d-ab06-edda26295c39)


### Investigating the business problems and identify tables impacted.
I will use SQL queries to retrieve the necessary data for Mint Classics to determine which storage facility is best to close.

### Warehouse details and stock inventory
To understand how many warehouses are there, their capacity, whether stocks are stored or not, and stocks available in the warehouse.

![Exploring warehouse details and stock inventory](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/c9bef49b-f912-446e-99bb-417430b19b5c)
![Exploring warehouse details and stock inventory_Out](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/05e9d447-0f46-499f-8df4-8d5032a7fc60)

We can see that there are four warehouses with their corresponding codes, names, current capacity in percent, and stock available. Warehouse C has the most space available, at only 50% filled.


### Warehouse stock inventory category wise
To understand what types of product categories are stored in each warehouse and any relationships between products that are stored in multiple warehouses.

![2_Warehouse stock inventory products wise](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/980c3cb5-4782-40a4-a0c7-aca047a800fe)
![3_Warehouse stock inventory products wise_Out](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/1b50d8b5-4589-4072-9b9b-9eb0488aa7c6)

The result clearly shows that both warehouses B and C are storing the same product category, which is cars. In warehouse stock inventory, we saw Warehouse C has the most space available, at only 50% filled.


### Warehouse stock inventory product wise
To identify products with high inventory volume but low sales?

![4_Warehouse stock inventory product wise](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/8a035f44-3611-4c81-bf01-61fe7b20cfc7)
![4_Warehouse stock inventory product wise_Out](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/befc34d4-b60b-4ed9-b1c8-cad27583bd73)

There are many products that have a high volume of stock but a low sales figure in all the warehouses. Now we'll see a summary of warehouse inventory status by product count.

![5_Product count Inventory status wise](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/f2870e0c-2ad9-49fe-adf0-b166ee73c8a5)

![5_Product count Inventory status wise_Out](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/4d829ec2-ac10-4658-a9d1-d212158ebe82)

We can see there was one product where the InventoryStatus shows "ToDiscontinue" in warehouse B, we'll see what type of product and its stock available in warehouse.

![6_Checking if there are products that have not been ordered](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/88f485fb-ce23-43d5-b1c5-d8c2fd402b0c)

![6_Checking if there are products that have not been ordered_Out](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/34852d76-508e-42f2-9901-1bd1c1a8f03c)


### Evaluating employee sales performance using sales data
This helps us obtain a list of employee details along with their job titles, as well as a customer count for each employee.

![7_Employee sales summary](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/9224137c-ad3c-43a6-a414-a65baba55cf6)
![7_Employee sales summary_Out](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/411732bd-ed08-49bd-8612-d94fc54df541)

From this EmployeeDetails table, we will filter employee job titles by "Sales Rep" and number of customers count less than 1.

![7_Employee who didn't made any sales](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/fde8ff6c-5afe-4f84-ae49-a6dbf8d9e9ea)
![7_Employee who didn't made any sales_Out](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/197146de-b39f-4c75-a84f-e76868150f02)

We can see there are two sales representatives who didn't make any sales, but for certain customers, the sales representative number was not mapped, so the data above may not be accurate. We have elaborated on the insufficient data issue with the client.


### Evaluating MintClassics credit policies
We can identify customers who have payments less than their credit limits and evaluate credit risk that needs attention.

![8_Verifying company’s credit details](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/11b2e07f-a352-4069-9ec4-8861ee594b02)
![8_Verifying company’s credit details_Out](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/60a2e43b-0e1a-4b13-9a88-ade309cc0ac2)



### Formulate suggestions and recommendations for solving the business problem.
I have performed data analysis using SQL queries and formulated recommendations to address the inventory-related business problems.

* **Warehouse** - We can close warehouse C, which has space available (only 50% filled), and warehouses B and C share the same category of products. Also, we can remove the 1985 Toyota Supra, which has never been ordered from warehouse B. It will help us to reduce warehouse rental costs and optimize inventory allocation.

*  **Inventory** -  We have to remove the 1985 Toyota Supra from warehouse B, which has never been ordered from the start; this could increase the warehouse capacity. During our analysis, we identified a couple of products with a high volume of stock but low sales in all the warehouses. The best way to deal with it is to compare the price range of those products on the market and adjust the price accordingly. This may attract customers and increase the volume of sales. We can also do promotional campaigns, offer discounts, hire a social media influencer to promote the product, and offer bulk deals to motivate customers to purchase the products. We have to restock the out-of-stock products to meet customer demand and maintain sales flow.

* **Employeee**  - 









 




