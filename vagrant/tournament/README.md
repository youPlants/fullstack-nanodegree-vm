Swiss-Pairing Tournament Database
**********************************
This is the database code for a Swiss-pairing tournament. This program was designed on the included vagrant virtual machine, which comes included with necessary dependencies and PostgreSQL loaded. Vagrant requires VirtualBox in order to run.[you can download free from Oracle https://www.virtualbox.org/wiki/Downloads ]

What is included?
********************
The tournament directory contains the SQL database schema in tournament.sql and the python code that operates it is found at tournament.py. The tournament_test.py is a test file, which runs through a series of tests including data to test the accuracy of the database.

How to run?
**************
If you are using the included vagrant VM then PostgreSQL will be included and so you will navigate to the tournament directory and log into the database with the "psql" command. After login in you can use the command "\i tournament.sql" to create the database schema. After the database is created you can connect to it in the table using "\c tournament". 

How do I use it?
*****************
You can check out the database in the psql terminal and add or delete matches or players there as well. Alternatively you can test the database setup with the tournament_test.py file. If you are login into the database you will use the "\q" command to return to the command line and can run the test with "python tournament_test.py" in the tournament directory and it will return a series of print statements that test the functionality of the database. 

For additional testing scenarios you can also alter the test file or create your own to further test the schema. If you want to use this code in production it will require the implementation of a user environment to go with the database code. 
