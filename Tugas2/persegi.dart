import 'bangun_datar.dart';

class Persegi extends BangunDatar {
  late double _sisi;

  Persegi(double sisi) {
    this._sisi = sisi;
  }

  double get getSisi {
    return this._sisi;
  }

  set setSisi(double sisi) {
    this._sisi = sisi;
  }

  @override
  double luas() {
    return this._sisi * this._sisi;
  }

  double keliling() {
    return 4 * this._sisi;
  }
}
