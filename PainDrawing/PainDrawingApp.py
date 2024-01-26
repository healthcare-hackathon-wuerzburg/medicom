from pathlib import Path
from tkinter import *
from PIL import Image, ImageTk
import io

from PainDrawing.DrawingCanvas import DrawingCanvas
from PainDrawing.ColorManager import ColorManager

def set_drawing_color():
    """
    Sets the drawing color using the ColorManager.
    """
    ColorManager.set_drawing_color()

class PainDrawingApp:
    def __init__(self, root, image_path):
        """
        Initializes a PainDrawingApp instance.

        Args:
            root (Tk): The Tkinter root window.
            image_path (str): The path to the image file.
        """
        self.closed_flag = False
        self.drawing_canvas = None
        self.root = root
        self.root.geometry("572x800")
        self.filename = Path(image_path).name
        self.setup_ui(image_path)

    def setup_ui(self, image_path):
        """
        Sets up the user interface for the PainDrawingApp.

        Args:
            image_path (str): The path to the image file.
        """
        self.drawing_canvas = DrawingCanvas(self.root, image_path)

        save_button = Button(self.root, text="Save Image", command=self.save_image)
        save_button.pack(side=RIGHT, padx=5)

        clear_button = Button(self.root, text="Clear Drawing", command=self.clear_drawing)
        clear_button.pack(side=LEFT, padx=5)

        blue_button = Button(self.root, text="Change Drawing Color", command=set_drawing_color)
        blue_button.pack(side=BOTTOM, pady=1, anchor='s')

        self.root.protocol("WM_DELETE_WINDOW", self.on_close)

    def on_close(self):
        """
        Handles the window close event by setting the closed flag to True and destroying the root window.
        """
        self.closed_flag = True
        self.root.destroy()

    def save_image(self):
        """
        Saves the drawing canvas as an image file and closes the window.
        """
        ps = self.drawing_canvas.postscript(colormode='color')
        img = Image.open(io.BytesIO(ps.encode('utf-8')))
        img.save("output/"+self.filename)
        self.on_close()

    def clear_drawing(self):
        """
        Clears the drawing canvas.
        """
        self.drawing_canvas.clear_drawing()
