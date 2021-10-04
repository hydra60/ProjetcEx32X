#TODO Auth: Samuel Benjamin Cruz Quino
#Añadir a 2 estudiantes
#pip install psyconpg2
import psycopg2 as pc
try:
    conect = pc.connect(
        database="MiBaseSamuel", user="postgres", password="123456",host="127.0.0.1", port="5432"
    )
    print("Database Suceesful OK ")
    cursor = conect.cursor()
    sql = """INSERT INTO Persona (ci, nombre, ap_pat, ap_mat, f_nac, departamento )
            VALUES (12514307, 'Benjamin', 'Cruz', 'Quino', '14/06/1997', 03),
            (1732897, 'Samuel', 'Cruz', 'Quino', '14/06/1997', 03);"""
    cursor.execute(sql)
    conect.commit()
    print("Se añadio a 2 estudiantes con exito")
    conect.close()
except:
    print("ocurrio errror")