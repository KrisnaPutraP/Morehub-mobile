# Morehub

### Morehub.com, a Platform-Based Programming project, made by:
- Nama: Krisna Putra Purnomo
- NPM: 2306228756
- Kelas: PBP E

### Redirect
- [Tugas 7](#pertanyaan-tugas-7)

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
    