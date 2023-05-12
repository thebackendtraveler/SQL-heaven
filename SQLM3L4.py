import SQLM3L4config as myDB
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
    cursor.execute("CREATE TABLE IF NOT EXISTS `students`.`students` ( `id_student` INT(11) NOT NULL AUTO_INCREMENT,`s_name` VARCHAR(100) NULL DEFAULT NULL, `s_surname` VARCHAR(100) NULL DEFAULT NULL,PRIMARY KEY (`id_student`)")
    cursor.execute("CREATE TABLE IF NOT EXISTS `students`.`Courses` (`id_course`INT(11) NOT NULL AUTO_INCREMENT,`c_name` VARCHAR(45) NULL DEFAULT NULL,PRIMARY KEY (`id_course`)")
    cursor.execute("CREATE TABLE IF NOT EXISTS `students`.`attendance` (`id_student_course` INT(11) NOT NULL AUTO_INCREMENT,`students_id_student` INT(11) NOT NULL,`Courses_id_course` INT(11) NOT NULL,PRIMARY KEY (`id_student_course`),CONSTRAINT `fk_students_course_students` FOREIGN KEY (`students_id_students`)REFERENCES `students.`students` (`id_student`) ON DELETE NO ACTIONON UPDATE NO ACTION,CONSTRAINT `fk_students_course_Courses1`FOREIGN KEY (`Courses_id_course`)REFERENCES `students`.`Courses` (`id_course`)ON DELETE NO ACTIONON UPDATE NO ACTION)")
    cursor.execute("CREATE TABLE IF NOT EXISTS `students`.`enroll` (`id_enrolled` INT(11) NOT NULL AUTO_INCREMENT,`students_id_student`INT(11) NOT NULL,`Courses_id_course` INT(11) NOT NULL,PRIMARY KEY (`id_enrolled`),CONSTRAINT `fk_enroll_students1FOREIGN KEY (`students_id_student`)REFERENCES `students`.`students` (`id_student`)ON DELETE NO ACTION ON UPDATE NO ACTION,CONSTRAINT `fk_enroll_Courses1`FOREIGN KEY (`Courses_id_course`)REFERENCES `students`.`Courses` (`id_course`)ON DELETE NO ACTION ON UPDATE NO ACTION)")
    print("The script executed succesfully....")
except:
    print("There was an error executing the script...")