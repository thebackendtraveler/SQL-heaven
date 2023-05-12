import SQLM3L2config as myDB
from pprint import pprint;
import mysql.connector as mysql
conn = mysql.connect(**myDB.dbConfig)
print("A connection with the database has been established at: \n", conn)
cursor=conn.cursor()

try:
    cursor.execute("UPDATE u_info SET LastName = 'Stene' WHERE gamer_id = 5")
    pprint (cursor.fetchall())
    conn.commit()
    conn.close
except:
    print('The table, column or id does not exist in the database..')
else: 
    conn.close
