```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // ...
    } else {
      // Handle non-200 status codes appropriately, perhaps throw a custom exception
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // Handle specific network errors separately
    print('Network error: $e');
    rethrow;
  } catch (e) {
    // Handle other potential exceptions
    print('An unexpected error occurred: $e');
    rethrow; // Re-throw to allow higher-level handling
  }
}
```