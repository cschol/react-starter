# Development Container Configuration

This folder ([.devcontainer](.devcontainer)) contains configuration files for setting up a **Development Container (devcontainer)** using [Visual Studio Code Remote - Containers](https://code.visualstudio.com/docs/remote/containers) or [GitHub Codespaces](https://docs.github.com/en/codespaces).

## Purpose

A devcontainer provides a consistent, reproducible development environment for all contributors, regardless of their local setup. It ensures that everyone works with the same versions of Node.js, system libraries, and development tools, reducing "works on my machine" issues.

## What's Included

- **[Dockerfile](.devcontainer/Dockerfile):**  
  Defines a custom Docker image based on Debian Bullseye with Node.js, Zsh, Oh My Zsh, Git, and other common development tools pre-installed.
- **[devcontainer.json](.devcontainer/devcontainer.json):**  
  Configures how VS Code or Codespaces launches the container, installs recommended extensions, sets up environment variables, forwards ports, and runs post-creation commands.

## How to Use

1. **Open in VS Code:**  
   Open the project folder in [Visual Studio Code](https://code.visualstudio.com/).

2. **Reopen in Container:**  
   If you have the [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) installed, click the green bottom-left corner button and select  
   _"Reopen in Container"_.

3. **Automatic Setup:**  
   VS Code will build the Docker image, install dependencies, and set up the environment as defined in the devcontainer files.

4. **Start Developing:**  
   Once the container is ready, you can run, debug, and test your code as usual. All recommended extensions and tools will be available inside the container.

## Customization

- **Add more tools:**  
  Modify the [Dockerfile](.devcontainer/Dockerfile) to install additional packages or global npm modules.
- **Change settings:**  
  Update [devcontainer.json](.devcontainer/devcontainer.json) to adjust forwarded ports, environment variables, or VS Code settings.

## Benefits

- Consistent environment for all contributors
- Easy onboarding for new developers
- Isolated from your local machine
- Pre-installed tools and extensions

---

For more information, see the [VS Code Dev Containers documentation](https://code.visualstudio.com/docs/remote/containers)