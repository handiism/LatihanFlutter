import "dart:io";

void main() {
  {
    // - Membuat kalimat dari beberapa Variabel
    print("- Membuat kalimat dari beberapa Variabel".toUpperCase());
    var pertama = "Flutter";
    var kedua = "is";
    var ketiga = "awesome";
    print("$pertama $kedua $ketiga");
    print("");
  }

  {
    // - Mengakses kalimat dalam String
    print("- Mengakses kalimat dalam String".toUpperCase());
    var kalimat = "Belajar Flutter";
    var contoh = kalimat[2] + kalimat[3];
    var kata = kalimat.split(" ");
    print("Contoh: ${contoh}");
    print("Kata 1: ${kata[0]}");
    print("Kata 2: ${kata[1]}");
    print("");
  }

  {
    // - Input dan Output
    print("- Input dan Output".toUpperCase());
    stdout.write("Masukkan nama depan: ");
    String? namaDepan = stdin.readLineSync();
    stdout.write("Masukkan nama belakang: ");
    String? namaBelakang = stdin.readLineSync();
    print("Nama lengkap : ${namaDepan} ${namaBelakang}");
    print("");
  }

  {
    // - Membuat segitiga siku-siku (loop)
    print("- Membuat segitiga siku-siku (loop)".toUpperCase());
    for (var i = 0; i < 4; i++) {
      print("*" * (i + 1));
    }
    print("");
  }

  {
    // - Loop dan Conditional
    print("- Loop dan Conditional".toUpperCase());
    for (var i = 0; i < 20; i++) {
      if ((i + 1) % 3 == 0 && (i + 1) % 2 == 0) {
        print("${i + 1} - Skip");
      } else if ((i + 1) % 2 == 0) {
        print("${i + 1} - Genap");
      } else {
        print("${i + 1} - Ganjil");
      }
    }
    print("");
  }

  {
    // - Buatlah Fungsi menampilkan tulisan "Selamat Malam"
    print('- Buatlah Fungsi menampilkan tulisan "Selamat Malam"'.toUpperCase());
    var greet = () => print("Selamat malam");
    greet();
    print("");
  }

  {
    // - Buatlah Fungsi dengan parameter(nama, hobby)
    print("- Buatlah Fungsi dengan parameter(nama, hobby)".toUpperCase());
    var perkenalan = (String nama, String hobby) =>
        "Nama saya ${nama}, saya memiliki hobby ${hobby}";
    print(perkenalan("Handi", "memancing"));
  }
}
