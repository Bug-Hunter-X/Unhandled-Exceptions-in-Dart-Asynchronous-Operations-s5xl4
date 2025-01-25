# Unhandled Exceptions in Dart Asynchronous Operations

This repository demonstrates a common error in Dart: insufficient handling of exceptions within asynchronous operations using `Future`s and `async`/`await`.  The example shows a function that fetches data from a remote API.  The `try-catch` block handles exceptions during the API call, but only prints the error.  This is insufficient; a better approach would be to propagate the error upwards or handle it more gracefully to prevent app crashes.

## How to Reproduce

1. Clone this repository.
2. Run the `bug.dart` file.
3. Simulate a network error (e.g., by turning off your internet connection) to trigger the exception.
4. Observe the error message printed to the console.  The app may not gracefully handle the failure.

## Solution

The `bugSolution.dart` file demonstrates improved error handling. Instead of simply printing the error, the exception is re-thrown. This allows calling functions to handle the error appropriately.