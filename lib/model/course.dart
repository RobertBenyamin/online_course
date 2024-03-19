class Module {
  String image;
  String title;
  String duration;

  Module({
    required this.image,
    required this.title,
    required this.duration,
  });
}

class Course {
  String image;
  String name;
  String description;
  String learn;
  String who;
  String duration;
  double rating;
  double price;
  List<Module> modules;

  Course({
    required this.image,
    required this.name,
    required this.description,
    required this.learn,
    required this.who,
    required this.duration,
    required this.rating,
    required this.price,
    required this.modules,
  });
}

var courseList = [
  Course(
    image: "images/dart.png",
    name: "Belajar Pemrograman Dart",
    description: '''
Kursus Belajar Pemrograman Dart adalah pintu gerbang ke dunia pemrograman modern yang menawarkan pelajar pengenalan komprehensif terhadap bahasa pemrograman Dart. Dart adalah bahasa yang dikembangkan oleh Google dan telah menjadi bahasa yang sangat populer untuk pengembangan aplikasi web, mobile, dan desktop. Dalam kursus ini, Anda akan mendapatkan pemahaman mendalam tentang konsep dasar pemrograman dan bagaimana Dart digunakan untuk membangun aplikasi yang efisien dan andal.
              ''',
    learn: '''
1. Dasar-dasar Pemrograman
2. Bahasa Dart
3. Proyek Praktis
              ''',
    who: '''
- Pemula yang ingin memulai perjalanan dalam pemrograman.
- Pengembang yang ingin memperluas kemampuan mereka dengan memahami bahasa Dart.
- Pengembang aplikasi mobile yang ingin memahami dasar-dasar Flutter.
              ''',
    duration: "20 hours",
    rating: 4.6,
    price: 150000,
    modules: [
      Module(
        image: "images/dart.png",
        title: "Pengenalan Dart",
        duration: "1 hours",
      ),
      Module(
        image: "images/dart.png",
        title: "Sintaksis Dasar Dart",
        duration: "3 hours",
      ),
      Module(
        image: "images/dart.png",
        title: "Paradigma OOP",
        duration: "3 hours",
      ),
      Module(
        image: "images/dart.png",
        title: "Proyek Akhir",
        duration: "6 hours",
      ),
    ],
  ),
  Course(
    image: "images/flutter.png",
    name: "Belajar Flutter Dasar",
    description: '''
Kursus Belajar Flutter Dasar adalah pintu masuk yang sempurna ke dunia pengembangan aplikasi mobile modern menggunakan kerangka kerja Flutter. Flutter, yang dikembangkan oleh Google, telah menjadi salah satu alat yang paling populer dan efisien untuk membangun aplikasi mobile yang menakjubkan dan responsif. Dalam kursus ini, Anda akan memperoleh pemahaman yang kuat tentang dasar-dasar Flutter, sehingga Anda dapat memulai perjalanan Anda dalam mengembangkan aplikasi mobile yang canggih.
              ''',
    learn: '''
1. Pengenalan ke Flutter
2. Pembuatan Antarmuka Pengguna
3. Manajemen State
4. Pembuatan Aplikasi
              ''',
    who: '''
- Pengembang pemula yang ingin memulai perjalanan dalam pengembangan aplikasi mobile.
- Pengembang yang ingin memperdalam pengetahuan mereka tentang Flutter dan pengembangan aplikasi mobile responsif.
- Siapa saja yang ingin menguasai dasar-dasar Flutter untuk membangun aplikasi yang menarik.
              ''',
    duration: "20 hours",
    rating: 4.7,
    price: 150000,
    modules: [
      Module(
        image: "images/flutter.png",
        title: "Pengenalan Flutter",
        duration: "1 hours",
      ),
      Module(
        image: "images/flutter.png",
        title: "Pengenalan Widget",
        duration: "4 hours",
      ),
      Module(
        image: "images/flutter.png",
        title: "State Management",
        duration: "3 hours",
      ),
      Module(
        image: "images/flutter.png",
        title: "Proyek Akhir",
        duration: "6 hours",
      ),
    ],
  ),
  Course(
    image: "images/python.png",
    name: "Belajar Python Dasar",
    description: '''
Kursus Belajar Dasar-Dasar Python adalah langkah pertama yang sempurna dalam perjalanan Anda ke dunia pemrograman komputer. Python adalah salah satu bahasa pemrograman paling populer dan ramah pengguna, digunakan dalam berbagai bidang seperti pengembangan perangkat lunak, analisis data, kecerdasan buatan, dan banyak lagi. Dalam kursus ini, Anda akan memperoleh pemahaman yang kuat tentang dasar-dasar Python, yang merupakan pondasi penting untuk menjadi seorang pengembang atau analis data yang terampil.
              ''',
    learn: '''
1. Sintaksis Python
2. Struktur Data
3. Pengendalian Aliran
4. Proyek Praktis
              ''',
    who: '''
- Pemula yang ingin memulai perjalanan dalam pemrograman.
- Analis data yang ingin memahami dasar-dasar Python untuk pemrosesan data dan analisis.
- Pengembang yang ingin menambahkan Python ke keterampilan mereka.
              ''',
    duration: "16 hours",
    rating: 4.8,
    price: 150000,
    modules: [
      Module(
        image: "images/python.png",
        title: "Tipe Data Python",
        duration: "2 hours",
      ),
      Module(
        image: "images/python.png",
        title: "Percabangan",
        duration: "1 hours",
      ),
      Module(
        image: "images/python.png",
        title: "Perulangan",
        duration: "1 hours",
      ),
      Module(
        image: "images/python.png",
        title: "Struktur Data",
        duration: "4 hours",
      ),
    ],
  ),
  Course(
    image: "images/react.png",
    name: "Belajar Framework React.js",
    description: '''
Kursus Belajar Web Framework React.js adalah panduan komprehensif bagi siapa saja yang ingin menguasai salah satu framework JavaScript paling populer, React.js. React.js adalah alat yang kuat untuk membangun antarmuka pengguna web yang interaktif dan responsif. Dalam kursus ini, Anda akan memahami dasar-dasar React.js serta bagaimana menggunakannya untuk mengembangkan aplikasi web modern yang menarik.
              ''',
    learn: '''
1. Pengenalan ke React.js
2. Komponen React
3. JSX
4. State dan Props
5. Routing dan Manajemen State
6. Integrasi dengan API
              ''',
    who: '''
- Pengembang web yang ingin memperdalam pengetahuan mereka tentang pengembangan web frontend dengan React.js.
- Pemula yang ingin memulai karir dalam pengembangan web dan ingin memahami dasar-dasar React.js.
- Pengembang yang ingin meningkatkan keterampilan mereka dalam membangun aplikasi web modern dan dinamis.
              ''',
    duration: "90 hours",
    rating: 4.8,
    price: 200000,
    modules: [
      Module(
        image: "images/react.png",
        title: "Pengenalan React.js",
        duration: "1 hours",
      ),
      Module(
        image: "images/react.png",
        title: "Komponen React",
        duration: "2 hours",
      ),
      Module(
        image: "images/react.png",
        title: "State dan Props",
        duration: "3 hours",
      ),
      Module(
        image: "images/react.png",
        title: "JSX dan Rendering",
        duration: "2 hours",
      ),
      Module(
        image: "images/react.png",
        title: "Routing dan Navigasi",
        duration: "2 hours",
      ),
    ],
  ),
  Course(
    image: "images/figma.png",
    name: "Belajar Desain UI/UX",
    description: '''
Kursus Belajar Desain UI/UX adalah panduan komprehensif bagi individu yang ingin mendalami seni desain antarmuka pengguna (UI) dan pengalaman pengguna (UX). Dalam dunia digital yang terus berkembang, desain UI/UX telah menjadi elemen kunci dalam memastikan produk dan aplikasi yang sukses dan menarik. Kursus ini membekali Anda dengan pengetahuan dan keterampilan yang diperlukan untuk menciptakan antarmuka yang menarik, fungsional, dan intuitif.
              ''',
    learn: '''
1. Prinsip-prinsip Desain UI/UX
2. Alat Desain
3. Desain Antarmuka Pengguna (UI)
4. Pengalaman Pengguna (UX)
5. Pengujian dan Iterasi
              ''',
    who: '''
- Desainer grafis yang ingin memperluas keahlian mereka ke desain UI/UX.
- Pengembang web atau aplikasi yang ingin memahami prinsip-prinsip desain untuk meningkatkan kualitas produk mereka.
- Mahasiswa atau profesional yang tertarik dalam desain antarmuka dan pengalaman pengguna.
              ''',
    duration: "20 hours",
    rating: 4.6,
    price: 100000,
    modules: [
      Module(
        image: "images/figma.png",
        title: "Dasar-dasar Desain",
        duration: "2 hours",
      ),
      Module(
        image: "images/figma.png",
        title: "Alat Desain",
        duration: "2 hours",
      ),
      Module(
        image: "images/figma.png",
        title: "User Interface",
        duration: "4 hours",
      ),
      Module(
        image: "images/figma.png",
        title: "User Experience",
        duration: "4 hours",
      ),
    ],
  ),
  Course(
    image: "images/java.png",
    name: "Belajar Pemrograman Java",
    description: '''
Kursus "Belajar Pemrograman Java" adalah panduan yang komprehensif untuk memahami bahasa pemrograman Java, yang telah menjadi salah satu bahasa pemrograman yang paling populer dan luas digunakan di dunia. Java digunakan dalam berbagai aplikasi, dari pengembangan perangkat lunak hingga pembuatan aplikasi mobile dan web. Kursus ini memungkinkan Anda untuk memperoleh pemahaman yang kuat tentang dasar-dasar Java dan keterampilan pemrograman yang relevan.
              ''',
    learn: '''
1. Dasar-dasar Pemrograman Java
2. Struktur Data
3. Pembuatan Aplikasi
4. Manajemen Error dan Pengujian
5. Proyek Praktis
              ''',
    who: '''
- Pemula yang ingin memulai perjalanan mereka dalam pemrograman.
- Pengembang yang ingin memperluas pengetahuan mereka dengan memahami Java.
- Siapa saja yang tertarik untuk memahami pemrograman dan berkeinginan untuk menguasai bahasa pemrograman Java.
              ''',
    duration: "90 hours",
    rating: 4.6,
    price: 150000,
    modules: [
      Module(
        image: "images/java.png",
        title: "Dasar-Dasar Java",
        duration: "2 hours",
      ),
      Module(
        image: "images/java.png",
        title: "Struktur Data",
        duration: "2 hours",
      ),
      Module(
        image: "images/java.png",
        title: "Paradigma OOP",
        duration: "4 hours",
      ),
      Module(
        image: "images/java.png",
        title: "Pembuatan Aplikasi",
        duration: "6 hours",
      ),
    ],
  ),
];
