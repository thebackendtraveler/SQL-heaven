import myDBconfig as myDB
import mysql.connector as mysql
conn = mysql.connect(**myDB.dbConfig)
print(conn)
conn.close