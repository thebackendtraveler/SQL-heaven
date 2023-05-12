import myDBconfig2 as myDB
from pprint import pprint;
import mysql.connector as mysql
conn = mysql.connect(**myDB.dbConfig)
print("A connection with the database has been established at: ", conn)
cursor=conn.cursor()
#cursor.execute("USE university") replaced by entry in config file
try:
    cursor.execute("INSERT INTO offerings (course_code, start_date) VALUES ('SQL2', '20200216')")
    pprint (cursor.fetchall())
except mysql.Error as err:
    if err.errno ==1452:
        print('You have to use an existing course! There is no corrseponding record in the course_table..')
    else: 
        raise
conn.close