# Importing required modules
from tkinter import *
from MySQLDatabase import MySQLDatabase
from PainDrawing.PainDrawingApp import PainDrawingApp
from VertexAi import VertexAI


# Function to get the number of options based on question type
def getNrOfOptions(db, FID):
    """
    Gets the number of options based on the question type.

    Args:
        db (MySQLDatabase): The MySQL database connection.
        FID (str): The Frage ID.

    Returns:
        str: A string representing the number of options based on the question type.
    """
    query1 = "SELECT NrOFOptions, Format FROM FragenChoices WHERE FID = " + FID
    result1 = db.execute_query(query1)
    if result1[0][1] == "Nummer":
        return " [0-" + str(result1[0][0]) + "] "
    else:
        return " [A-" + chr(ord('A') + result1[0][0]-1) + "] "


# Function to get the file path of a graphic based on Frage ID
def getGraphicsFilePath(db, FID):
    """
    Gets the file path of a graphic based on Frage ID.

    Args:
        db (MySQLDatabase): The MySQL database connection.
        FID (str): The Frage ID.

    Returns:
        str: A string representing the file path of the graphic.
    """
    query2 = "SELECT GrafikName from Grafiken join FrageGrafik FG on Grafiken.GrafikID = FG.GID WHERE " \
             "FID = " + FID
    result2 = db.execute_query(query2)
    return "graphics/" + result2[0][0]


# Function to draw on an image using a PainDrawingApp
def drawOnImage(dB, FID):
    """
    Opens a drawing application for the user to draw on a specified image.

    Args:
        db (MySQLDatabase): The MySQL database connection.
        FID (str): The Frage ID.
    """
    root = Tk()
    app = PainDrawingApp(root, getGraphicsFilePath(db, FID))
    root.mainloop()

    if app.closed_flag:
        ...


if __name__ == "__main__":
    # Connecting to the MySQL database
    db = MySQLDatabase(user='root', password='', database='Fragenkatalog')
    db.connect()

    # Example query
    rslt = []
    query = "SELECT * FROM fragen"
    result = db.execute_query(query)
    if result:
        for row in result:
            aw = ""
            eingabetyp = row[3]
            if eingabetyp == "Speech":
                aw = input(row[1] + " ")
            elif eingabetyp == "Single Choice":
                frage = row[1] + getNrOfOptions(db, str(row[0]))
                aw = input(frage + " ")
            elif eingabetyp == "Drawing":
                drawOnImage(db, str(row[0]))
                continue
            else:
                continue

            rslt.append((str(row[0]), row[1], aw, row[2]))

    # Disconnecting from the database
    db.disconnect()

    fragen = ""
    antworten = ""
    antwortschablonen = ""

    for r in rslt:
        fragen = fragen + r[0] + "." + r[1] + ", "
        antworten = antworten + r[0] + "." + r[2] + ", "
        antwortschablonen = antwortschablonen + r[0] + "." + r[3] + ", "

    # Initializing VertexAI
    AI = VertexAI()

    # Generating chat-based responses using VertexAI
    x = AI.chatFragen(fragen, antwortschablonen, antworten)

    # Generating the final prompt for the user
    finalPrompt = "Du bist ein Chatbot, der dazu dient, eine standardisierte Anamnese zu erheben und anschließend " \
                  "eine Zusammenfassung der Antworten für den Arzt zu schreiben. Es wurden folgende Antworten vom " \
                  "Patienten gegeben: '" + x + "' Fasse die Antworten zusammen, sodass eine sinnvolle Zusammenfassung für " \
                                               "den Arzt entsteht. Lasse dabei keine Informationen weg und füge auch " \
                                               "keine Antworten hinzu aus früheren Anfragen und denk dir keine Antworten " \
                                               "aus! "

    # Printing the summary response from VertexAI
    print(AI.singlePrompt(finalPrompt))
