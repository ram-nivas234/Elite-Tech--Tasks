# 🚀 DevOps Project Overview

This repository demonstrates multiple **DevOps practices**, including
version control, CI/CD pipelines, containerization, and secure DevOps
integrations.

------------------------------------------------------------------------

## 📘 Task 1 - Version Control with Git

This task demonstrates **Git version control**, including repository
setup, branch creation, merging, conflict occurrence, and resolution.

### ✅ Steps Performed

1.  **Initialize Repository**

    ``` bash
    git init task
    cd task
    echo "print('Hello from master branch')" > app.py
    git add .
    git commit -m "Initial commit with app.py"
    ```

2.  **Create Feature Branches**

    -   🟢 Feature 1

        ``` bash
        git checkout -b feature-1
        echo "print('Feature 1 code')" >> app.py
        git commit -am "Added feature 1"
        ```

    -   🟠 Feature 2

        ``` bash
        git checkout master
        git checkout -b feature-2
        echo "print('Feature 2 code')" >> app.py
        git commit -am "Added feature 2"
        ```

3.  **Merge Branches into Master**

    -   Merge feature-1:

        ``` bash
        git checkout master
        git merge feature-1
        ```

    -   Merge feature-2:

        ``` bash
        git merge feature-2
        ```

4.  **Conflict Resolution**

    -   Conflict in `app.py`:

        ``` python
        <<<<<<< HEAD
        print('Feature 1 code')
        =======
        print('Feature 2 code')
        >>>>>>> feature-2
        ```

    -   ✅ Resolved to:

        ``` python
        print('Hello from master branch')
        print('Feature 1 code')
        print('Feature 2 code')
        ```

    -   Commit resolution:

        ``` bash
        git add app.py
        git commit -m "Resolved merge conflict between feature-1 and feature-2"
        ```

------------------------------------------------------------------------

## ⚙️ Task 2 - CI/CD Pipeline with GitHub Actions

Implemented a CI/CD pipeline for **linting and testing**.

### 🔧 Pipeline Details:

-   Triggers on **push** and **pull_request**.
-   Sets up **Python environment & dependencies**.
-   Runs **flake8** for linting.
-   Executes **pytest** for testing.

------------------------------------------------------------------------

## 🐳 Task 3 - Dockerization

Dockerized the Python application using a **Dockerfile**.

### 📝 Steps Performed:

1.  Created a **Dockerfile** with Python base image.

2.  Installed dependencies from `requirements.txt`.

3.  Copied `app.py` and exposed port **5000**.

4.  Built and ran the container:

    ``` bash
    docker build -t myapp .
    docker run -p 5000:5000 myapp
    ```

------------------------------------------------------------------------

## 🔐 Task 4 - Secure DevOps Practices

Integrated **security scanning tools** in CI/CD for DevSecOps.

### 🛡️ Tools Used:

-   **SonarQube** → Static Application Security Testing (SAST).
-   **OWASP ZAP** → Dynamic Application Security Testing (DAST).

### 📊 Pipeline Deliverables:

-   GitHub Actions config includes **SonarQube + OWASP ZAP** steps.
-   **Security reports generated automatically**.

------------------------------------------------------------------------

## 📌 Summary

-   **Task 1** → Demonstrated Git version control with branching,
    merging, and conflict resolution.\
-   **Task 2** → Implemented GitHub Actions pipeline with linting &
    testing.\
-   **Task 3** → Dockerized Python app for containerized deployment.\
-   **Task 4** → Added DevSecOps tools (SonarQube + OWASP ZAP) into
    CI/CD for secure development.

------------------------------------------------------------------------

🚀 *This project showcases an end-to-end DevOps workflow integrating
Git, CI/CD, Docker, and Security best practices.*
