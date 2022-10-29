/// Returns the id number from the url
///
/// [url] is the url to parse
///
/// Return the id number if the url is valid
///
/// Returns -1 if the url is invalid
int getIdFromUrl(String url) {
  final uri = Uri.parse(url);
  final segments = uri.pathSegments;

  if (segments.isEmpty) {
    return -1;
  }
  final id = segments[2];
  return int.tryParse(id) ?? 0;
}

/// Returns the page number at the end of the url
///
/// [url] is the url to get the page number from
///
/// Return the page number if the url is valid
///
/// Returns -1 if the url is invalid
int getPageFromUrl(String url) {
  final uri = Uri.parse(url);
  final page = uri.queryParameters['page'];
  return int.tryParse(page ?? '') ?? -1;
}
