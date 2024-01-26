class ColorManager:
    """
    A simple class managing the drawing color.

    Attributes:
        drawing_color (str): The current drawing color.
    """
    drawing_color = 'red'

    @classmethod
    def set_drawing_color(cls):
        """
        Toggles the drawing color between red and blue.

        This class method is used to set the drawing color to blue if it is currently red, and vice versa.
        """
        cls.drawing_color = 'blue' if cls.drawing_color == 'red' else 'red'
