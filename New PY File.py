Pyspark -   

Data Engineer Role  -  
Data Collect 
Data Anylise 
Data Organize
Data Filtration and Transformation 
Data Optimization 
Data Transformation 
Data load 

SQL or Pandas  -  It is Using Single machines  and Single Execution 

For ICICI Bank transition data 
Scenario 1  -  Daily Bais par 1 GB Data generated  -  20 Lakh rows 
From GCS  - raw - Transform - consumption -  view  -  1 HR 

Pandas - 

Scenario 2  -  Daily Bais par 10 GB Data generated  -  200 Lakh rows 
From GCS  - raw - Transform - consumption -  view  -  10 HR 

spark  -   Multiple machines and Executing Code parallely 

4 Machines 
10/4 -  2.5 HR 

Spark  -  Apache Spark is Used to process larger volume of data Quickly Efficenty 


Problem With traditional process  
Processing huge data on Single Machine 
Processing time Is high 
Complexity 
Can process data in GB But It is Difficult To process data In TB or PB  

Spark  -  
Fast Processing  -  In memory Computition  Which make  Code faster then an traditional way Like Disk based System 
Data Distribution  -  As we have multiple machines So data Get Disstributed to process 
Handle Big data  -  Spark Can process GB or TB Or PB 
Multiple Workload  -  It can Support 
batch processing -  Process In form of Batches
Real time Steaming  -  Will Process live data 
We can Use SQL Anylatics 
Support multiple languages  -  
Python  – Pyspark -  PY(Python)Spark 
Scala - 
R  -  
SQL -
Java -



Spark  Architecture -

Spark Architecture  Consist of 4 main Component 

Master Node  -  It Is a brain of Spark Which creates a Flow Or we can say Direct acyclic graph (DAG) Which Define an How Code Should Be Executed . 
Once all Transformation done it Will load data Into target locations 
Worker node  -  It will took Code from master node via Cluster manager and give Code to Executors for Executions 
Cluster Manager -  It will make Connection between master node and Worker node 
Executor  -  It will Execute an code and 
  
Code Deploy To spark Application  -  
Master Node Will Create dag and handover Code to Worker Node via cluster manager 
Worker Node will execute task with help of Core present in That Worker node called as Executor (Only transformation) and Once Execution is Done It handover Information to master Node via Cluster manager  and master Node Will perform an Actions ( data Load )
 


RAM - Processing 
ROM  -  Storage 

Machine 1  -  master node  -  4 GB 16 GB ROM Quade Code  -  Core 4
Machine 2  -  Worker node1  -  4 GB 16 GB ROM Quade Code  -  Core 4
Machine 3  -  Worker node 2 -  4 GB 16 GB ROMQuade Code  -  Core 4
Machine 4  -  worker node 3 -  4 GB 16 GB ROM Quade Code  -  Core 4
Machine 5  -  worker node 4 -  4 GB 16 GB ROM Quade Code  -  Core 4





Select * from table t1 
Inner Join table 2 
On col1= col2
Where t2.Col_name =  ‘Condition’;  - 1 HR 

Select * from table t1 
Inner Join (select * from table 2 Where t2.Col_name =  ‘Condition’) as t2
On col1= col2;  - 1 HR 



sales table  -  1000  - Sales ID   Customer id  Order Date 
Customer table  -   40  Customer id 

Pyspark  -  
5 machine 
1 master node  -
 
1 Worker Node - 250 rows  10 rows     
2 Worker Node - 250 rows  10 rows 
3 Worker Node - 250 rows  10 rows
4 Worker Node - 250 rows  10 rows

Where Order Date  -   01012026
Join 


Machine 1  -  master node  -  4 GB 16 GB ROM    Quade Code  -  Core 4  -  


Machine 2  -  Worker node1  -  4 GB 16 GB ROM Quad Code  -  Core 4    2.5GB  100 MB
Machine 3  -  Worker node 2 -  4 GB 16 GB ROM Quad Code  -  Core 4    2.5GB  100 MB
Machine 4  -  worker node 3 -  4 GB 16 GB ROM  Quad Code  -  Core 4    2.5GB  100 MB
Machine 5  -  worker node 4 -  4 GB 16 GB ROM  Quad Code  -  Core 4    2.5GB  100 MB

Where  -  It will Apply condition  -  Data will not Move Within Worker Node

Join  -  It will try to join between two table  - Data will Move Within Worker Node

Data  Shuffling  -   it is a process to redistribute data across partition  or executor or Worker Node so that it should Perform proper transformation 



Transformation -  Transformation is an operation which will execute And give New dataframe 
Means data Will move from dataframe to dataframe 

New_col_creation 

Narrow transformation  -   It is a type of Transformation In which data Will not Shuffle for transformation 
	Example  : Where, Upper , Lower , Withcolumn 
		
Wider  transformation   -  It is a type Of transformation In which data will shuffle for transformation
Example : Group By  , Join , Order by 

Action  -  Action in Spark it will give or return Something like values or Files or Write that Data to target location 

Example  -  Print a data By using action show()
		Write data to location in Csv or table format 




Data Structure 
There are three type of data 

RDD  -   (Resilient Distributed dataset) 
	It is Fundamental data structure in Spark 
	Key Feature  -  
Distributed -  Data is Distributed across number of partition or Worker Node 
Immutable  -  Once RDD Created We can not Modify an RDD need to create New RDD 
Fault tolerance  -  If There is any partition get failed Spark Will create an lineage  Information
No Schema  -  RDD Does Not have any schema Like COl name data type 

Dataframe - Dataframe Is an Distributed Collection of data which is Stored or organized In rows and Col format  which have Col name and datatype 
Schema 
Use By SQL  -  We can apply SQL operations 
Optimized  - We can apply Different type of optimization 
We can create New dataframe By Using old dataframe 


Sales  -  sales_id , Cust_id ,Sales_date , amount , region 

Ap 
Ca 
UK 

Select * from sales 
Where region = ‘ap’ ;

dataFrame  -  It is Storing data And Whenever we are applying an transformation then it will create new dataframe


Df1 = read data from CSV  

Df2  =df1.filter(col(“Region”)=’Ap’)

Df3 = join

Df3.write.csv(“path”)


Lazy Evaluation  -  Spark job will not Execute any transformation till we call any actions.
	It will Check and code how to execute Till any action called .




Python + spark  =  Pyspark 


SparkSession -  

 SparkSession is the entry Point of Spark Where we are using Spark Functionality. 
It Is Introduced in Spark version 2.0

SparkContext   - 

When Spark gets Started it is introduced to use Spark Functions . 
It is the main Entry point of a Spark .






Spark Submit command  – Spark Content -  SparkSession  -   Cluster manager -  It Will config everything that we required  -   master (dag creation) – Cluster manager – Worker node 
– Executor – Cluster manager - master node 


From pyspark.sql import SparkSession

Spark  =  SparkSession.builder.appName(“name”).getOrCreater()

Spark  =  it is an variable  We can define Whatever We wan
Builder  =  It is help to Build SparkSession 
appNaame  -  it is name that We are providing an Entry point 
getOrCreate()  -  it help if sparkSession is created it will use that one otherwise It will create new One 


