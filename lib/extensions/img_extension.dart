extension ImageExtension on String {
  String get toPng => "lib/assets/img/$this.png";
  String get toAni => "lib/assets/animations/$this.json";
}
