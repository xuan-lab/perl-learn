
## Project Structure
The project is organized into several directories:

- **src**: Contains the source code for basic and advanced Perl concepts, as well as machine learning applications.
  - **basics**: Fundamental Perl scripts demonstrating basic syntax and concepts.
  - **advanced**: More complex topics including regular expressions, file handling, modules, and object-oriented programming.
  - **ml**: Scripts focused on data processing, statistics, and machine learning algorithms.

- **lib**: Contains utility modules that can be reused across different scripts.

- **data**: Includes sample datasets for practice.

- **examples**: Provides example scripts demonstrating various applications of Perl.

- **tests**: Contains unit tests to ensure the reliability of the code.

- **cpanfile**: Lists the Perl module dependencies for the project.

- **.gitignore**: Specifies files and directories to be ignored by Git.

## Getting Started
To get started with this project, follow these steps:

1. **Install Dependencies**: 
   Use `cpanm` to install the required Perl modules listed in the `cpanfile`.
   ```
   cpanm --installdeps .
   ```

2. **Explore the Code**: 
   Navigate to the `src` directory to explore the various scripts and learn from them.

3. **Run Examples**: 
   You can run the example scripts located in the `examples` directory to see practical applications of Perl.

4. **Test the Code**: 
   Run the unit tests in the `tests` directory to ensure everything is working correctly.
   ```
   perl tests/unit_tests.pl
   ```

## Usage
Each script in the `src` directory is designed to be run independently. You can execute them using the Perl interpreter. For example:
```
perl src/basics/hello_world.pl
```