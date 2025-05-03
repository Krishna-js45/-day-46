Future<void> sendData() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'title': 'Hello',
      'body': 'This is a test',
      'userId': 1,
    }),
  );

  if (response.statusCode == 201) {
    print('Data sent successfully!');
    print('Response: ${response.body}');
  } else {
    print('Failed to send data');
  }
}
