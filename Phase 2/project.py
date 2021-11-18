import sqlite3

USER = 'user'
PASSWORD = 'password'

# Search functions

def foodID_search(_db_name):
    with sqlite3.connect(_db_name) as db:
        db.text_factory = str
        cursor = db.cursor()
        food_ID = raw_input("Enter Food ID: \n")
        
        sql = ("select * from Food where food_id = {}".format(food_ID))
        cursor.execute(sql)

        result = cursor.fetchall()
        format_row = '{:<1} {:<12} {:<10} {:<10} {:<9}'
        print(format_row.format("ID","","",""))
        print("++++++++++++++++++++++++++++++++++")
        for row in result:
            print(formatted_row.format(*row))

def foodName_search(_db_name):
    with sqlite3.connect(_db_name) as db:
        db.text_factory = str()
        cursor = db.cursor()
        food_name = raw_input("Enter Food Name: \n")

        sql = ("select * from Food where food_name = {}".format(food_name))
        cursor.execute(sql)

        result = cursor.fetchall()
        format_row = '{:<5} {:<12} {:<10} {:<10} {:<9}'
        print(format_row.format("ID","","",""))
        print("++++++++++++++++++++++++++++++++++")
        for row in result:
            print(formatted_row.format(*row))

def foodType_search(_db_name):
    with sqlite3.connect(_db_name) as db:
        db.text_factory = str()
        cursor = db.cursor()

# Insert functions

def food_insert(_db_name):
    with sqlite3.connect(_db_name):
        db.text_factory = str
        cursor = db.cursor()
        food_id = raw_input("ID: \n")
        food_id = raw_input("ID: \n")

def restaurant_insert(_db_name):

# Delete functions

def food_delete(_db_name):
    with sqlite3.connect(_db_name) as db:
        cursor = db.cursor()
        food_val = raw_input("\nWhich food item would you like to delete: \n")
        query = ("DELETE FROM Food WHERE  = " + partyNumber)
        db_curs.execute(query)
        print("\nParty " + partyNumber + " has been deleted\n")

def restaurant_delete():


print("\nWelcome to Food Database, please enter an item to execute. \n")
if option == 50:
    type_user = input("1 - User\n2 - Admin\n")
#User
    if (type_user == 1 ):
        
#Admin
    if (type_user == 2):
        USER1 = raw_input("\nUser Name: \n")
        PASSWORD1 = raw_input("\nPassword: \n")
        if (USER == USER1 and PASSWORD == PASSWORD1):
            print("\nHello aaaaa")
            admin = input("1 - Pokedex Update\n2 - Pokedex Insert\n3 - Pokedex Delete\n")
            if (admin == 1):
                pokemon_Update()
            if (admin == 2):
                pokemon_Insert()
            if (admin == 3):
                pokeDex_Delete()


def main():
    db_name = r"Food.db"

    connection = openConnection(db_name)
    with connection:
        dropTable(connection)
        createTable(connection)
        populateTable(connection)

        Q1(connection)
        Q2(connection)
        Q3(connection)
        Q4(connection)
        Q5(connection)
        Q6(connection)
        Q7(connection)
        Q8(connection)
        Q9(connection)
        Q10(connection)
        Q11(connection)
        Q12(connection)
        Q13(connection)
        Q14(connection)
        Q15(connection)

    closeConnection(connection, database)

if __name__ == '__main__':
    main()
