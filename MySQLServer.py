#!/usr/bin/python3
import mysql.connector

try:
    # Connect to MySQL database
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Vision2030$",
        database="alx_book_store"
    )

    cursor = conn.cursor()
    cursor.execute("SELECT * FROM Books")
    tables = cursor.fetchall()

    for (table,) in tables:
        print(table)

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals() and conn.is_connected():
        conn.close()
