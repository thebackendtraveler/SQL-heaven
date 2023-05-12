import SQLM3L2config as myDB
import mysql.connector as mysql

conn = mysql.connect(**myDB.dbConfig)
print("-"*80)
print("A connection with the database has been established at: \n", conn)
print("-"*80)
cursor=conn.cursor()

try:
    cursor.execute("DELETE FROM u_info WHERE gamer_id = 1")
    conn.commit()
    cursor.execute("SELECT * FROM u_info")
    output = cursor.fetchall()
    print (output)
    conn.close()
except:
    print('You have to use an existing table, and insert three values for three columns..')
else: 
    conn.close()