# Flutter-Clean-Architecture
🚀 A Flutter project demonstrating Clean Architecture principles with GetX for state management, dependency injection, and routing.

## Creating a New Feature

To create a new feature, follow these steps:

### 1. Run the Command to Generate the Folder Structure

Use the following command in your terminal to generate the folder structure for a new feature. Replace `<feature_name>` with the name of your feature (e.g., `feature_b`):

```bash
mkdir -p features/<feature_name>/{data/{datasources,models,repositories},domain/{entities,repositories,usecases},presentation/{controllers,views,widgets}}

# Core Directory

The `core` directory contains shared functionality and utilities that are used across the entire application. This includes controllers, services, error handling, network utilities, and reusable use cases.

## Structure

- **controllers/**: Shared controllers (e.g., `ThemeController`, `AuthController`).
- **services/**: Shared services (e.g., `NavigationService`, `LocalStorageService`).
- **error/**: Custom error handling (e.g., exceptions, error messages).
- **network/**: Network-related utilities (e.g., API clients, interceptors).
- **usecases/**: Reusable business logic (e.g., shared use cases).

## Usage

- **Controllers**: Use these for shared state management or app-wide functionality.
- **Services**: Use these for shared services like navigation, storage, or API calls.
- **Error**: Use this for custom error handling and exceptions.
- **Network**: Use this for API calls, interceptors, and network utilities.
- **Usecases**: Use these for reusable business logic that can be shared across features.

Command to Generate the Folder Core

```bash
mkdir -p core/{controllers,services,error,network,usecases}