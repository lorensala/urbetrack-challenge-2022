import 'package:flutter/rendering.dart';

const kBaseUrl = 'https://swapi.dev/api';
const kSightingUrl = 'https://jsonplaceholder.typicode.com/posts';
const kAssetsSvgPath = 'assets/svg';
const kAssetsLottiePath = 'assets/lottie';

const kConnectionKey = '__connection__';
const kIsDarkKey = '__isDark__';

const kPagePadding = EdgeInsets.all(16);
const kBorderRadius = BorderRadius.all(Radius.circular(8));

class Failure {
  final String message;

  Failure([this.message = 'Something went wrong']);
}

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

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
  final id = segments[2];
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
