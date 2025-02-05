Jaun van Heerden 2024

## Development Environment Setup

This project uses a VSCode devcontainer for a consistent development setup. 

It has [Python 3.12](https://www.python.org/), [Bowtie 2](https://bowtie-bio.sourceforge.net/bowtie2/manual.shtml) and [Subread](https://subread.sourceforge.net/).

Follow these steps to get started:

### Prerequisites
- Install [Docker](https://www.docker.com/get-started)
- Install [Visual Studio Code](https://code.visualstudio.com/)
- Install the [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) for VSCode.

### Starting the Devcontainer
1. Clone this repository:
   ```bash
   git clone https://github.com/jaun-van-heerden/bowtie2-subread-dev-container.git
   ```

2. Open VSCode and navigate to `File > Open Folder...` and select the cloned project folder.

3. When prompted by VSCode, click on `"Reopen in Container"` or open the command palette (`Ctrl+Shift+P`) and select `"Remote-Containers: Reopen in Container"`.