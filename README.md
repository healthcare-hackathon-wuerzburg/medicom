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
6) in terminal: './google-cloud-sdk/bin/gcloud init'
7) login to google account
8) in terminal: './google-cloud-sdk/bin/gcloud auth application-default login
9) update api key (project_id) in VertexAI.py
10) launch main.py

## How to use the Project 

The project,  

## Deployment

Describe, how the project can be deployed (if necessary). How can i spin up a docker container that executes something, how can i move the containers to a server, how can I use the trained ML model, ... (if applicable in your project context).

## Project Overview

Describe how the project is structured. Describe the architecture and the main components (if necessary) and the interaction between these components.

## How to Contribute

Describe, how new team members can contribute to the existing repository, like:

1) clone the repository
2) work on a dedicated branch for your feature `git branch -b feature_name`
3) create a pull request for the feature and document the changes accordingly
4) you have to write tests in order to get your PR merged
5) send changes against `main` branch

## Additional Information

Are there any additional information that are important to understand how this code works?

## Useful links:

- [Most common Git commands](https://rogerdudler.github.io/git-guide/index.de.html)
- [How to create a GitHub Release](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)
