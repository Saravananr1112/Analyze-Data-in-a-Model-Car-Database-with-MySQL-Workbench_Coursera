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

### Exploring warehouse details and stock inventory
To understand how many warehouses are there, their capacity, whether stocks are stored, etc. By using the below code, we are combining the warehouse table, the products table, and the order details table.
![Exploring warehouse details and stock inventory](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/c9bef49b-f912-446e-99bb-417430b19b5c)
![Exploring warehouse details and stock inventory_Out](https://github.com/Saravananr1112/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/159127219/05e9d447-0f46-499f-8df4-8d5032a7fc60)

We can see that there are four warehouses with their corresponding codes, names, current capacity in percent, and stock available. Warehouse C has the most space available, at only 50% filled.


### Identifying products with huge stock in inventory but low sales


