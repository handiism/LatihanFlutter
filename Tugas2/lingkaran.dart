import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  late double _radius;

  Lingkaran(double radius) {
    this._radius = radius;
  }

  double get getRadius {
    return this._radius;
  }

  set setRadius(double radius) {
    this._radius = radius;
  }

  @override
  double luas() {
    return super.phi * _radius * _radius;
  }

  double keliling() {
    return 2 * super.phi * _radius;
  }
}
