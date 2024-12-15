# Portfolio

[![Ruff](https://github.com/Sn1F3rt/Portfolio/actions/workflows/ruff.yml/badge.svg)](https://github.com/Sn1F3rt/Portfolio/actions/workflows/ruff.yml)
[![License](https://img.shields.io/github/license/Sn1F3rt/Portfolio)](LICENSE)

## Table of Contents

- [About](#about)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Running](#running)
  - [Development](#development)
  - [Production](#production)
- [Credits](#credits)
- [License](#license)

## About

This repository contains the source code for my personal portfolio website. The application is built using `Quart` for the backend and `Jinja2` for the frontend.

## Prerequisites

- Git
- Python 3.8 or higher (tested on 3.12)
- [uv](https://docs.astral.sh/uv/)

## Installation

1. Clone the repository

   ```shell
   git clone https://github.com/Sn1F3rt/Portfolio.git
   ```
   
2. Switch to the project directory

   ```shell
   cd Portfolio
   ```
   
3. Create a virtual environment

   ```shell
   uv venv # or make env
   ```
4. Install the dependencies

   ```shell
   uv sync --no-dev # or make install
   ```

## Configuration

Copy the [`config.example.py`](config.example.py) file to `config.py` and update the variables.

## Running

### Development

```shell
uv run launcher.py # or make dev
```

### Production

```shell
hypercorn [--certfile <path-to-certificate-file> --keyfile <path-to-key-file> --bind 0.0.0.0:<port>] launcher:app
```

## Credits

Thanks to [@bedimcode](https://github.com/bedimcode/) for the original design idea. 

## License

[Creative Commons Zero v1.0 Universal](LICENSE)

Copyright &copy; 2024 Sayan "Sn1F3rt" Bhattacharyya
