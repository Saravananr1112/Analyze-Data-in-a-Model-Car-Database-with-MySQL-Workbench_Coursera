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
To understand how many warehouses are there, their capacity, whether stocks are stored or not, and stocks available in warehouse.

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





