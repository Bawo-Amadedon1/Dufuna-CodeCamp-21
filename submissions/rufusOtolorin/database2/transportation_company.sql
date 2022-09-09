 -- TO CREATING TRANSPORTATION COMPANY DATABASE
CREATE DATABASE transportation_company;

 -- TO CONFIRM THAT THE TRANSPORTATION COMPANY DATABASE DONE
 SHOW DATABASES;
 
 -- TO START CREATING TABLES
 USE transportation_company;
 
  -- TO CREATE PASSENGERS TABLE
  CREATE TABLE passengers (
  id INT NOT NULL AUTO_INCREMENT,
  full_name VARCHAR(150) NOT NULL,
  sex VARCHAR(10) NOT NULL,
  age VARCHAR(100),
  PRIMARY KEY (id)
  );
  
   -- TO CREATE TRAVEL DETAILS TABLE
   CREATE TABLE passengers_details (
   id INT NOT NULL AUTO_INCREMENT,
   passengers_id INT NOT NULL,
   class INT NOT NULL,
   ticket_number VARCHAR(50) NOT NULL,
   trip_fare DECIMAL(10, 2) NOT NULL,
   assigned_cabin VARCHAR(255),
   parent_children_aboard INT NOT NULL,
   siblings_spouses_aboard INT NOT NULL,
   embarkation VARCHAR(100),
   PRIMARY KEY (id),
   FOREIGN KEY (passengers_id) REFERENCES passengers (id)
   );
   
    -- TO CREATING SURVIVAL TABLE
    CREATE TABLE accident_cases (
     id INT NOT NULL AUTO_INCREMENT,
     passengers_id INT NOT NULL,
     survivals INT NOT NULL,
     PRIMARY KEY (id),
     FOREIGN KEY (passengers_id) REFERENCES passengers (id)
    );
    
     -- TO SHOW ALL TABLE INI THE TRANSPORTATION COMPANY DATABASE
    SHOW tables