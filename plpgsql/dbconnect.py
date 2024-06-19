import psycopg2 as ps

connect = None

try:
    connect = ps.connect(database='dbms2023' , user='s10054' , password='s10054' , host='7.1.1.113' , port=5432)

    if connect:
        print("Connection successful")
    else:
        print("Failed to connect to database")

    cur = ps.cursor()
    cur.execute('SELECT * FROM {ur table name}')
    rows = cur.fetchall()
    for row in rows:
        print(row)

    cur.close()
    
except (ps.DatabaseError, Exception) as error:
    print(error)

finally: 
    if connect is not None: 
        connect.close() 
        print('Database connection closed.')