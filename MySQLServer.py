import mysql.connector
try: 
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "Vision2030$",
        database = "alx_book_store"


    )

    mycursor = mydb.cursor()

    mycursor.execute("SHOW TABLES")
    #listing all tables in the database
    results = mycursor.fetchall()

    for result in results:
        print(result)
except mysql.connector.Error as e:
    print(f"Connection error {e}")

mycursor.close()
mydb.close()