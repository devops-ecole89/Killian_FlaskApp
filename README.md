# Flask Application - CI/CD Project

This repository contains a Flask application with basic functionality and integrated unit tests. It is designed to demonstrate a simple CI/CD pipeline as part of a DevOps project.

![CI/CD](https://github.com/<your-username>/<your-repo>/actions/workflows/ci-pipeline.yml/badge.svg)
![Docker Build](https://github.com/<your-username>/<your-repo>/actions/workflows/docker-build.yml/badge.svg)

## Features
- Flask-based web application.
- `/` route: Displays a welcome message.
- `/run-tests` route: Executes unit tests programmatically with `pytest`.
- `/version` route: Displays the current application version.

---

## Key Files
- **`main.py`**: The main application file.
- **`addition.py`**: A utility module with a function to add two numbers.
- **`tests/test_addition.py`**: Unit tests for the `addition.py` module.
- **`VERSION`**: Contains the application version.
- **`requirements.txt`**: Lists the dependencies required to run the application.

---

## Getting started
1. Install the dependencies:
    ```bash
      pip install -r requirements.txt
    ```
2. Start the application:
    ```bash
      python main.py
    ```

3. Open your browser and go to:
   - http://127.0.0.1:5000/: Welcome page.
   - http://127.0.0.1:5000/run-tests: Run the tests.

---

## Docker Usage
### Build and Run the Docker Image
To use Docker, you can build and run the application inside a container:

1. Build the Docker image:
    ```bash
    docker build -t flask-app .
    ```

2. Run the container:
    ```bash
    docker run -p 5000:5000 flask-app
    ```

3. Access the application in your browser at :
http://127.0.0.1:5000/


---

### How to test
Run the tests directly using `pytest`:
```bash
  pytest
```

---

### Repository Structure
```bash
/
├── .github/               # GitHub workflows
│   └── workflows/
│       ├── ci-pipeline.yml  # Workflow for CI/CD pipeline
│       ├── docker-build.yml # Workflow for building Docker image
├── main.py               # Main Flask application entry point
├── addition.py           # Utility module for addition
├── tests/                # Unit tests for the application
│   └── test_addition.py
├── VERSION               # Application version file
├── requirements.txt      # Python dependencies
├── Dockerfile            # Docker configuration for the application
└── README.md             # Project documentation    
```

---
### Version
The current application version is: `1.0.0`

### Contributors
Killian: Developer and maintainer of the repository.