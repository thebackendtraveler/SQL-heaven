import myDBconfig as myDB
from pprint import pprint;
import mysql.connector as mysql
conn = mysql.connect(**myDB.dbConfig)
print("A connection with the database has been established at: ", conn)
cursor=conn.cursor()
cursor.execute("USE university")
cursor.execute("SELECT first_name, last_name FROM students")
pprint (cursor.fetchall())

conn.close