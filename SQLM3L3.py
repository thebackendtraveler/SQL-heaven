import SQLM3L2config as myDB
import mysql.connector as mysql

try:
    conn = mysql.connect(**myDB.dbConfig)
    print("-"*80)
    print("A connection with the database has been established at: \n", conn)
    print("-"*80)
    cursor=conn.cursor()
except: 
    print("There was an error when connecting to the database..")


try:
    myFriend = ''
    myFriend = input("What is your friends name? ")
    
    cursor.execute("SELECT * FROM u_info WHERE FirstName = '" + myFriend + "'")
    output = cursor.fetchall()
    #cursor.execute("SELECT * FROM u_info WHERE FirstName = " + myFriend)
    #output = cursor.fetchall()
    
    for friend in output:
         print("Your friends information is : gamer_id:{} firstname:{} lastname:{} game:{}".format(
                friend[0], friend[1], friend[2], friend[3]))
        
            
    conn.close()
 
except:
    print('The input does not have the right datatype, or the name does not exist in the database. A column gamer_id, firstname, lastname and game was not found..')
else: 
    conn.close()