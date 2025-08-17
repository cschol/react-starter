# React Starter Project

A modern React starter project built with Vite, TypeScript, and Playwright for testing.

## Features

- ⚡️ [Vite](https://vitejs.dev/) - Lightning fast build tool
- ⚛️ [React](https://react.dev/) - JavaScript library for user interfaces
- 📝 [TypeScript](https://www.typescriptlang.org/) - Type safety and enhanced developer experience
- 🎭 [Playwright](https://playwright.dev/) - Reliable end-to-end testing

## Prerequisites

- Node.js (preferably managed via NVM)
- Git
- [Docker](https://www.docker.com/) (for Development Container)
- [VS Code](https://code.visualstudio.com/) with the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

## Development Container

This project includes a Development Container configuration that provides a consistent, isolated development environment. The container comes pre-configured with:

- Node.js and npm
- Git
- Common development tools
- VS Code extensions for React/TypeScript development
- Playwright dependencies

### Using the Dev Container

1. Install the prerequisites (Docker and VS Code with Dev Containers extension)
2. Clone the repository
3. Open the project in VS Code
4. When prompted "Reopen in Container", click "Yes"
   - Alternatively, press `F1`, type "Reopen in Container", and select the command

VS Code will build the container and set up the development environment automatically. This ensures that:
- All developers use the same development environment
- Dependencies and tools are automatically installed
- Environment variables are consistently set
- VS Code extensions are pre-configured

### Working Outside the Container

For local Playwright development outside of the devcontainer it is necessary to install `node` via `nvm`.

```bash
./install_node.sh
```
