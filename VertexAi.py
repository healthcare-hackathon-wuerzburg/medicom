import vertexai
from vertexai.language_models import TextGenerationModel, ChatModel, InputOutputTextPair


class VertexAI:
    def __init__(self, project_id='ninth-airship-412312', location='us-central1', temperature=0.2):
        """
        Initializes a VertexAI instance.

        Args:
            project_id (str): The Google Cloud project ID.
            location (str): The location of the VertexAI model.
            temperature (float): The temperature parameter controlling randomness in token selection.
        """
        self.temperature = temperature
        self.project_id = project_id
        self.location = location
        vertexai.init(project=self.project_id, location=self.location)

    def singlePrompt(self, prompt) -> str:
        """
        Generates a single prompt using a Text Generation Model.

        Args:
            prompt (str): The input prompt.

        Returns:
            str: The generated response text.
        """
        # TODO developer - override these parameters as needed:
        parameters = {
            "temperature": self.temperature,
            "max_output_tokens": 1024,
            "top_p": 0.8,
            "top_k": 40,
        }

        model = TextGenerationModel.from_pretrained("text-bison@001")
        response = model.predict(prompt, **parameters)
        return response.text

    def chatFragen(self, fragen, antwortschablonen, antworten) -> str:
        """
        Generates a chat-based response using a Chat Model.

        Args:
            fragen (str): The questions.
            antwortschablonen (str): The answer templates.
            antworten (str): The user's answers.

        Returns:
            str: The generated response text.
        """
        # TODO developer - override these parameters as needed:
        parameters = {
            "temperature": 0.2,
            "max_output_tokens": 1024,
            "top_p": 0.95,
            "top_k": 40,
        }

        chat_model = ChatModel.from_pretrained("chat-bison@001")

        chat = chat_model.start_chat(
            context="Hallo! Ich bin ein Patient beim Arzt. Du bist ein Chatbot, der dazu dient, eine standardisierte "
                    "Anamnese zu erheben und anschließend eine Zusammenfassung der Antworten für den Arzt zu "
                    "schreiben. Es wurden folgende Fragen gestellt: '" + fragen + "' Die jeweiligen Antwortschablonen sind: '" + antwortschablonen + "', wobei %s ersetzt werden soll mit der passenden Antwort und, falls vorhanden, aus '{a,b,c}' jeweils das passende Satzteil a,b oder c ausgewählt werden soll.",
            examples=[
                InputOutputTextPair(
                    input_text="Mein Name ist Erik Lorenz",
                    output_text="P heißt Erik Lorenz",
                ), InputOutputTextPair(
                    input_text="Ich habe keine Kinder",
                    output_text="P hat keine Kinder",
                ), InputOutputTextPair(
                    input_text="Am stärksten sind die Schmerzen nachts, Mittags tut nur ein bisschen weh und beim "
                               "Essen gar nicht.",
                    output_text="P hat vor allem nachts Schmerzen",
                ), InputOutputTextPair(
                    input_text="Ich bin 1 Meter 78 groß.",
                    output_text="P ist 178 cm groß.",
                ),
            ],
        )

        response = chat.send_message(antworten, **parameters)
        return response.text
