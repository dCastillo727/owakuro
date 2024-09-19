enum MyLibraries {
  core('dart:core'),
  owakuro('package:owakuro/owakuro'),
  ;

  final String path;

  const MyLibraries(this.path);

  Uri get uri => Uri.parse(path);
}
