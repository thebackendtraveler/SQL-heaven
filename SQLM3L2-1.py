import SQLM3L2config as myDB
from pprint import pprint;
import mysql.connector as mysql
conn = mysql.connect(**myDB.dbConfig)
print("A connection with the database has been established at: ", conn)
cursor=conn.cursor()

try:
    #cursor.execute("INSERT INTO u_info (gamer_id, FirstName, LastName, Game) VALUES('1', 'Ronny', 'Johansen', 'Roblox')")
    #cursor.execute("INSERT INTO u_info (gamer_id, FirstName, LastName, Game) VALUES('2', 'Emil', 'Jensen', 'Call Of Duty')")
    #cursor.execute("INSERT INTO u_info (gamer_id, FirstName, LastName, Game) VALUES('3', 'Randi', 'Antonsen', 'Zelda')")
    #cursor.execute("INSERT INTO u_info (gamer_id, FirstName, LastName, Game) VALUES('4','Berit', 'Andersen', 'Ace Combat 7')")
    cursor.execute("INSERT INTO u_info (gamer_id, FirstName, LastName, Game) VALUES('5','Tom', '', 'Farming Simulator')")
    pprint (cursor.fetchall())
    conn.commit()
    conn.close
except:
    print('You have to use an existing table, and insert three values for three columns..')
else: 
    conn.close

        