from tkinter import *
from PIL import Image, ImageTk

from PainDrawing.ColorManager import ColorManager

class DrawingCanvas(Canvas):
    def __init__(self, parent, image_path):
        """
        Initializes a DrawingCanvas instance.

        Args:
            parent (Tk): The parent Tkinter window.
            image_path (str): The path to the image file.
        """
        super().__init__(parent, bg='black')
        super().pack(anchor='nw', fill='both', expand=1)

        self.image_path = image_path
        self.image = None

        self.bind("<Button-1>", self.get_x_and_y)
        self.bind("<B1-Motion>", self.draw_smth)

        self.after(100, self.load_image)

    def load_image(self):
        """
        Loads and displays the image on the canvas, resizing it to fit the canvas dimensions.
        """
        image = Image.open(self.image_path)
        image = image.resize((572, 764), Image.ANTIALIAS)
        self.image = ImageTk.PhotoImage(image)
        self.create_image(0, 0, image=self.image, anchor='nw')

    def get_x_and_y(self, event):
        """
        Gets the x and y coordinates of the mouse click.

        Args:
            event (Tkinter.Event): The mouse click event.
        """
        self.lasx, self.lasy = event.x, event.y

    def draw_smth(self, event):
        """
        Draws a line on the canvas based on mouse motion.

        Args:
            event (Tkinter.Event): The mouse motion event.
        """
        self.create_line((self.lasx, self.lasy, event.x, event.y), fill=ColorManager.drawing_color, width=2,
                         tags="drawing")
        self.lasx, self.lasy = event.x, event.y

    def clear_drawing(self):
        """
        Clears the drawing on the canvas.
        """
        self.delete("drawing")
