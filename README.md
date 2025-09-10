# GitHub Actions Runner for RISC-V

This repository builds the GitHub Actions runner for RISC-V64 architecture, making it available for anyone to use. This project uses runners provided by [riscvrunners.com](https://www.riscvrunners.com).

> You can get 3000 free minutes/month to run your Github actions by signing up in [riscvrunners.com](https://www.riscvrunners.com).

## Quick Start

### 1. Download the Runner

Download the latest pre-compiled runner from the [releases page](https://github.com/RISC-V-Runners/github-actions-riscv/releases):

```
wget https://github.com/RISC-V-Runners/github-actions-riscv/releases/download/v2.328.0/actions-runner-linux-riscv64-2.328.0.tar.gz
```

### 2. Extract the Runner

Extract the downloaded archive:

```bash
# Create a directory for the runner
mkdir actions-runner && cd actions-runner

# Extract the archive
tar -xzf ../actions-runner-linux-riscv64-2.328.0.tar.gz
```

### 3. Configure the Runner

Configure the runner with your repository:

```bash
# Configure the runner (you'll need a token from GitHub)
./config.sh --url https://github.com/YOUR_USERNAME/YOUR_REPO --token YOUR_TOKEN
```

You can get the configuration token from your repository's `Settings > Actions > Runners > New self-hosted runner` page.

### 4. Run the Runner

Start the runner:

```bash
./run.sh
```

The runner will now be available to execute GitHub Actions workflows on your RISC-V machine.
