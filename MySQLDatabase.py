import mysql.connector


class MySQLDatabase:
    def __init__(self, host='localhost', user='root', password='', database=''):
        """
        Initializes a MySQLDatabase instance.

        Args:
            host (str): The MySQL server host address.
            user (str): The MySQL user.
            password (str): The MySQL password.
            database (str): The name of the MySQL database.
        """
        self.host = host
        self.user = user
        self.password = password
        self.database = database
        self.connection = None

    def connect(self):
        """
        Establishes a connection to the MySQL database.

        Prints a message indicating successful connection or an error message if connection fails.
        """
        try:
            self.connection = mysql.connector.connect(
                host=self.host,
                user=self.user,
                password=self.password,
                database=self.database
            )
            print("Connected to MySQL database")
        except mysql.connector.Error as err:
            print(f"Error: {err}")

    def execute_query(self, query):
        """
        Executes a SQL query and fetches the result.

        Args:
            query (str): The SQL query to be executed.

        Returns:
            list or None: A list containing the result of the query, or None if an error occurs.
        """
        try:
            cursor = self.connection.cursor()
            cursor.execute(query)
            result = cursor.fetchall()
            return result
        except mysql.connector.Error as err:
            print(f"Error executing query: {err}")
            return None
        finally:
            cursor.close()

    def disconnect(self):
        """
        Disconnects from the MySQL database.

        Prints a message indicating successful disconnection.
        """
        if self.connection:
            self.connection.close()
            print("Disconnected from MySQL database")
