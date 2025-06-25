import mysql.connector
try: 
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "Vision2030$"

    )

    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created succesfully!")
except Exception as e:
    print(f"Connection error {e}")

mycursor.close()
mydb.close()