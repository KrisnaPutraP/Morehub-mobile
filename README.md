# Morehub

### Morehub.com, a Platform-Based Programming project, made by:
- Nama: Krisna Putra Purnomo
- NPM: 2306228756
- Kelas: PBP E

### Redirect
- [Tugas 7](#pertanyaan-tugas-7)
- [Tugas 8](#pertanyaan-tugas-8)
- [Tugas 9](#pertanyaan-tugas-9)

### Pertanyaan Tugas 7 

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

    **JAWAB**:

    a. Stateless widget adalah widget yang nilai state-nya tidak dapat berubah (immutable), sehingga bersifat statis dan memiliki interaksi yang lebih terbatas. Ketika widget dibuat, perubahan variabel, ikon, tombol, atau pengambilan data tidak akan mengubah state dari aplikasi.

    b. Stateful widget adalah kebalikan dari Stateless widget. Widget ini nilai state-nya dapat berubah (mutable). Artinya, setelah widget tersebut dibuat, state aplikasi dapat berubah-ubah sesuai dengan variabel, input, dan data yang diberikan. Class yang meng-inherit Stateful Widget bersifat immutable, tetapi state-nya sendiri bersifat mutable saat ada interaksi dengan user.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

    **JAWAB**:

    a. MaterialApp: Widget utama untuk aplikasi Flutter yang menyediakan struktur dasar aplikasi, termasuk pengaturan tema dan titik awal halaman (home).
    
    b. Scaffold: Menyediakan kerangka dasar halaman dengan AppBar dan body, serta kemampuan untuk menambahkan elemen-elemen lain nantinya.

    c. AppBar: Menampilkan bilah atas aplikasi dengan judul dan warna latar belakang sesuai dengan tema yang ditetapkan.

    d. Text: Menampilkan teks statis dengan gaya tertentu.

    e. Padding: Menyediakan jarak antara widget dan sekitarnya.

    f. Column: Menyusun widget secara vertikal.

    g. Row: Menyusun widget secara horizontal.

    h. GridView.count: Menyusun elemen dalam bentuk grid dengan jumlah kolom tetap (crossAxisCount).

    i. SizedBox: Menyediakan ruang atau jarak kosong dengan ukuran tertentu.

    j. Card: Widget berbentuk kotak dengan bayangan yang sering digunakan untuk menampilkan informasi atau item.

    k. Material: Digunakan untuk menentukan warna latar belakang dan properti visual dasar lainnya.

    l. InkWell: Menambahkan efek ripple atau respons saat widget ditekan.

    m. Icon: Menampilkan ikon dengan ukuran dan warna tertentu.

    n. ScaffoldMessenger: Menyediakan kemampuan untuk menampilkan SnackBar atau notifikasi sementara di dalam aplikasi.

3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

    **JAWAB**:

    `setState()` adalah fungsi untuk memberitahu Flutter bahwa ada perubahan pada state yang harus dire-render di layar. Saat kita menggunakan `setState()`, widget yang memiliki state akan diperbarui sesuai dengan perubahan terbaru. 
    Pada `menu.dart`, `setState()` tidak digunakan karena semua widget yang digunakan bersifat stateless. Namun, jika terdapat widget yang stateful, `setState()` dapat berdampak pada variabel-variabel yang berubah dalam fungsi `build()`, seperti variabel yang digunakan untuk mengatur tampilan atau data dinamis di halaman.

4. Jelaskan perbedaan antara `const` dengan `final`.

    **JAWAB**:

    - `const` menandakan nilai yang bersifat tetap dan tidak akan pernah berubah selama runtime. `const` harus diketahui nilainya saat compile-time. Biasanya digunakan untuk widget atau objek yang benar-benar statis.

    - `final` menandakan variabel yang nilainya tetap setelah diinisialisasi, tetapi nilai ini bisa ditentukan saat runtime. `final` cocok untuk data yang hanya ditentukan sekali namun belum diketahui saat compile-time.
    
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

    **JAWAB**:

    a. Pertama saya membuat proyek flutter baru, kemudian berpindah direktori ke folder proyek yang baru saya buat.

    b. Setelah itu, untuk mengikuti _best practice_ seperti yang diajarkan di tutorial, saya merapikan proyek dengan memindahkan `class MyHomePage ...` dari `main.dart` ke `menu.dart`. Lalu, saya menambahkan `import 'package:morehub_mobile/menu.dart';` ke `main.dart`.

    c. Pada `main.dart`, saya mengubah skema warna aplikasi mengikuti skema warna aplikasi web saya sebelum UTS.

    ```dart
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.orange,
        ).copyWith(secondary: Colors.orangeAccent),
    ```

    d. Setelah itu, mengikuti tutorial, saya mengubah widget yang ada menjadi stateless. Artinya nilai state-nya menjadi immutable. Pertama-tama, saya mengubah bagian `const MyHomePage(title: 'Flutter Demo Home Page')` menjadi hanya `MyHomePage(),` pada `main.dart`.

    e. Pada `menu.dart`, saya menghapus semua isi dari `class MyHomePage ...`, termasuk komentar bawaan dan variabel title. Setelah itu saya mengubah `class MyHomePage extends StatefulWidget` menjadi `class MyHomePage extends StatelessWidget` yang artinya `MyHomePage` sekarang bersifat Stateless. Kemudian, tambahkan constructor `MyHomePage({super.key});`.

    f. Kemudian, saya menghapus seluruh `class _MyHomePageState extends State<MyHomePage>` dan menambahkan widget build pada `menu.dart`.

    g. Setelah itu, saya mendeklarasikan string npm, nama, dan kelas pada `class MyHomePage` yang berada di `menu.dart` yang nantinya akan ditampilkan sebagai card.

    h. Di file yang sama, saya membuat class baru bernama `InfoCard` yang berisi nama, npm, kelas.

    ```dart
    class InfoCard extends StatelessWidget {
        // Kartu informasi yang menampilkan title dan content.

        final String title;  // Judul kartu.
        final String content;  // Isi kartu.

        const InfoCard({super.key, required this.title, required this.content});

        @override
        Widget build(BuildContext context) {
            return Card(
            // Membuat kotak kartu dengan bayangan dibawahnya.
            elevation: 2.0,
            child: Container(
                // Mengatur ukuran dan jarak di dalam kartu.
                width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan.
                padding: const EdgeInsets.all(16.0),
                // Menyusun title dan content secara vertikal.
                child: Column(
                children: [
                    Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Text(content),
                ],
                ),
            ),
            );
        }
        }
    ```
    
    i. Kemudian, masih di `menu.dart`, saya membuat class baru bernama `ItemHomePage` yang akan berisi atribut-atribut dari card yang akan dibuat, beserta constructornya.

    ```dart
        class ItemHomepage {
            final String name;
            final IconData icon;
            final Color color;

            ItemHomepage(this.name, this.icon, this.color);
        }
    ```

    j. Pada class `MyHomePage`, saya membuat list `ItemHomePage` yang berisi tombol-tombol yang akan saya tambahkan.

    ```dart
        class MyHomePage extends StatelessWidget {
        final String npm = '2306228756'; // NPM
        final String name = 'Krisna Putra Purnomo'; // Nama
        final String className = 'PBP E'; // Kelas

        final List<ItemHomepage> items = [
            ItemHomepage("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 0, 255, 34)),
            ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 255, 136, 0)),
            ItemHomepage("Logout", Icons.logout, Colors.red),
        ];
        MyHomePage({super.key});
        ...
    ```

    k. Setelah itu, saya membuat class `ItemCard` untuk menampilkan tombol-tombol yang tadi saya tambahkan di `MyHomePage`.

    ```dart
        class ItemCard extends StatelessWidget {
        // Menampilkan kartu dengan ikon dan nama.

        final ItemHomepage item; 
        
        const ItemCard(this.item, {super.key}); 

        @override
        Widget build(BuildContext context) {
            return Material(
            // Menentukan warna latar belakang.
            color: item.color,
            // Membuat sudut kartu melengkung.
            borderRadius: BorderRadius.circular(12),
            
            child: InkWell(
                // Aksi ketika kartu ditekan.
                onTap: () {
                // Menampilkan pesan SnackBar saat kartu ditekan.
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                    SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
                    );
                },
                // Container untuk menyimpan Icon dan Text
                child: Container(
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Column(
                    // Menyusun ikon dan teks di tengah kartu.
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(
                        item.icon,
                        color: Colors.white,
                        size: 30.0,
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                        ),
                    ],
                    ),
                ),
                ),
            ),
            );
        }
        
        }
    ```

    Untuk sekarang, saya masih mengikuti tutorial. Saat tombol ditekan, akan muncul snackbar yang berisi pesan "Kamu telah menekan tombol [nama button]".

  l. Terakhir, saya mengintegrasikan `InfoCard` dan `Itemcard` ke `MyHomePage` dengan mengubah bagian `Widget build()`. Sekarang, class `MyHomePage` saya seperti ini:

  ```dart
    class MyHomePage extends StatelessWidget {
        final String npm = '2306228756'; // NPM
        final String name = 'Krisna Putra Purnomo'; // Nama
        final String className = 'PBP E'; // Kelas

        final List<ItemHomepage> items = [
            ItemHomepage("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 0, 255, 34)),
            ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 255, 136, 0)),
            ItemHomepage("Logout", Icons.logout, Colors.red),
        ];
        MyHomePage({super.key});
        
        
        @override
        Widget build(BuildContext context) {
            // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
            return Scaffold(
            // AppBar adalah bagian atas halaman yang menampilkan judul.
            appBar: AppBar(
                // Judul aplikasi "Mental Health Tracker" dengan teks putih dan tebal.
                title: const Text(
                'Morehub',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                ),
                ),
                // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
                backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            // Body halaman dengan padding di sekelilingnya.
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                // Menyusun widget secara vertikal dalam sebuah kolom.
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    // Row untuk menampilkan 3 InfoCard secara horizontal.
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        InfoCard(title: 'NPM', content: npm),
                        InfoCard(title: 'Name', content: name),
                        InfoCard(title: 'Class', content: className),
                    ],
                    ),

                    // Memberikan jarak vertikal 16 unit.
                    const SizedBox(height: 16.0),

                    // Menempatkan widget berikutnya di tengah halaman.
                    Center(
                    child: Column(
                        // Menyusun teks dan grid item secara vertikal.

                        children: [
                        // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                        const Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Text(
                            'Welcome to Morehub',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                            ),
                            ),
                        ),

                        // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                        GridView.count(
                            primary: true,
                            padding: const EdgeInsets.all(20),
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 3,
                            // Agar grid menyesuaikan tinggi kontennya.
                            shrinkWrap: true,

                            // Menampilkan ItemCard untuk setiap item dalam list items.
                            children: items.map((ItemHomepage item) {
                            return ItemCard(item);
                            }).toList(),
                        ),
                        ],
                    ),
                    ),
                ],
                ),
            ),
            );
        }
        }
```


### Pertanyaan Tugas 8

1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

    **JAWAB**:

    `const` digunakan untuk mendefinisikan nilai tetap yang tidak akan berubah sepanjang runtime aplikasi, seperti warna, padding, margin, teks, atau ukuran tertentu. Keuntungan menggunakan `const` adalah performa yang lebih baik karena Flutter bisa mengoptimalkan widget karena Flutter tahu bahwa widget tersebut tidak perlu di-rebuild, sehingga tidak perlu diproses ulang ketika ada perubahan dalam aplikasi. Selain itu, objek yang di-compile dengan `const` hanya disimpan satu kali dalam memori (shared memory), jadi jika ada objek `const` yang sama di beberapa tempat, hanya satu objek yang disimpan, sehingga memori yang digunakan lebih efisien. 

    `const` sebaiknya digunakan untuk menyimpan nilai widget atau objek tersebut tidak akan berubah sepanjang runtime aplikasi dan tidak bergantung pada data dinamis, seperti teks tetap, padding tetap, margin tetap, warna tetap, atau ikon tetap. `const` sebaiknya tidak digunakan jika kita menginginkan widget atau objek yang dinamis, artinya nilai objek bergantung pada perubahan state atau input pengguna. Contohnya adalah widget yang nilainya dihasilkan dari variabel yang bisa berubah, seperti hasil dari `setState`.

2. Jelaskan dan bandingkan penggunaan _Column_ dan _Row_ pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

    **JAWAB**:

    - _Column_ adalah widget yang mengatur tata letak widget di dalamnya secara vertikal (dari atas ke bawah). _Column_ berguna ketika kita ingin menumpuk widget secara vertikal dalam satu kolom. Contoh implementasinya sebagai berikut:

    ```dart
        Column(
            mainAxisAlignment: MainAxisAlignment.center,    // Mengatur ruang antara widget di sepanjang sumbu utama (vertikal dalam kasus Column)
            crossAxisAlignment: CrossAxisAlignment.start,   // Digunakan untuk mengatur widget di sepanjang sumbu silang (horizontal dalam kasus Column)
            children: <Widget>[
                Text('Halo'),
                SizedBox(height: 10),
                Text('FAM'),
                SizedBox(height: 10),
                ElevatedButton(
                onPressed: () {},
                child: Text('Lesgoo'),
                ),
            ],
        );
    ```

    Dalam contoh di atas, widget Text dan ElevatedButton ditampilkan secara vertikal dengan jarak antar item menggunakan SizedBox.

    - _Row_ adalah widget yang mengatur tata letak widget di dalamnya secara horizontal (dari kiri ke kanan). Ini berguna ketika Anda ingin menyusun widget secara horizontal dalam satu baris.

    ```dart
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,   // Mengatur ruang antara widget di sepanjang sumbu utama (horizontal dalam kasus Row)
            crossAxisAlignment: CrossAxisAlignment.center,  // Digunakan untuk mengatur widget di sepanjang sumbu silang (vertikal dalam kasus Row)
            children: <Widget>[
                Icon(Icons.star, color: Colors.orange),
                Text('Halo'),
                ElevatedButton(
                onPressed: () {},
                child: Text('Tombol'),
                ),
            ],
        );
    ```

    Dalam contoh di atas, Icon, Text, dan ElevatedButton ditampilkan secara horizontal dengan jarak yang merata di antara elemen menggunakan MainAxisAlignment.spaceAround.

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

    **JAWAB**:

    Elemen input yang saya gunakan:

    a. TextFormField, untuk mengumpulkan input teks dari pengguna, seperti nama produk, harga, deskripsi, jumlah, dan kategori. Untuk harga dan jumlah saya melakukan parse double dan int terlebih dahulu agar angkanya menjadi teks.

    b. Switch, digunakan sebagai input untuk opsi "Is Featured".

    Elemen input flutter lain yang tidak saya gunakan:

    a. Radio, elemen input ini dapat digunakan untuk membuat pilihan yang saling eksklusif, cocok jika hanya satu opsi yang diizinkan untuk dipilih dari beberapa pilihan. Dalam aplikasi ini, saya tidak menggunakannya karena tidak ada opsi yang memerlukan pemilihan eksklusif (termasuk kategori, karena saya tidak mengimplementasikan opsi pemilihan ekslusif pada tugas web pra-UTS).

    b. Slider, elemen ini memungkinkan pengguna memilih nilai dari suatu rentang tertentu. Biasanya digunakan untuk input angka dalam skala, seperti rating atau pengaturan volume. Aplikasi saya tidak memerlukan jenis input semacam itu, jadi elemen ini tidak saya gunakan.

    c. Checkbox, digunakan ketika ada beberapa pilihan yang bisa dipilih secara bersamaan. Saya tidak menggunakannya di aplikasi saya karena tidak ada field yang membutuhkan pilihan multipel.

    d. DatePicker, digunakan untuk memilih tanggal dengan mudah dari tampilan kalender. Elemen ini cocok untuk input tanggal atau waktu, namun tidak relevan untuk aplikasi ini karena tidak ada input yang memerlukan tanggal.

    e. DropdownButton, elemen ini bisa digunakan untuk memberikan pilihan dari daftar opsi yang terbatas. Sebenarnya ini bisa dipertimbangkan sebagai alternatif input untuk kategori produk, tetapi dalam tugas ini saya menggunakan TextFormField untuk kategori karena sudah terlanjur sejak tugas web pra-UTS.

4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

    **JAWAB**:

    Untuk mengatur tema (theme) dalam aplikasi Flutter agar konsisten, dapat digunakan `ThemeData`, contohnya `ColorScheme` di `MaterialApp` yang berada di `main.dart`. Kemudian, di setiap widget yang memerlukan akses ke warna atau gaya yang sudah diatur di ThemeData, saya dapat menggunakan Theme.of(context) untuk mengakses tema aplikasi. Dengan demikian, aplikasi menjadi lebih konsisten dalam tampilan, dan jika ada perubahan warna tema, cukup diubah di satu tempat (ThemeData), sehingga semua elemen yang menggunakan warna atau gaya dari tema akan ikut berubah secara otomatis. Untuk aplikasi yang saya buat, terdapat beberapa elemen yang mengimplementasikan tema, salah satu contohnya pada left drawer header:

    ```dart
        class LeftDrawer extends StatelessWidget {
        const LeftDrawer({super.key});

        @override
        Widget build(BuildContext context) {
            return Drawer(
            child: ListView(
                children: [
                DrawerHeader(
                        decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                ),
                ...
                )]))}},
    ```

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

    **JAWAB**:

    Flutter menyediakan class Navigator yang berisi beberapa method, diantaranya Navigator.push, Navigator.pop, dan Navigator.pushReplacement yang dicontohkan di tutorail dan saya gunakan pada tugas kali ini. 

    - Navigator.push() menambahkan suatu route ke dalam stack route yang dikelola oleh Navigator. Method ini digunakan untuk menambahkan route di top of stack, dan digunakan ketika kita ingin berpindah halaman dan menambahkan halaman tersebut ke atas stack, sehingga pengguna dapat menekan tombol Back untuk kembali ke halaman sebelumnya yang berada dibawah top of stack.

    - Navigator.pop() menghapus route saat ini (yang sedang ditampilkan ke pengguna) sehingga halaman yang ditampilkan adalah route yang berada di bawah top of stack yang dikelola Navigator (biasanya berupa halaman sebelumnya).

    - Navigator.pushReplacement() menghapus route yang sedang ditampilkan ke pengguna dan langsung menggantinya dengan suatu route yang sudah didefinisikan, tanpa mengubah route yang berada di bawah stack. Dalam kata lain, method ini digunakan untuk mengganti halaman saat ini dengan halaman baru tanpa menambahkan ke stack, sehingga pengguna tidak bisa kembali ke halaman sebelumnya.


### Pertanyaan Tugas 9

1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

    **JAWAB**:

    Model diperlukan karena model berfungsi sebagai "cetakan" atau template yang memastikan struktur data JSON konsisten. Model juga digunakan untuk melakukan validasi data sebelum diterima atau dikirim. Dengan demikian, kita dapat memastikan bahwa semua properti yang diperlukan (misalnya, tipe data, panjang string, atau format) sesuai. Jika kita tidak membuat model, ada risiko data yang dikirim/diterima tidak sesuai dengan struktur yang diharapkan oleh sistem penerima (misal server), dimana hal tersebut dapat menyebabkan error atau masalah saat memproses data, dimana hal tersebut dapat berakibat fatal di tahap berikutnya dalam alur kerja aplikasi.


2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

    **JAWAB**:

    Library `http` digunakan untuk mengirim/menerima berbagai jenis response ataupun request http yang digunakan untuk menghubungkan aplikasi Flutter dengan server Django. Library ini juga mengatur data dari Flutter yang dikemas dalam format JSON sebelum dikirim ke server Django.

3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

    **JAWAB**:

    CookieRequest berfungsi untuk penyimpanan dan dan pengiriman cookie. Dengan menyimpan dan mengirimkan cookie yang tepat, CookieRequest membantu menjaga sesi pengguna tetap aktif tanpa perlu autentikasi ulang setiap kali pengguna melakukan tindakan dalam aplikasi. Dengan demikian, CookieRequest membantu melindungi data sensitif seperti token autentikasi dari potensi kebocoran atau akses yang tidak sah. 

    Instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter agar semua komponen aplikasi dapat mengakses dan memperbarui data sesi yang sama. Ini mencegah adanya data sesi yang tidak sinkron atau terpisah di berbagai bagian aplikasi. Dengan satu titik pengelolaan cookie, lebih mudah untuk menerapkan kebijakan keamanan yang konsisten di seluruh aplikasi, seperti enkripsi cookie atau pembatasan akses. Jika ada perubahan dalam cara pengelolaan cookie atau autentikasi, perubahan hanya perlu dilakukan di satu tempat, memudahkan pemeliharaan dan pengembangan aplikasi.

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

    **JAWAB**:

    - Pengguna memasukkan data melalui antarmuka pengguna di aplikasi Flutter, seperti menggunakan formulir input atau elemen UI lainnya (misalnya, TextField). Kemudian, data yang dimasukkan oleh pengguna disimpan sementara dalam variabel atau model aplikasi Flutter.

    - Setelah pengguna mengisi formulir atau melakukan aksi yang memicu pengiriman data (seperti tombol login), aplikasi Flutter mengirimkan data ke backend server menggunakan permintaan HTTP. Library http digunakan untuk membuat permintaan seperti POST, mengirim data dalam format JSON, dan mengirimkan data ke endpoint yang tepat di backend Django.

    - Backend django menerima data yang dikirim oleh aplikasi Flutter. Kemudian, Django akan memproses data, misalnya memverifikasi kredensial pengguna (username dan password), membuat sesi pengguna, atau memproses informasi lain yang dikirim. Jika data valid (misalnya login berhasil), Django akan mengembalikan respons yang berisi data yang relevan (misalnya token autentikasi, status login, atau data pengguna lainnya).

    - Setelah django memproses data, respons dikirimkan kembali ke aplikasi Flutter dalam bentuk JSON atau format lainnya. Kemudian, aplikasi Flutter menerima respons ini melalui objek http.Response yang mengandung status dan body dari respons.

    - Setelah menerima data (misalnya token autentikasi atau respons lainnya) dari server, aplikasi Flutter dapat menggunakan data tersebut untuk memperbarui UI pengguna. Data tersebut bisa disimpan di model atau state dan digunakan untuk memodifikasi widget di antarmuka. Jika menggunakan state management (misalnya, Provider, Riverpod, atau setState), perubahan data akan memicu pembaruan UI secara otomatis.

    - Setelah data diterima dan diproses, seperti token autentikasi, aplikasi dapat menyimpannya untuk penggunaan lebih lanjut (misalnya, menyimpan token untuk autentikasi di penyimpanan lokal seperti SharedPreferences). Hal ini memungkinkan pengguna untuk tetap terautentikasi saat aplikasi dijalankan kembali.

    - Setelah data disimpan, komponen lain dalam aplikasi dapat mengakses data tersebut (misalnya, token) untuk melakukan permintaan HTTP lainnya atau untuk memperbarui UI sesuai kebutuhan. Dengan menggunakan state management atau sistem penyimpanan data lokal, aplikasi bisa berbagi dan memperbarui data antar komponen yang relevan.

5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

    **JAWAB**:

    a. Register

    - Pengguna memasukkan data login seperti username dan password melalui antarmuka pengguna di Flutter menggunakan widget seperti TextField. Setelah itu, data tersebut disimpan dan dikirimkan ke server django menggunakan HTTP POST request untuk didaftarkan.

    - Django menerima data pendaftaran, memverifikasi apakah username atau email sudah terdaftar, dan kemudian membuat akun baru.

    - Setelah pengguna berhasil didaftarkan, server dapat mengirimkan respons sukses ke Flutter.

    b. Login

    - Pengguna memasukkan data login seperti username dan password melalui antarmuka pengguna di Flutter menggunakan widget seperti TextField. Setelah itu, data tersebut disimpan dan dikirimkan ke server django menggunakan HTTP POST request untuk diautentikasi.

    - Django menerima data login (username dan password) yang dikirim dari aplikasi Flutter. Kemudian, server Django akan memeriksa kredensial pengguna dengan mencocokkan data yang diterima dengan data yang ada di database.

    - Jika kredensial valid, Django akan menghasilkan token autentikasi (misalnya, JWT atau token session) yang akan dikirimkan kembali ke aplikasi Flutter sebagai bagian dari respons HTTP. Setelah itu, server dapat mengirim respons berisi token autentikasi (misalnya, JWT) yang diperlukan untuk mengakses API yang dilindungi.

    - Setelah menerima token autentikasi dari server Django, aplikasi Flutter menyimpannya untuk digunakan dalam autentikasi berikutnya, seperti pada penyimpanan lokal menggunakan SharedPreferences. Setelah token disimpan, aplikasi Flutter dapat menavigasi ke halaman utama atau menu yang dilindungi berdasarkan status autentikasi pengguna.

    c. Logout

    - Setelah pengguna menekan tombol logout, aplikasi Flutter menghapus token yang disimpan dan menavigasi pengguna kembali ke halaman login.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

    **JAWAB**:

    a. Pertama, saya kembali membuka folder proyek django pra-uts untuk membuat aplikasi baru bernama `authentication` dengan command `python manage.py startapp authentication`. Setelah itu, saya menambahkan aplikasi tersebut ke  `INSTALLED APPS` di `settings.py` dan kemudian menginstall `django-cors-headers` menggunakan `pip` serta menambahkannuya ke `requirements.txt`. Kemudian, saya menambahkan `corsheaders.middleware.CorsMiddleware` ke `MIDDLEWARE` yang masih berada di `settings.py`, lalu menambahkan beberapa variabel untuk keperluan middleware dan cookie session (sesuai yang diajarkan di tutorial), dan menambahkan `ALLOWED HOSTS` untuk emulator android (jika saya ingin menggunakan Android Studio).

    b. Setelah mengonfigurasi aplikasi baru tadi, saya menambahkan kode view pada aplikasi `authentication` yang nantinya berguna untuk login, register, dan logout.

    ```python
        from django.contrib.auth import authenticate, login as auth_login
        from django.http import JsonResponse
        from django.views.decorators.csrf import csrf_exempt
        from django.contrib.auth.models import User
        from django.contrib.auth import logout as auth_logout
        import json

        @csrf_exempt
        def login(request):
            username = request.POST['username']
            password = request.POST['password']
            user = authenticate(username=username, password=password)
            if user is not None:
                if user.is_active:
                    auth_login(request, user)
                    # Status login sukses.
                    return JsonResponse({
                        "username": user.username,
                        "status": True,
                        "message": "Login sukses!"
                        # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
                    }, status=200)
                else:
                    return JsonResponse({
                        "status": False,
                        "message": "Login gagal, akun dinonaktifkan."
                    }, status=401)

            else:
                return JsonResponse({
                    "status": False,
                    "message": "Login gagal, periksa kembali email atau kata sandi."
                }, status=401)
            

        @csrf_exempt
        def register(request):
            if request.method == 'POST':
                data = json.loads(request.body)
                username = data['username']
                password1 = data['password1']
                password2 = data['password2']

                # Check if the passwords match
                if password1 != password2:
                    return JsonResponse({
                        "status": False,
                        "message": "Passwords do not match."
                    }, status=400)
                
                # Check if the username is already taken
                if User.objects.filter(username=username).exists():
                    return JsonResponse({
                        "status": False,
                        "message": "Username already exists."
                    }, status=400)
                
                # Create the new user
                user = User.objects.create_user(username=username, password=password1)
                user.save()
                
                return JsonResponse({
                    "username": user.username,
                    "status": 'success',
                    "message": "User created successfully!"
                }, status=200)
            
            else:
                return JsonResponse({
                    "status": False,
                    "message": "Invalid request method."
                }, status=400)
            
        @csrf_exempt
        def logout(request):
            username = request.user.username

            try:
                auth_logout(request)
                return JsonResponse({
                    "username": username,
                    "status": True,
                    "message": "Logout berhasil!"
                }, status=200)
            except:
                return JsonResponse({
                "status": False,
                "message": "Logout gagal."
                }, status=401)
    ```
    Tidak lupa saya juga membuat file `urls.py` di aplikasi `authentication` serta menambahkan views diatas ke dalam path yang berada di `authentication/urls.py`

    c. Kemudian, saya menginstall package `provider` dan `pbp_django_auth` via terminal di proyek Flutter saya. 

    d. Setelah itu, saya memodifikasi root widget saya (`main.dart`) sedemikian rupa untuk menyediakan `CookieRequest` library ke semua child widgets dengan menggunakan `Provider`.

    ```dart
        class MyApp extends StatelessWidget {
        const MyApp({super.key});

        @override
        Widget build(BuildContext context) {
            return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Morehub Mobile',
                theme: ThemeData(
        ....
        )))}}
    ```
    Tidak lupa saya menambahkan baris import provider dan pbp_django_auth.

    e. Setelah itu, saya membuat dua file baru di `screens`, yakni `register.dart` dan `login.dart`, yang masing-masing digunakan untuk login dan register.

    f. Saya juga mengubah Widget MaterialApp() yang berada di `main.dart` untuk mengarahkan pengguna ke LoginPage terlebih dahulu. 

    ```dart
        class MyApp extends StatelessWidget {
        const MyApp({super.key});

        @override
        Widget build(BuildContext context) {
            return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Morehub Mobile',
                theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSwatch(
                    primarySwatch: Colors.orange,
                ).copyWith(secondary: Colors.orangeAccent),
                ),
                home: const LoginPage(),
            ),
            );
        }
        }
    ```

    g. Setelah memastikan halaman login dan register pada Flutter terintegrasi dengan views django, dan saya berhasil membuat akun dan login, saya dapat melanjutkan ke tahap selanjutnya.

    h. Saya menjalankan aplikasi django saya, kemudian saya membuka endpoint `JSON` pada aplikasi django saya.

    i. Sesuai yang diajarkan di tutorial 8, saya menggunakan situs [Quicktype](http://app.quicktype.io/) untuk mengonversi data `JSON` aplikasi django saya kedalam bentuk kode model dart.

    j. Setelah itu, saya membuat folder baru bernama `models/` yang berada di dalam direktori `lib/`, dan saya membuat file baru bernama `product_entry.dart` dan saya isi file tersebut dengan kode model yang sudah saya salin dari Quicktype.

    k. Setelah itu, saya menambahkan dependensi HTTP, pertama dengan menginstall package HTTP `flutter pub add http`, setalah itu saya masuk ke file `android/app/src/main/AndroidManifest.xml`.

    ```xml
        <manifest xmlns:android="http://schemas.android.com/apk/res/android">
            <application
                android:label="morehub_mobile"
                android:name="${applicationName}"
                android:icon="@mipmap/ic_launcher">
                <activity
                    android:name=".MainActivity"
                    android:exported="true"
                    android:launchMode="singleTop"
                    android:taskAffinity=""
                    android:theme="@style/LaunchTheme"
                    android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
                    android:hardwareAccelerated="true"
                    android:windowSoftInputMode="adjustResize">
                    <!-- Specifies an Android theme to apply to this Activity as soon as
                        the Android process has started. This theme is visible to the user
                        while the Flutter UI initializes. After that, this theme continues
                        to determine the Window background behind the Flutter UI. -->
                    <meta-data
                    android:name="io.flutter.embedding.android.NormalTheme"
                    android:resource="@style/NormalTheme"
                    />
                    <intent-filter>
                        <action android:name="android.intent.action.MAIN"/>
                        <category android:name="android.intent.category.LAUNCHER"/>
                    </intent-filter>
                </activity>
                <!-- Don't delete the meta-data below.
                    This is used by the Flutter tool to generate GeneratedPluginRegistrant.java -->
                <meta-data
                    android:name="flutterEmbedding"
                    android:value="2" />
            </application>
            <uses-permission android:name="android.permission.INTERNET" />
            ....
    ```

    dengan menambahkan baris paling bawah pada snippet kode diatas, maka saya memperbolehkan akses internet pada aplikasi Flutter yang sedang dibuat.

    l. Pada direktori `lib/screens`, saya membuat file baru bernama `list_productentry.dart`, yang akan digunakan untuk menampilkan item-item produk dari model yang sudah saya definisikan.

    ```dart
        import 'package:flutter/material.dart';
        import 'package:morehub_mobile/models/product_entry.dart';
        import 'package:morehub_mobile/widgets/left_drawer.dart';
        import 'package:pbp_django_auth/pbp_django_auth.dart';
        import 'package:provider/provider.dart';
        import 'package:morehub_mobile/screens/productdetail_page.dart';

        class ProductEntryPage extends StatefulWidget {
        const ProductEntryPage({super.key});

        @override
        State<ProductEntryPage> createState() => _ProductEntryPageState();
        }

        class _ProductEntryPageState extends State<ProductEntryPage> {
        Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
            final response = await request.get('http://127.0.0.1:8000/json/');
            
            // Melakukan decode response menjadi bentuk json
            var data = response;
            
            // Melakukan konversi data json menjadi object ProductEntry
            List<ProductEntry> listProduct = [];
            for (var d in data) {
            if (d != null) {
                listProduct.add(ProductEntry.fromJson(d));
            }
            }
            return listProduct;
        }

        @override
        Widget build(BuildContext context) {
            final request = context.watch<CookieRequest>();
            return Scaffold(
            appBar: AppBar(
                title: const Text('Product Entry List'),
            ),
            drawer: const LeftDrawer(),
            body: FutureBuilder(
                future: fetchProduct(request),
                builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            'Belum ada data product pada Morehub.',
                            style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                    } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) {
                        final product = snapshot.data![index].fields;
                        return InkWell(
                            onTap: () {
                            // Navigate to ProductDetailPage when tapped
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailPage(product: snapshot.data![index]),
                                ),
                            );
                            },
                            child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                ),
                                ],
                            ),
                            child: Text(
                                "Product Name: ${product.name}",
                                style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            ),
                        );
                        
                        }
                    );
                    }
                }
                },
            ),
            );
        }
        }
    ```

    Perhatikan bahwa saya juga menambahkan import yang dibutuhkan dibagian paling atas file.

    m. Kemudian, saya menambahkan halaman tersebut ke `left_drawer.dart` yang berada di folder `widgets`.

    ```dart
        ...
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Daftar Produk'),
            onTap: () {
                // Route menu ke halaman mood
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                );
            },
        ),
        ...
    ```

    n. Kemudian saya menambahkan fungsionalitas tombol `Lihat Produk`

    ```dart
        ...
        Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      // Menentukan warna latar belakang.
      color: item.color,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () async {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );

          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
            );
          } 
          else if (item.name == "Lihat Daftar Produk") {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const ProductEntryPage()
                ),
            );
        }
        ...
    ```

    o. Setelah itu, saya memastikan bahwa semua file yang dibutuhkan telah diimport dengan benar pada file `left_drawer.dart` dan `product_card.dart`.

    p. Setelah mencoba menambahkan beberapa produk pada aplikasi Flutter saya dan berhasil, saya melanjutkan ke step selanjutnya.

    q. Kembali ke aplikasi django, pada `main/views.py`, saya menambahkan fungsi baru untuk menambahkan produk menggunakan flutter

    ```python
        ...
        @csrf_exempt
        def create_product_flutter(request):
            if request.method == 'POST':

                data = json.loads(request.body)
                new_product = Product.objects.create(
                    user=request.user,
                    name=data['name'],
                    price=Decimal(data['price']),
                    description=data['description'],
                    quantity=int(data['quantity']),
                    category=data['category'],
                    featured=bool(data['featured'])
                )

                new_product.save()

                return JsonResponse({"status": "success"}, status=200)
            else:
                return JsonResponse({"status": "error"}, status=401)
        ...
    ```

    r. Saya juga menambahkan fungsi baru diatas kedalam path yang berada di `main/urls.py`.

    s. Setelah memastikan bahwa semua berjalan dengan baik, saya melanjutkan ke step berikutnya.

    t. Saya menghubungkan `productentry_form.dart` dengan `CookieRequest` dengan menambahkan baris kode berikut

    ```dart
        ...
        @override
        Widget build(BuildContext context) {
            final request = context.watch<CookieRequest>();

            return Scaffold(
        ...      
    ``` 

    u. Masih di file yang sama, saya mengubah perintah pada `OnPressed: ()`

    ```dart
        ...
        onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                                // Kirim ke Django dan tunggu respons
                          
                                final response = await request.postJson(
                                    "http://127.0.0.1:8000/create-flutter/",
                                    jsonEncode(<String, String>{
                                        'name' : _name,
                                        'price' : _price.toString(),
                                        'description' : _description,
                                        'quantity' : _quantity.toString(),
                                        'category' : _category,
                                        'featured' : _featured.toString(),
                                    }),
                                );
                                if (context.mounted) {
                                    if (response['status'] == 'success') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                        content: Text("Mood baru berhasil disimpan!"),
                                        ));
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(builder: (context) => MyHomePage()),
                                        );
                                    } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                            content:
                                                Text("Terdapat kesalahan, silakan coba lagi."),
                                        ));
                                    }
                                }
                            }
                        },
        ...
    ```

    Perhatikan bahwa saya juga mengubah perintah tersebut menjadi `async`

    v. Setelah itu, saya melakukan quick fix untuk melakukan import pada baris-baris yang masih error.

    w. Pada step jauh sebelumnya, saya telah menambahkan fungsi untuk logout pada `main/views.py`. Sekarang, saatnya saya mengimplementasikan fitur logout ke aplikasi Flutter saya.

    x. Pada `lib/widgets/product_card.dart`, saya menambahkan fitur untuk logout di Widget `InkWell` dengan menambahkan perintah `onTap: ()` untuk logout pada bagian akhir.

    ```dart
        ...
        @override
        Widget build(BuildContext context) {
            final request = context.watch<CookieRequest>();
            return Material(
            // Menentukan warna latar belakang.
            color: item.color,
            // Membuat sudut kartu melengkung.
            borderRadius: BorderRadius.circular(12),
            
            child: InkWell(
                // Aksi ketika kartu ditekan.
                onTap: () async {
                // Menampilkan pesan SnackBar saat kartu ditekan.
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                    SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
                    );

                if (item.name == "Tambah Produk") {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
                    );
                } 
                else if (item.name == "Lihat Daftar Produk") {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const ProductEntryPage()
                        ),
                    );
                }
                else if (item.name == "Logout") {
                    final response = await request.logout(
                        "http://127.0.0.1:8000/auth/logout/");
                    String message = response["message"];
                    if (context.mounted) {
                        if (response['status']) {
                            String uname = response["username"];
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("$message Sampai jumpa, $uname."),
                            ));
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginPage()),
                            );
                        } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(message),
                                ),
                            );
                        }
                    }
        ...
    ```

    Perhatikan bahwa saya juga telah mengubah perintah `onTap: ()` menjadi async.

    y. Setelah itu, untuk memenuhi checklist tugas "Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item", saya melakukan _refactor_ pada `list_productentry.dart` agar hanya menampilkan nama produk saya saja, yang kemudian bisa diklik dan membuka halaman yang berisi atribut-atribut pada item produk saya.

    z. Pertama, saya membuat file baru bernama `productdetail_page.dart, kemudian pada page tersebut saya isi dengan tampilan lengkap item produk saya, termasuk atribut-atributnya.

    ```dart
        import 'package:flutter/material.dart';
        import 'package:morehub_mobile/models/product_entry.dart';

        class ProductDetailPage extends StatelessWidget {
        final ProductEntry product;

        const ProductDetailPage({super.key, required this.product});

        @override
        Widget build(BuildContext context) {
            final fields = product.fields;

            return Scaffold(
            appBar: AppBar(
                title: Text(fields.name),
            ),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("Product Name: ${fields.name}",
                        style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 10),
                    Text("Price: Rp${fields.price}",
                        style: const TextStyle(fontSize: 18.0)),
                    const SizedBox(height: 10),
                    Text("Description: ${fields.description}",
                        style: const TextStyle(fontSize: 18.0)),
                    const SizedBox(height: 10),
                    Text("Quantity: ${fields.quantity}",
                        style: const TextStyle(fontSize: 18.0)),
                    const SizedBox(height: 10),
                    Text("Category: ${fields.category}",
                        style: const TextStyle(fontSize: 18.0)),
                    const SizedBox(height: 10),
                    Text("Featured: ${fields.featured}",
                        style: const TextStyle(fontSize: 18.0)),
                    const Spacer(),
                    ElevatedButton(
                    onPressed: () {
                        Navigator.pop(context);
                    },
                    child: const Text('Kembali'),
                    ),
                ],
                ),
            ),
            );
        }
        }
    ```

    Perhatikan saya juga telah melakukan inisiasi variabel untuk mempermudah pemanggilan atribut, yang juga telah saya lakukan pada `list_productentry.dart` Perhatikan juga saya telah menambahkan potongan kode berikut untuk kembali ke halaman sebelumnya, yakni `list_productentry.dart.

    ```dart
        ...
        ElevatedButton(
                    onPressed: () {
                        Navigator.pop(context);
                    },
                    child: const Text('Kembali'),
                    ),
                ],
                ),
        ...
    ```

    aa. Saya melakukan modifikasi pada `list_productentry.dart` agar hanya menampilkan nama produk yang dapat diklik dan membuka halaman `productdetail_page.dart` yang tadi saya buat.

    ```dart
        ...
        if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data product pada Morehub.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final product = snapshot.data![index].fields;
                  return InkWell(
                    onTap: () {
                      // Navigate to ProductDetailPage when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailPage(product: snapshot.data![index]),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Text(
                        "Product Name: ${product.name}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
        ...
    ```

    ab. Setelah itu, sesuai checklist "Tambahkan tombol untuk kembali ke halaman daftar item.", saya memastikan bahwa tombol `Kembali` yang saya gunakan tadi sudah berfungsi dengan baik.



    








