from unittest import result
from app.database import get_db


def output_formatter(results):
    out = []
    for result in results:
        user = {}
        user["id"] = result[0]
        user["first_name"] = result[1]
        user["last_name"] = result[2]
        user["hobbies"] = result[3]
        user["active"] = result[4]
        out.append(user)
    return out


def scan():
    cursor = get_db().execute(
        "SELECT * FROM user WHERE active=1", ())
    results = cursor.fetchall()
    cursor.close()
    return output_formatter(results)


def select_by_id(id):
    cursor = get_db().execute(
        "SELECT * FROM user WHERE id=? AND active=1", (id,)
    )
    results = cursor.fetchall()
    cursor.close()  # close db connection (limit of connections are 1024)
    return output_formatter(results)


def insert(data):
    """create a new record in the user TABLE"""

    query = """
    INSERT INTO user (
        first_name, 
        last_name, 
        hobbies
    ) VALUES (?,?,?)
    """

    values = (
        data.get("first_name"),
        data.get("last_name"),
        data.get("hobbies")
    )
    cursor = get_db()
    cursor.execute(query, values)
    cursor.commit()  # apply changes
    cursor.close()


def deactivate(id):
    """soft delete user"""
    cursor = get_db()
    cursor.execute("UPDATE user set active=0 WHERE id=?", (id,))
    cursor.commit()
    cursor.close()
