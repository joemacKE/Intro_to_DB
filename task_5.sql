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
    sql = "INSERT INTO Customers (customer_id, customer_name, email, address) VALUES (%s, %s, %s, %s)"
    val = 1, "Cole Baido", "cbaidoo@sandtech.com", "123 Happiness Ave."
    cursor.execute(sql, val)
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