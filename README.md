
# Fuchsia Shell

**Fuchsia** is an interactive, lightweight, and modular Unix shell written entirely in **Glang**.

Designed for speed and simplicity, Fuchsia offers a unique command dispatch system where shell logic is distributed across modular Glang files, making it incredibly easy to extend and customize.

![Version](https://img.shields.io/badge/version-1.2__2-blue)
![Language](https://img.shields.io/badge/Glang-5.7.6-red)
![Based on](https://img.shields.io/badge/Written_In-G-purple)
> because github still not support G as programming language, it show GAP in language.

## 🚀 Features

*   **Pure Glang:** 100% of the shell logic is written in Glang, demonstrating the language's capabilities for system scripting.
*   **Modular Architecture:** Commands are handled by external `.g` files rather than monolithic code blocks.
*   **Custom Dispatch System:** Uses a unique `lxd` (Load & Execute) and `fcd` (Fallback & Dispatch) mechanism to route commands efficiently.
*   **Interactive Math/Threading:** Built-in commands for immediate calculations and threaded operations (`*th`, `*edward`).
*   **Tiny Footprint:** Inherits the lightweight nature of the Glang interpreter.

## 📸 Screenshot

![Fuchsia Shell Screenshot](github_ba)

## 🛠️ Installation

### Prerequisites
You need the **Glang** interpreter (v5.7.6 or higher) installed on your system.

### Setup
1.  Clone this repository:
    ```bash
    git clone https://github.com/pouyathe/fuchsia.git
    cd fuchsia
    ```
2.  Ensure the Glang interpreter is in your PATH.
3.  Ensure the Flex is in your PATH.
4.  Fuchsia use siglib to manage exits & outs, ensure siglib is installed in your system.
5.  Run the shell:
    ```bash
    sudo flex add siglib # ensure you insatlled siglib.
    sudo flex build
    ```
    *(Note: You can also create an alias in your `.bashrc` or `.zshrc` to run `fuchsia` directly).*

## 💻 Usage

Once inside the shell, you will see the `.fua>` prompt.

### Basic Commands
*   `.ef <expression>`: Evaluate or print a value.
*   `fuchc`: Compile Glang files (invoke the compiler).
> funhc see have some bugs i working on it!
### System Operations
*   `*th <value>`: Perform a thread operation or calculation.
*   `*th + <value>`: Add to the current thread value.
*   `*exit`: Exit the shell.

### Information
*   `.ef ~.version`: Display the current version of Fuchsia.
*   `.ef ~*.int`: Display the current global integer value.

## 🏗️ Architecture & Internals

Fuchsia operates on a unique modular loop defined in `src/main.g`.

### The Dispatch Cycle
1.  **Input:** The shell waits for user input via `get_n`.
2.  **Matching:** It compares the input against defined flags (e.g., checking if input equals `"*th 1"`).
3.  **Routing:**
    *   If the flag matches (**1**), it executes **`lxd`** (Load & eXecute Dispatch) to run the corresponding Glang file for that command.
    *   If no flags match (**0**), it executes **`fcd`** (Fallback Control Dispatch) to load the `unknwoncommend` handler.
4.  **Loop:** The shell resets and prints the prompt again (`tonext .ef`).

This architecture allows users to add new commands to Fuchsia simply by dropping new `.g` files into the `/usr/flex/fuchsia/` directory and updating the routing logic in `main.g`.

## Contributing

Fuchsia is open source! Feel free to submit issues, fork the repository, and create pull requests.

## Acknowledgments

*   Built with **[Glang](https://github.com/pouyathe/glang)**
*   Created by **Pouya Mohammadi**details
*   Special thanks to the D Language community for the tools that power Glang.

## License

This project is licensed under the GPL-3.0 License - see the [LICENSE](LICENSE) file for details
