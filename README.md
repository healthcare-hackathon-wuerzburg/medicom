# iDocBot

## Problem Statement

Medical practitioners face a significant time challenge in conducting comprehensive patient evaluations due to overcrowded outpatient clinics. The extensive process of gathering patients' biological, psychological, social, and economic backgrounds, coupled with documenting previous pharmaceutical interventions, limits the time available for meaningful discussions about illnesses and treatments. This bottleneck hinders the overall quality of patient-doctor interactions and compromises the efficiency of healthcare delivery.

## Idea

Introducing iDocBot, an intelligent chatbot to streamline initial patient assessments. Patients, equipped with a headset and tablet, interact with iDocBot in the waiting room or even at home, answering predefined questions about symptoms, medications, and history. iDocBot provides a summarized overview for physicians, enhancing efficiency and facilitating focused consultations.

## Getting Started

This section describes the requirements of the project and how to get started.

### Requirements

List all requirements here

- Python
- Database server or localhost (mysql database)
- tkinter (for GUI components in Python)
- Pillow (for working with images in Python)
- vertexai (for interacting with googles Vertex AI models)
- pathlib (for working with file paths in Python)
- mysql-connector-python (for connecting with MySQL databases in Python)

### Installation

Describe, how to install the project, like:

1) clone the repository via `git clone ...`
2) install libraries via `pip install -r requirements.txt`
3) setup server or localhost for database
4) update login information in MySQLDatabase.py
5) create api key for Google Vertex AI
6) in terminal: `./google-cloud-sdk/bin/gcloud init`
7) login to google account
8) in terminal: `./google-cloud-sdk/bin/gcloud auth application-default login`
9) update api key (project_id) in VertexAI.py
10) launch main.py

## How to use the Project 

The project, especially the database, is highly modular and can be extended by questions of different medical fields. Each question has to be provided with an answer scheme which the Vertex AI will receive to interpret the patients answer. The input method has to be specified as well.

## Deployment

End goal for this project is a mobile application that has speech input and output and can be used by patients in doctors offices or at home on their own mobile device.

## Project Overview

Database:

Table Fragen: Contains all questions, answer scheme, input method

Table Grafiken: Contains graphics and their respectable name

Table Themenbereiche: Contains medical fields, currently only questions for pain clinic

Table FrageGrafik: Connects Graphic to their respectable question

Table FragenChoices: Contains Question IDs for all single choice questions as well as the number of choices

Table NextFrageWennFalse: Sometimes questions can be left out when certain conditions are met, currently not used

Table ThemenbereichFragen: Connects medical field and the questions applicable to this field, currently not used


View documentation in .py files for more information.

## How to Contribute

Describe, how new team members can contribute to the existing repository, like:

1) clone the repository
2) work on a dedicated branch for your feature `git branch -b feature_name`
3) create a pull request for the feature and document the changes accordingly
4) you have to write tests in order to get your PR merged
5) send changes against `main` branch

## Additional Information

Works perfect on Macbook, don't know about other devices.

Project created as part of Healthcare Hackathon.

## Useful links:

- [Most common Git commands](https://rogerdudler.github.io/git-guide/index.de.html)
- [How to create a GitHub Release](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)
- [Vertex AI](https://cloud.google.com/vertex-ai?hl=de)
