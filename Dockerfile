FROM debian:bullseye-slim

# Configure apt to retry downloads
RUN echo 'Acquire::Retries "3";' > /etc/apt/apt.conf.d/80-retries

# Install basic tools first
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install core LaTeX packages
RUN apt-get update && apt-get install -y \
    texlive-base \
    texlive-latex-base \
    && rm -rf /var/lib/apt/lists/*

# Install recommended LaTeX packages
RUN apt-get update && apt-get install -y \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    && rm -rf /var/lib/apt/lists/*

# Install extra LaTeX packages and language support
RUN apt-get update && apt-get install -y \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-xetex \
    texlive-lang-european \
    texlive-bibtex-extra \
    biber \
    latexmk \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js and npm for live preview server
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g live-server

# Create working directory
WORKDIR /workspace

# Expose port for live preview
EXPOSE 8080

# Start live server
CMD ["live-server", "--port=8080", "--no-browser"] 