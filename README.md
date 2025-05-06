# LaTeX Live Preview Environment

This project provides a Docker-based LaTeX environment with real-time compilation and preview capabilities.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone this repository
2. Navigate to the project directory
3. Run the following command to start the environment:

```bash
docker-compose up --build
```

4. Open your browser and navigate to `http://localhost:8080` to see the live preview
5. Edit the `workspace/main.tex` file to make changes to your document
6. The PDF will be automatically recompiled when you save changes

## Features

- Real-time LaTeX compilation
- Live PDF preview
- Full LaTeX support with all necessary packages
- Persistent workspace through Docker volumes

## Project Structure

- `workspace/` - Contains your LaTeX documents
- `Dockerfile` - Defines the LaTeX environment
- `docker-compose.yml` - Configuration for the Docker container

## Tips

- The PDF will be automatically recompiled when you save changes to your .tex file
- You can add additional LaTeX packages by editing the Dockerfile
- Your workspace is persisted in the `workspace` directory 

## Acknowledgments

Special thanks to [Patrik Kozlik](https://github.com/orgs/RAMPsmartAIm/people/0Kozlik0) for creating the Dockerfile and project structure.
