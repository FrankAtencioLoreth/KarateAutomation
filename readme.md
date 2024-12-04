# KarateAutomation

This project is a demonstration of a unified automation framework using the [Karate framework](https://github.com/karatelabs/karate). It combines API testing and UI testing into a single, efficient structure. KarateAutomation leverages Karate's built-in support for writing tests in Gherkin syntax, making it easy to create and maintain robust automated tests.

## Features

- **API Testing**: Automate REST API validations with minimal setup.
- **UI Testing**: Perform browser-based UI testing using Karate's integrated capabilities.
- **Unified Framework**: Seamlessly handle both API and UI testing in the same environment.
- **Parallel Execution**: Optimize test execution with built-in support for parallel runs.
- **Data-Driven Testing**: Supports external data sources (e.g., JSON, CSV) for reusable test scenarios.

## Technologies Used

- **Java**: Programming language.
- **Karate Framework**: For API and UI automation.
- **Maven**: Build and dependency management tool.
- **Gherkin**: Syntax for writing human-readable tests.

## Prerequisites

- Java Development Kit (JDK) 8 or higher.
- Apache Maven installed on your system.

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/FrankAtencioLoreth/KarateAutomation.git
   ```
2. Install dependencies and build the project:
    ```bash
     gradle clean build
    ```
## Running Tests

Run all tests:
   ```bash
     gradle clean test
   ```
Run a specific feature file:
   ```bash
      gradle clean test -Dkarate.options="classpath:features/example.feature"
   ```
Run tests with a specific tag:
 ```bash
      gradle clean test -Dkarate.options="--tags @exampleTag"
   ```
## Structure
```bash
KarateAutomation/
├── src/
│   ├── test/
│   │   ├── java/             # Java classes for configuration and utilities
│   │   ├── resources/        # Contains feature files and test data
│   │   │   ├── features/     # Karate feature files
│   │   │   ├── data/         # External data sources (e.g., JSON, CSV)
├── build.gradle              # Gradle configuration file
```


## Reporting
Test execution generates detailed reports in the target/karate-reports directory. These reports provide insights into test results and any failures.