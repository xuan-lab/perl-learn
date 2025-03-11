# Perl Learning Project

## Overview
This project is designed to help you learn Perl programming through a structured approach. It covers core features, basic syntax, and advanced concepts, as well as applications of Perl in machine learning.

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

1. **Clone the Repository**: 
   ```
   git clone <repository-url>
   cd perl-learn
   ```

2. **Install Dependencies**: 
   Use `cpanm` to install the required Perl modules listed in the `cpanfile`.
   ```
   cpanm --installdeps .
   ```

3. **Explore the Code**: 
   Navigate to the `src` directory to explore the various scripts and learn from them.

4. **Run Examples**: 
   You can run the example scripts located in the `examples` directory to see practical applications of Perl.

5. **Test the Code**: 
   Run the unit tests in the `tests` directory to ensure everything is working correctly.
   ```
   perl tests/unit_tests.pl
   ```

## Usage
Each script in the `src` directory is designed to be run independently. You can execute them using the Perl interpreter. For example:
```
perl src/basics/hello_world.pl
```

## Contributing
Contributions are welcome! If you have suggestions for improvements or additional features, feel free to submit a pull request.

## License
This project is open-source and available under the MIT License.