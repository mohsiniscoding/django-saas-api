# django-saas-api

This repository is maintained by [Mohsin Raza](https://www.github.com/mohsiniscoding) 

## Table of Contents
- [Overview](#overview)
- [Pre-requisites](#pre-requisites)
- [Run development server](#run-development-server)
- [Setup development environment](#setup-development-environment)
- [Run tests](#run-tests)
- [Deployment on Heroku](#deployment-on-heroku)


### Overview

Opinionated Django API for SaaS applications, it is designed to be a starting point for new SaaS projects, it contains the following features:
- User Authentication && Authorization [TODO]
- Organization Management [TODO]
- Role Based Access Control [TODO]
- Stripe Integration [TODO]
- Email notifications using MailTrap [TODO]

### Pre-requisites

- Python 3.11.0 ([See Install Guide](https://www.python.org/downloads/))
- Peotry 1.8.2  ([See Install Guide](https://python-poetry.org/docs/#installation))
- Docker 25.0.3 ([See Install Guide](https://docs.docker.com/get-docker/))

### Run development server
The following commands will start the development server on `http://localhost:8000` it supports hot-reloading so any changes made to the code will be reflected immediately.
1. Clone the repository
```bash
git clone https://github.com/mohsiniscoding/django-saas-api.git
```
2. Change directory to the project root
```bash
cd django-saas-api
```
3. Run the development server

```bash
docker compose up --build
```

### Setup development environment
The project uses `poetry` for dependency management, upon cloning the repository, you can install the dependencies using the following command:
```bash
poetry install
```
This will create a virtual environment and install all the dependencies. Next time you can activate the virtual environment using the following command: [See Poetry Commmands](https://python-poetry.org/docs/cli/)
```bash
poetry shell
```

### Run tests
TODO    

### Deployment on Heroku
TODO

### API Documentation
TODO

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details



