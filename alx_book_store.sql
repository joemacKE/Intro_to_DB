import mysql.connector

mydb = mysql.connector.connect(
host="localhost",
user="root",
password="Vision2030$",
database="alx_book_store"
)
mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
mycursor.execute("CREATE TABLE IF NOT EXISTS Authors (author_id INT PRIMARY KEY, author_name VARCHAR(215))")
mycursor.execute("CREATE TABLE IF NOT EXISTS Books (book_id INT PRIMARY KEY, title VARCHAR(130), " \
"author_id INT, price DOUBLE, publication_date DATE, FOREIGN KEY (author_id) REFERENCES Authors(author_id))")
mycursor.execute("CREATE TABLE IF NOT EXISTS Customers (customer_id INT PRIMARY KEY, " \
"customer_name VARCHAR(215), email VARCHAR(215), address TEXT)")
mycursor.execute("CREATE TABLE IF NOT EXISTS Orders (order_id INT PRIMARY KEY, " \
"customer_id INT, order_date DATE, FOREIGN KEY (customer_id) REFERENCES " \
"Customers(customer_id))")
mycursor.execute("CREATE TABLE IF NOT EXISTS Order_Details (orderdetailid INT PRIMARY KEY, order_id INT," \
"book_id INT, quantity DOUBLE, FOREIGN KEY (order_id) REFERENCES Orders(order_id), FOREIGN KEY (book_id) REFERENCES Books(book_id))")
