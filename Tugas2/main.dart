import 'bangun_datar.dart';
import 'lingkaran.dart';
import 'persegi.dart';

void main(List<String> args) async {
  {
    // Buatlah fungsi dengan range yang mengembalikan sebuah
    // list yang berisi angka-angka

    List<int> range(int i, int n) {
      return List<int>.generate(10, (i) => i + 1);
    }

    print(range(1, 10));
  }

  {
    // Buatlah list multidimensi, berisi data-data (ID, Nama,
    // Alamat, Hobi), dan tampilkan semua datanya

    var list = [
      ["001", "Muhammad Handi", "Bantul", "Baerkebun"],
      ["002", "Handi Rachmawan", "Sleman", "Menari"],
      ["003", "Muhammad Rachmawan", "Yogyakarta", "Memasak"],
    ];
    list.forEach((i) => print(i));
  }

  {
    // Ubah procedural ke class beserta setter getter.

    double radius = 7;
    _Lingkaran circle = _Lingkaran(radius);
    print(circle.area());
  }

  {
    // Polymorism dan Constructor
    //  Buatlah class bangun_datar, persegi, lingkaran, dan main.dart
    //  pada bangun_datar mereturn keliling, luas.
    //  pada class persegi, lingkaran akan mengextends bangun_datar.
    //  setelah itu masukkan rumus keliling dan luas.
    //  jangan lupa constructor pada persegi, lingkaran.

    double sisi = 10;
    double radius = 7;
    BangunDatar persegi = Persegi(sisi);
    BangunDatar lingkaran = Lingkaran(radius);
    print("$persegi ${persegi.luas()} ${persegi.keliling()}");
    print("$lingkaran ${lingkaran.luas()} ${lingkaran.keliling()}");
  }

  {
    // Future delay

    // Future.delayed(Duration(seconds: 1), () => print("Nama"));
    // Future.delayed(Duration(seconds: 3), () => print("Handi"));
    // Future.delayed(Duration(seconds: 2), () => print("Saya"));
  }

  {
    // async, await, future

    Future<String?> line1() {
      return Future<String>.delayed(
          Duration(seconds: 1), () => "Pelagi-pelangi alangkah indahmu");
    }

    Future<String?> line2() {
      return Future<String>.delayed(
          Duration(seconds: 2), () => "Merah kuning hijau");
    }

    Future<String?> line3() {
      return Future<String>.delayed(
          Duration(seconds: 1), () => "dilangit yang biru");
    }

    print("Menyanyi, mulai");
    print(await line1());
    print(await line2());
    print(await line3());
  }

  {
    // Buatlah project flutter lalu di push ke github

    // Link
    // https://github.com/handiism/flutter-state-exercise
  }
}

class _Lingkaran {
  final double phi = 3.14;
  late double _radius;

  _Lingkaran(double radius) {
    this._radius = radius;
  }

  double get getRadius {
    return _radius;
  }

  set setRadius(double radius) {
    this._radius = radius;
  }

  double area() {
    return phi * _radius * _radius;
  }
}
