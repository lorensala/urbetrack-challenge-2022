/// Returns the id from the url
///
/// Returns -1 if the url is invalid
/// Return the id if the url is valid
int getIdFromUrl(String url) {
  final uri = Uri.parse(url);
  final segments = uri.pathSegments;

  if (segments.isEmpty) {
    return -1;
  }
  final id = segments[2];
  return int.tryParse(id) ?? 0;
}

int getPageFromQueryParams(String url) {
  final uri = Uri.parse(url);
  final page = uri.queryParameters['page'];
  return int.tryParse(page ?? '') ?? -1;
}
