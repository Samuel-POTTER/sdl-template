# SDL Template for Mac/Linux

This repository serves as a template for setting up an SDL (Simple DirectMedia Layer) project on Mac and Linux using Premake as the build system.

## Prerequisites

- SDL must be installed on your machine. Use the package manager for your operating system to install SDL. For example:
  - For Mac using Homebrew:
    ```bash
    brew install sdl2
    ```
  - For Linux, use the appropriate package manager for your distribution.

## Getting Started

1. Clone this repository to your local machine.

   ```bash
   git clone https://github.com/Samuel-POTTER/sdl-template.git
   cd sdl-template
   ```

2. Run the provided script to generate the Premake files.

   ```bash
   ./generate_premake.sh
   ```

3. Generate the Makefile using Premake.

   ```bash
   ./premake5 gmake2
   ```

4. Build the project using the generated Makefile.

   ```bash
   make
   ```

5. When the build succeed you can execute your binary.

   ```bash
   ./bin/Debug/NAME
   ```

## Additional Configuration

If you want to use a different build system or IDE, refer to the [Premake Documentation](https://premake.github.io/docs/Using-Premake) for instructions on how to generate project files for various platforms and development environments.

Feel free to customize the project structure and Premake script according to your needs.
