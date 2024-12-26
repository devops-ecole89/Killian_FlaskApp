# Flask Application - CI/CD Project

This repository contains a Flask application with basic functionality and integrated unit tests. It is designed to demonstrate a simple CI/CD pipeline as part of a DevOps project.

## Features
- Flask-based web application.
- `/` route: Displays a welcome message.
- `/run-tests` route: Executes unit tests programmatically with `pytest`.
- `/version` route: Displays the current application version.

---

## Files
- **`main.py`**: The main application file.
- **`addition.py`**: A utility module with a function to add two numbers.
- **`tests/test_addition.py`**: Unit tests for the `addition.py` module.
- **`VERSION`**: Contains the application version.
- **`requirements.txt`**: Lists the dependencies required to run the application.

---

## How to Run
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
### How to test
Run the tests directly using `pytest`:
```bash
  pytest
```

---

### Repository Structure
```bash
    /
    ├── main.py               # Flask application
    ├── addition.py           # Utility module
    ├── tests/
    │   └── test_addition.py  # Unit tests
    ├── VERSION               # Application version
    ├── requirements.txt      # Dependencies
    └── README.md             # Documentation
```

---
### Version
The current application version is: `1.0.0`

### Contributors
Killian: Developer and maintainer of the repository.