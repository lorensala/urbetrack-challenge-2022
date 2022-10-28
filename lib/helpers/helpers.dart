const baseUrl = 'https://swapi.dev/api';

class Failure {
  final String message;

  Failure([this.message = 'Something went wrong']);
}

/// Returns the id from the url
///
/// Returns 0 if the url is invalid
/// Return the id if the url is valid
int getIdFromUrl(String url) {
  final uri = Uri.parse(url);
  final segments = uri.pathSegments;

  if (segments.isEmpty) {
    return 0;
  }
  final id = segments.last;
  return int.tryParse(id) ?? 0;
}

String? getPageFromUrl(String? url) {
  if (url == null) {
    return null;
  }
  final uri = Uri.parse(url);
  final segments = uri.queryParameters;

  if (segments.isEmpty) {
    return '';
  }
  final page = segments['page'];
  return page;
}