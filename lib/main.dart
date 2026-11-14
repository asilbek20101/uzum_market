import 'dart:async';

import 'package:flutter/material.dart';

const purple = Color(0xFF7000FF);
const ink = Color(0xFF191919);
const muted = Color(0xFF85838B);
const canvas = Color(0xFFF5F5F7);

void main() => runApp(const UzumApp());

class UzumApp extends StatelessWidget {
  const UzumApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Uzum Market',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: canvas,
          colorScheme: ColorScheme.fromSeed(seedColor: purple, primary: purple),
          fontFamily: 'Arial',
        ),
        home: const StoreHome(),
      );
}

class Product {
  final String title;
  final String photo;
  final String category;
  final int price;
  final int oldPrice;
  final double rating;
  final String badge;

  const Product({
    required this.title,
    required this.photo,
    required this.category,
    required this.price,
    required this.oldPrice,
    required this.rating,
    this.badge = 'AKSIYA',
  });

  String get imageUrl =>
      'https://images.unsplash.com/$photo?auto=format&fit=crop&w=720&q=80';
}

const categories = <String>[
  'Elektronika',
  'Maishiy texnika',
  'Kiyim',
  'Poyabzallar',
  'Go‘zallik',
  'Uy-ro‘zg‘or',
  'Bolalar uchun',
  'Sport',
  'Oziq-ovqat',
  'Avtotovarlar',
  'Kitoblar',
  'Maktab va ofis',
  'Aksessuarlar',
  'Uy hayvonlari',
  'Ta’mirlash',
  'Bog‘ va dala',
];

const products = <Product>[
  Product(
      title: 'Apple iPhone 15, 128 GB',
      photo: 'photo-1511707171634-5f897ff02aa9',
      category: 'Elektronika',
      price: 8499000,
      oldPrice: 10299000,
      rating: 4.9,
      badge: 'ORIGINAL'),
  Product(
      title: 'Simsiz quloqchinlar, shovqinni pasaytirish bilan',
      photo: 'photo-1505740420928-5e560c06d30e',
      category: 'Elektronika',
      price: 289000,
      oldPrice: 459000,
      rating: 4.8),
  Product(
      title: 'Ayollar uchun yengil krossovkalar',
      photo: 'photo-1542291026-7eec264c27ff',
      category: 'Poyabzallar',
      price: 349000,
      oldPrice: 599000,
      rating: 4.9,
      badge: 'TOP'),
  Product(
      title: 'Namlovchi yuz serumi, 30 ml',
      photo: 'photo-1608248543803-ba4f8c70ae0b',
      category: 'Go‘zallik',
      price: 79900,
      oldPrice: 129000,
      rating: 4.8),
  Product(
      title: 'Nescafe Classic qahvasi, 500 g',
      photo: 'photo-1495474472287-4d71bcdd2085',
      category: 'Oziq-ovqat',
      price: 149990,
      oldPrice: 207000,
      rating: 4.9,
      badge: 'TOP'),
  Product(
      title: 'Zamonaviy yumshoq divan',
      photo: 'photo-1555041469-a586c61ea9bc',
      category: 'Uy-ro‘zg‘or',
      price: 2295000,
      oldPrice: 4250000,
      rating: 4.8),
  Product(
      title: 'Noutbuk uchun suv o‘tkazmaydigan sumka',
      photo: 'photo-1496181133206-80ce9b88a853',
      category: 'Elektronika',
      price: 189000,
      oldPrice: 279000,
      rating: 4.7,
      badge: 'TOP'),
  Product(
      title: 'Yopishmaydigan qoplamali qozon',
      photo: 'photo-1556911220-e15b29be8c8f',
      category: 'Uy-ro‘zg‘or',
      price: 339000,
      oldPrice: 499000,
      rating: 4.9),
  Product(
      title: 'Aqlli soat, AMOLED ekran',
      photo: 'photo-1523275335684-37898b6baf30',
      category: 'Elektronika',
      price: 499000,
      oldPrice: 699000,
      rating: 4.8,
      badge: 'TOP'),
  Product(
      title: 'Kundalik foydalanish uchun ryukzak',
      photo: 'photo-1553062407-98eeb64c6a62',
      category: 'Kiyim',
      price: 219000,
      oldPrice: 329000,
      rating: 4.7),
  Product(
      title: 'Bolalar uchun rangli konstruktor',
      photo: 'photo-1587654780291-39c9404d746b',
      category: 'Bolalar uchun',
      price: 119000,
      oldPrice: 179000,
      rating: 4.9),
  Product(
      title: 'Uy mashqlari uchun gantel to‘plami',
      photo: 'photo-1583454110551-21f2fa2afe61',
      category: 'Sport',
      price: 259000,
      oldPrice: 389000,
      rating: 4.8),
  Product(
      title: 'Soch quritgich va turmaklagich',
      photo: 'photo-1522338242992-e1a54906a8da',
      category: 'Maishiy texnika',
      price: 399000,
      oldPrice: 579000,
      rating: 4.8),
  Product(
      title: 'Erkaklar uchun kundalik futbolka',
      photo: 'photo-1521572163474-6864f9cf17ab',
      category: 'Kiyim',
      price: 89000,
      oldPrice: 139000,
      rating: 4.7),
  Product(
      title: 'Artel elektr choynagi, 1.7 litr',
      photo: 'photo-1608270586620-248524c67de9',
      category: 'Maishiy texnika',
      price: 219000,
      oldPrice: 329000,
      rating: 4.9,
      badge: 'ORIGINAL'),
  Product(
      title: 'Mexanik klaviatura, RGB yoritish bilan',
      photo: 'photo-1587829741301-dc798b83add3',
      category: 'Elektronika',
      price: 459000,
      oldPrice: 649000,
      rating: 4.8,
      badge: 'TOP'),
  Product(
      title: 'Portativ Bluetooth kolonka',
      photo: 'photo-1608043152269-423dbba4e7e1',
      category: 'Elektronika',
      price: 319000,
      oldPrice: 499000,
      rating: 4.8),
  Product(
      title: 'Ayollar uchun kundalik sumka',
      photo: 'photo-1584917865442-de89df76afd3',
      category: 'Kiyim',
      price: 279000,
      oldPrice: 429000,
      rating: 4.9),
  Product(
      title: 'Yuzni parvarish qilish to‘plami',
      photo: 'photo-1556228720-195a672e8a03',
      category: 'Go‘zallik',
      price: 189000,
      oldPrice: 259000,
      rating: 4.8),
  Product(
      title: 'Yumshoq paxtali choyshablar to‘plami',
      photo: 'photo-1631049307264-da0ec9d70304',
      category: 'Uy-ro‘zg‘or',
      price: 299000,
      oldPrice: 449000,
      rating: 4.9),
  Product(
      title: 'Maktab uchun daftarlar to‘plami',
      photo: 'photo-1455390582262-044cdead277a',
      category: 'Maktab va ofis',
      price: 59000,
      oldPrice: 89000,
      rating: 4.7),
  Product(
      title: 'Suv o‘tkazmaydigan sport ryukzagi',
      photo: 'photo-1553062407-98eeb64c6a62',
      category: 'Sport',
      price: 239000,
      oldPrice: 359000,
      rating: 4.8),
  Product(
      title: 'Bolalar uchun yumshoq o‘yinchoq',
      photo: 'photo-1559454403-b8fb88521f11',
      category: 'Bolalar uchun',
      price: 99000,
      oldPrice: 149000,
      rating: 4.9),
  Product(
      title: 'Avtomobil uchun telefon ushlagich',
      photo: 'photo-1503376780353-7e6692767b70',
      category: 'Avtotovarlar',
      price: 79000,
      oldPrice: 119000,
      rating: 4.7),
  Product(
      title: 'Klassik uslubdagi quyosh ko‘zoynagi',
      photo: 'photo-1511499767150-a48a237f0083',
      category: 'Aksessuarlar',
      price: 129000,
      oldPrice: 199000,
      rating: 4.8),
  Product(
      title: 'Yumshoq taglikli kundalik krossovka',
      photo: 'photo-1542291026-7eec264c27ff',
      category: 'Poyabzallar',
      price: 389000,
      oldPrice: 559000,
      rating: 4.9),
  Product(
      title: 'Uy uchun dekorativ stol chirog‘i',
      photo: 'photo-1507473885765-e6ed057f782c',
      category: 'Uy-ro‘zg‘or',
      price: 169000,
      oldPrice: 259000,
      rating: 4.8),
  Product(
      title: 'Qahva tayyorlash uchun qo‘l maydalagichi',
      photo: 'photo-1495474472287-4d71bcdd2085',
      category: 'Oziq-ovqat',
      price: 179000,
      oldPrice: 249000,
      rating: 4.9),
  Product(
      title: 'Uy hayvonlari uchun qulay yumshoq yotoq',
      photo: 'photo-1541599540903-216a46ca1dc0',
      category: 'Uy hayvonlari',
      price: 199000,
      oldPrice: 299000,
      rating: 4.8),
  Product(
      title: 'Uy ta’miri uchun asboblar to‘plami',
      photo: 'photo-1581147036324-c17ac41dfa87',
      category: 'Ta’mirlash',
      price: 349000,
      oldPrice: 499000,
      rating: 4.9),
  Product(
      title: 'Bog‘ uchun ko‘chat ekish anjomlari',
      photo: 'photo-1416879595882-3373a0480b5b',
      category: 'Bog‘ va dala',
      price: 119000,
      oldPrice: 179000,
      rating: 4.7),
  Product(
      title: 'Rangli qalam va flomasterlar, 24 dona',
      photo: 'photo-1513364776144-60967b0f800f',
      category: 'Maktab va ofis',
      price: 69000,
      oldPrice: 109000,
      rating: 4.8),
  Product(
      title: 'Simsiz kompyuter sichqonchasi',
      photo: 'photo-1527814050087-3793815479db',
      category: 'Elektronika',
      price: 119000,
      oldPrice: 169000,
      rating: 4.8),
];

class Campaign {
  final String label;
  final String title;
  final String subtitle;
  final String image;
  final Color startColor;
  final Color endColor;

  const Campaign({
    required this.label,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.startColor,
    required this.endColor,
  });

  String get imageUrl =>
      'https://images.unsplash.com/$image?auto=format&fit=crop&w=900&q=85';
}

const campaigns = <Campaign>[
  Campaign(
    label: 'BUGUNGI TAKLIF',
    title: 'Katta xaridlar,\nyengil narxlar',
    subtitle: 'Sevimli mahsulotingizni qulay shartlarda toping',
    image: 'photo-1542291026-7eec264c27ff',
    startColor: Color(0xFF32105F),
    endColor: Color(0xFF8A35E8),
  ),
  Campaign(
    label: 'TEXNIKA HAFTALIGI',
    title: 'Texnika tanlash\nendi osonroq',
    subtitle: 'Telefon, uy jihozlari va aksessuarlar — bir joyda',
    image: 'photo-1511707171634-5f897ff02aa9',
    startColor: Color(0xFF241750),
    endColor: Color(0xFF5968D9),
  ),
  Campaign(
    label: 'UY UCHUN',
    title: 'Uyga fayz\nqo‘shadigan topilmalar',
    subtitle: 'Har kungi qulaylik uchun kerakli buyumlar',
    image: 'photo-1555041469-a586c61ea9bc',
    startColor: Color(0xFF4A1946),
    endColor: Color(0xFFC04684),
  ),
];

class StoreHome extends StatefulWidget {
  const StoreHome({super.key});

  @override
  State<StoreHome> createState() => _StoreHomeState();
}

class _StoreHomeState extends State<StoreHome> {
  final searchController = TextEditingController();
  final quantities = <Product, int>{};
  final favorites = <Product>{};
  String? selectedCategory;
  String query = '';
  int page = 0;
  int bannerIndex = 0;
  String sortMode = 'Tavsiya etilgan';
  String selectedCity = 'Toshkent';
  late final Timer bannerTimer;

  @override
  void initState() {
    super.initState();
    bannerTimer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (!mounted) return;
      setState(() => bannerIndex = (bannerIndex + 1) % campaigns.length);
    });
  }

  int get cartCount => quantities.values.fold(0, (sum, count) => sum + count);
  List<Product> get cartProducts => quantities.entries
      .where((entry) => entry.value > 0)
      .map((e) => e.key)
      .toList();

  @override
  void dispose() {
    bannerTimer.cancel();
    searchController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void _add(Product product) {
    setState(() => quantities[product] = (quantities[product] ?? 0) + 1);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text('${product.title} savatga qo‘shildi'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(label: 'Savat', onPressed: _showCart),
      ));
  }

  void _changeQuantity(Product product, int delta) {
    setState(() {
      final next = (quantities[product] ?? 0) + delta;
      if (next <= 0) {
        quantities.remove(product);
      } else {
        quantities[product] = next;
      }
    });
  }

  void _toggleFavorite(Product product) {
    setState(() {
      if (!favorites.add(product)) favorites.remove(product);
    });
  }

  void _showCart() {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) => StatefulBuilder(
        builder: (context, refreshSheet) {
          final items = cartProducts;
          final total = items.fold<int>(
              0, (sum, p) => sum + p.price * (quantities[p] ?? 0));
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .72,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Savat ($cartCount)',
                        style: const TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w900)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: items.isEmpty
                          ? const EmptyState(
                              icon: Icons.shopping_cart_outlined,
                              title: 'Savatingiz hozircha bo‘sh',
                              subtitle:
                                  'Yoqtirgan mahsulotlaringizni savatga qo‘shing')
                          : ListView.separated(
                              itemCount: items.length,
                              separatorBuilder: (_, __) =>
                                  const Divider(height: 20),
                              itemBuilder: (context, index) {
                                final product = items[index];
                                final count = quantities[product] ?? 0;
                                return Row(children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(product.imageUrl,
                                          width: 64,
                                          height: 64,
                                          fit: BoxFit.cover,
                                          errorBuilder: (_, __, ___) =>
                                              const SizedBox(
                                                  width: 64,
                                                  height: 64,
                                                  child: Icon(Icons
                                                      .shopping_bag_outlined)))),
                                  const SizedBox(width: 12),
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Text(product.title,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w600)),
                                        const SizedBox(height: 5),
                                        Text('${money(product.price)} so‘m',
                                            style: const TextStyle(
                                                color: purple,
                                                fontWeight: FontWeight.w800))
                                      ])),
                                  IconButton(
                                      onPressed: () {
                                        _changeQuantity(product, -1);
                                        refreshSheet(() {});
                                      },
                                      icon: const Icon(
                                          Icons.remove_circle_outline)),
                                  Text('$count',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w800)),
                                  IconButton(
                                      onPressed: () {
                                        _changeQuantity(product, 1);
                                        refreshSheet(() {});
                                      },
                                      icon:
                                          const Icon(Icons.add_circle_outline)),
                                ]);
                              },
                            ),
                    ),
                    if (items.isNotEmpty) ...[
                      const Divider(),
                      Row(children: [
                        const Text('Jami',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700)),
                        const Spacer(),
                        Text('${money(total)} so‘m',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w900))
                      ]),
                      const SizedBox(height: 12),
                      SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                              onPressed: () {
                                Navigator.pop(context);
                                _showCheckout(total);
                              },
                              child:
                                  const Text('Buyurtmani rasmiylashtirish'))),
                    ],
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showCheckout(int total) {
    var payment = 'Qabul qilishda to‘lash';
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (sheetContext) => StatefulBuilder(
        builder: (context, refresh) => SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, 8, 20, MediaQuery.viewInsetsOf(context).bottom + 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Buyurtmani rasmiylashtirish',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 8),
                  const Text('Yetkazib berish ma’lumotlari',
                      style: TextStyle(color: muted)),
                  const SizedBox(height: 14),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Ism va familiya',
                      prefixIcon: Icon(Icons.person_outline),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Telefon raqami',
                      hintText: '+998 __ ___ __ __',
                      prefixIcon: Icon(Icons.phone_outlined),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading:
                        const Icon(Icons.location_on_outlined, color: purple),
                    title: const Text('Topshirish punkti'),
                    subtitle: const Text('Toshkent, shahar bo‘yicha tanlash'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => _message('Topshirish punktini tanlash'),
                  ),
                  const Divider(),
                  const Text('To‘lov usuli',
                      style: TextStyle(fontWeight: FontWeight.w800)),
                  for (final option in [
                    'Qabul qilishda to‘lash',
                    'Uzum karta',
                    'Bank kartasi',
                  ])
                    RadioListTile<String>(
                      value: option,
                      groupValue: payment,
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(option),
                      activeColor: purple,
                      onChanged: (value) =>
                          refresh(() => payment = value ?? payment),
                    ),
                  const Divider(),
                  Row(children: [
                    const Expanded(
                        child: Text('Jami',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800))),
                    Text('${money(total)} so‘m',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900)),
                  ]),
                  const SizedBox(height: 14),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: () {
                        Navigator.pop(sheetContext);
                        setState(() => quantities.clear());
                        showDialog<void>(
                          context: this.context,
                          builder: (context) => AlertDialog(
                            icon: const Icon(Icons.check_circle,
                                color: Color(0xFF27A86B), size: 42),
                            title: const Text('Buyurtma tayyor'),
                            content: Text(
                                'Demo buyurtma ${money(total)} so‘mga rasmiylashtirildi.'),
                            actions: [
                              FilledButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Yaxshi')),
                            ],
                          ),
                        );
                      },
                      icon: const Icon(Icons.lock_outline),
                      label: const Text('Buyurtmani tasdiqlash'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showCitySelector() {
    const cities = [
      'Toshkent',
      'Samarqand',
      'Buxoro',
      'Andijon',
      'Farg‘ona',
      'Namangan',
      'Qarshi',
      'Nukus',
      'Urganch',
    ];
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height * 0.72,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Yetkazib berish shahri',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w900)),
                ),
                const SizedBox(height: 8),
                for (final city in cities)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(city),
                    trailing: selectedCity == city
                        ? const Icon(Icons.check_circle, color: purple)
                        : null,
                    onTap: () {
                      setState(() => selectedCity = city);
                      Navigator.pop(context);
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showProfile() {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) => Padding(
        padding: EdgeInsets.fromLTRB(
            20, 8, 20, MediaQuery.viewInsetsOf(context).bottom + 24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const CircleAvatar(
              radius: 32,
              backgroundColor: Color(0xFFF1E9FF),
              child: Icon(Icons.person_outline, color: purple, size: 32)),
          const SizedBox(height: 12),
          const Text('Uzum Market’ga xush kelibsiz',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900)),
          const SizedBox(height: 6),
          const Text('Buyurtmalar va saralanganlarni bir joyda boshqaring',
              textAlign: TextAlign.center, style: TextStyle(color: muted)),
          const SizedBox(height: 18),
          const TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Telefon raqami',
              hintText: '+998 __ ___ __ __',
              prefixIcon: Icon(Icons.phone_outlined),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                Navigator.pop(context);
                _message('Kirish kodi');
              },
              child: const Text('SMS-kod olish'),
            ),
          ),
        ]),
      ),
    );
  }

  void _showFavorites() {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * .72,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Saralanganlar (${favorites.length})',
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            Expanded(
                child: favorites.isEmpty
                    ? const EmptyState(
                        icon: Icons.favorite_border,
                        title: 'Saralangan mahsulot yo‘q',
                        subtitle: 'Mahsulot yonidagi yurakchani bosib saqlang')
                    : ListView(children: [
                        for (final p in favorites)
                          ListTile(
                              leading: CircleAvatar(
                                  backgroundImage: NetworkImage(p.imageUrl)),
                              title: Text(p.title,
                                  maxLines: 1, overflow: TextOverflow.ellipsis),
                              subtitle: Text('${money(p.price)} so‘m'),
                              trailing: IconButton(
                                  onPressed: () => _add(p),
                                  icon: const Icon(Icons.add_shopping_cart)))
                      ])),
          ]),
        ),
      ),
    );
  }

  void _showProduct(Product product) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) => SafeArea(
          child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.network(product.imageUrl,
                            height: 250,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => const SizedBox(
                                height: 180,
                                child: Center(
                                    child: Icon(Icons.shopping_bag_outlined,
                                        size: 70))))),
                    const SizedBox(height: 16),
                    Text(product.title,
                        style: const TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w900)),
                    const SizedBox(height: 8),
                    Text(
                        '★ ${product.rating}  ·  1 024 ta sharh  ·  ${product.category}',
                        style: const TextStyle(color: muted)),
                    const SizedBox(height: 14),
                    Text('${money(product.price)} so‘m',
                        style: const TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w900)),
                    Text('${money(product.oldPrice)} so‘m',
                        style: const TextStyle(
                            color: muted,
                            decoration: TextDecoration.lineThrough)),
                    const SizedBox(height: 12),
                    const Text(
                        'Uzum Market’da qulay xarid qiling. Mahsulotni savatga qo‘shib, buyurtmangizni rasmiylashtiring.'),
                    const SizedBox(height: 18),
                    SizedBox(
                        width: double.infinity,
                        child: FilledButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                              _add(product);
                            },
                            icon: const Icon(Icons.add_shopping_cart),
                            label: const Text('Savatga qo‘shish'))),
                  ]))),
    );
  }

  void _message(String title) {
    showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(title),
              content: const Text(
                  'Bu demo sahifada bo‘lim tayyor. Buyurtma va profil amallari namoyish uchun ishlaydi.'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Yopish'))
              ],
            ));
  }

  List<Product> get visibleProducts {
    Iterable<Product> result = products;
    if (page == 2) result = favorites;
    if (selectedCategory != null)
      result = result.where((p) => p.category == selectedCategory);
    final needle = query.trim().toLowerCase();
    if (needle.isNotEmpty) {
      result = result.where((p) =>
          p.title.toLowerCase().contains(needle) ||
          p.category.toLowerCase().contains(needle));
    }
    final items = result.toList();
    switch (sortMode) {
      case 'Avval arzonlari':
        items.sort((a, b) => a.price.compareTo(b.price));
        break;
      case 'Avval qimmatlari':
        items.sort((a, b) => b.price.compareTo(a.price));
        break;
      case 'Eng katta chegirma':
        items.sort(
            (a, b) => (b.oldPrice - b.price).compareTo(a.oldPrice - a.price));
        break;
      default:
        break;
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.sizeOf(context).width >= 900;
    final list = visibleProducts;
    final pageTitle = page == 3
        ? 'Savatdagi mahsulotlar'
        : page == 2
            ? 'Saralangan mahsulotlar'
            : query.isNotEmpty
                ? 'Qidiruv natijalari'
                : selectedCategory ?? 'Mashhur mahsulotlar';
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        _topStrip(wide),
        _header(wide),
        if (page == 0 || page == 1) _categoryRail(wide),
        Expanded(
            child: CustomScrollView(controller: scrollController, slivers: [
          if (page == 0 && query.isEmpty && selectedCategory == null) ...[
            SliverToBoxAdapter(child: _hero(wide)),
            SliverToBoxAdapter(child: _promoTiles(wide)),
            SliverToBoxAdapter(
                child: _productRail(
                    'Bugun ko‘p tanlanmoqda', products.take(9).toList(), wide)),
            SliverToBoxAdapter(
                child: _productRail('Yaxshi narxdagi topilmalar',
                    products.skip(9).take(9).toList(), wide)),
          ],
          SliverToBoxAdapter(
              child: _sectionHeading(
                  pageTitle, page == 3 ? 'Savatni ochish' : 'Hammasini ko‘rish',
                  () {
            if (page == 3)
              _showCart();
            else
              setState(() {
                page = 0;
                selectedCategory = null;
                query = '';
                searchController.clear();
              });
          })),
          if (page != 3) SliverToBoxAdapter(child: _filterStrip(wide)),
          if (page == 3)
            SliverToBoxAdapter(child: _cartPreview())
          else if (list.isEmpty)
            const SliverFillRemaining(
                hasScrollBody: false,
                child: EmptyState(
                    icon: Icons.search_off,
                    title: 'Mahsulot topilmadi',
                    subtitle: 'Boshqa so‘z bilan qidirib ko‘ring'))
          else
            SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: wide ? 42 : 16),
                sliver: SliverLayoutBuilder(builder: (context, constraints) {
                  final width = constraints.crossAxisExtent;
                  final count = width >= 1200
                      ? 5
                      : width >= 900
                          ? 4
                          : width >= 620
                              ? 3
                              : 2;
                  return SliverGrid.builder(
                    itemCount: list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: count,
                        crossAxisSpacing: 14,
                        mainAxisSpacing: 16,
                        mainAxisExtent: width < 500 ? 350 : 390),
                    itemBuilder: (context, index) {
                      final p = list[index];
                      return ProductCard(
                          product: p,
                          favorite: favorites.contains(p),
                          count: quantities[p] ?? 0,
                          onFavorite: () => _toggleFavorite(p),
                          onAdd: () => _add(p),
                          onOpen: () => _showProduct(p),
                          onMinus: () => _changeQuantity(p, -1));
                    },
                  );
                })),
          if (page == 0) ...[
            SliverToBoxAdapter(child: _benefits(wide)),
            SliverToBoxAdapter(child: _footer(wide))
          ],
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ])),
      ])),
      bottomNavigationBar: wide
          ? null
          : NavigationBar(
              selectedIndex: page,
              height: 70,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              onDestinationSelected: (index) {
                if (index == 3) {
                  setState(() => page = 3);
                } else if (index == 2) {
                  setState(() => page = 2);
                } else if (index == 4) {
                  setState(() => page = 0);
                  _showProfile();
                } else {
                  setState(() {
                    page = index;
                    selectedCategory = null;
                  });
                }
              },
              destinations: [
                const NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    label: 'Bosh sahifa'),
                const NavigationDestination(
                    icon: Icon(Icons.grid_view_outlined),
                    selectedIcon: Icon(Icons.grid_view),
                    label: 'Katalog'),
                const NavigationDestination(
                    icon: Icon(Icons.favorite_border),
                    selectedIcon: Icon(Icons.favorite),
                    label: 'Saralangan'),
                NavigationDestination(
                    icon: Badge(
                        isLabelVisible: cartCount > 0,
                        label: Text('$cartCount'),
                        child: const Icon(Icons.shopping_cart_outlined)),
                    selectedIcon: Badge(
                        isLabelVisible: cartCount > 0,
                        label: Text('$cartCount'),
                        child: const Icon(Icons.shopping_cart)),
                    label: 'Savat'),
                const NavigationDestination(
                    icon: Icon(Icons.person_outline),
                    selectedIcon: Icon(Icons.person),
                    label: 'Profil'),
              ],
            ),
    );
  }

  Widget _topStrip(bool wide) => Container(
        color: const Color(0xFFF0ECF7),
        padding: EdgeInsets.symmetric(horizontal: wide ? 42 : 16, vertical: 8),
        child: Row(children: [
          const Icon(Icons.location_on_outlined, size: 15, color: purple),
          const SizedBox(width: 5),
          InkWell(
              onTap: _showCitySelector,
              child: Text('$selectedCity  ▾',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 12))),
          const Spacer(),
          if (wide) ...[
            _tinyLink(
                'Topshirish punktlari', () => _message('Topshirish punktlari')),
            _tinyLink('Sotuvchi bo‘lish', () => _message('Sotuvchilar uchun')),
            _tinyLink('Yordam', () => _message('Yordam markazi')),
            _tinyLink('Buyurtmalarim', () => _message('Buyurtmalarim')),
          ],
        ]),
      );

  Widget _tinyLink(String text, VoidCallback onTap) => Padding(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(
          onTap: onTap,
          child:
              Text(text, style: const TextStyle(fontSize: 12, color: muted))));

  Widget _header(bool wide) => Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(wide ? 42 : 16, 12, wide ? 42 : 16, 12),
      child: Row(children: [
        Image.asset('assets/images/uzum_mark.png',
            width: 32,
            height: 32,
            errorBuilder: (_, __, ___) => const Icon(Icons.shopping_bag_rounded,
                color: purple, size: 30)),
        const SizedBox(width: 7),
        const Text('uzum',
            style: TextStyle(
                color: purple,
                fontWeight: FontWeight.w900,
                fontSize: 26,
                letterSpacing: -1.2)),
        if (wide) ...[
          const SizedBox(width: 20),
          FilledButton.tonalIcon(
              onPressed: () => setState(() {
                    page = 1;
                    selectedCategory = null;
                  }),
              icon: const Icon(Icons.grid_view_rounded, size: 18),
              label: const Text('Katalog'),
              style: FilledButton.styleFrom(
                  foregroundColor: purple,
                  backgroundColor: const Color(0xFFF3ECFF))),
        ],
        const SizedBox(width: 12),
        Expanded(
          child: SizedBox(
            height: 44,
            child: TextField(
              controller: searchController,
              onChanged: (value) => setState(() {
                    query = value;
                    page = 0;
                  }),
              onSubmitted: (_) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                hintText: 'Mahsulotlar va turkumlarni izlash',
                hintStyle: const TextStyle(color: muted, fontSize: 13),
                prefixIcon: const Icon(Icons.search, color: muted),
                suffixIcon: query.isEmpty
                    ? null
                    : IconButton(
                        onPressed: () => setState(() {
                              query = '';
                              searchController.clear();
                            }),
                        icon: const Icon(Icons.close),
                      ),
                filled: true,
                fillColor: const Color(0xFFF5F5F7),
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        if (wide) ...[
          const SizedBox(width: 12),
          _headerAction(Icons.person_outline, 'Kirish', _showProfile),
          _headerAction(Icons.favorite_border, 'Saralangan', _showFavorites),
          _headerAction(Icons.shopping_cart_outlined,
              'Savat${cartCount > 0 ? ' ($cartCount)' : ''}', _showCart),
        ],
      ]));

  Widget _headerAction(IconData icon, String label, VoidCallback onTap) =>
      InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Icon(icon, size: 21, color: ink),
                const SizedBox(height: 3),
                Text(label,
                    style: const TextStyle(
                        fontSize: 11, fontWeight: FontWeight.w600))
              ])));

  Widget _categoryRail(bool wide) => Container(
      color: Colors.white,
      height: 46,
      padding: EdgeInsets.symmetric(horizontal: wide ? 42 : 12),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          separatorBuilder: (_, __) => const SizedBox(width: 22),
          itemBuilder: (_, i) => InkWell(
              onTap: () => setState(() {
                    selectedCategory = selectedCategory == categories[i]
                        ? null
                        : categories[i];
                    page = 1;
                  }),
              child: Center(
                  child: Text(categories[i],
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: selectedCategory == categories[i]
                              ? FontWeight.w800
                              : FontWeight.w500,
                          color: selectedCategory == categories[i]
                              ? purple
                              : const Color(0xFF66666B)))))));

  Widget _hero(bool wide) {
    final campaign = campaigns[bannerIndex];
    return Padding(
      padding: EdgeInsets.fromLTRB(wide ? 42 : 16, 20, wide ? 42 : 16, 10),
      child: Container(
        height: wide ? 284 : 226,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(22)),
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 650),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [campaign.startColor, campaign.endColor],
                ),
              ),
            ),
            Positioned(
              right: wide ? 90 : -10,
              top: -80,
              child: _orb(250, const Color(0x24FFFFFF)),
            ),
            Positioned(
              right: wide ? 80 : 18,
              top: 18,
              bottom: 18,
              width: wide ? 310 : 145,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                switchInCurve: Curves.easeOutBack,
                switchOutCurve: Curves.easeIn,
                transitionBuilder: (child, animation) => FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(scale: animation, child: child),
                ),
                child: ClipRRect(
                  key: ValueKey(campaign.image),
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(fit: StackFit.expand, children: [
                    Image.network(
                      campaign.imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        color: const Color(0x22FFFFFF),
                        child: Icon(Icons.shopping_bag_rounded,
                            size: wide ? 150 : 82,
                            color: const Color(0xAAFFFFFF)),
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(.22),
                            Colors.transparent
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(wide ? 34 : 20, 18, 0, 28),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: wide ? 455 : 220),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 350),
                    transitionBuilder: (child, animation) => FadeTransition(
                      opacity: animation,
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(.06, 0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      ),
                    ),
                    child: Column(
                      key: ValueKey(campaign.title),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFD84D),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(campaign.label,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 10)),
                        ),
                        const SizedBox(height: 11),
                        Text(
                          campaign.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            height: 1.02,
                            letterSpacing: -.7,
                            fontSize: wide ? 37 : 25,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          campaign.subtitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.88),
                              fontSize: wide ? 14 : 11,
                              height: 1.3),
                        ),
                        const SizedBox(height: 11),
                        FilledButton(
                          onPressed: () {
                            setState(() {
                              selectedCategory = null;
                              page = 0;
                            });
                            _scrollTop();
                          },
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: purple,
                            visualDensity: VisualDensity.compact,
                          ),
                          child: const Text('Xarid qilish  →'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 16,
              bottom: 12,
              child: Row(
                children: List.generate(campaigns.length, (i) {
                  final active = i == bannerIndex;
                  return GestureDetector(
                    onTap: () => setState(() => bannerIndex = i),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      margin: const EdgeInsets.only(left: 5),
                      width: active ? 22 : 7,
                      height: 7,
                      decoration: BoxDecoration(
                        color: active ? Colors.white : Colors.white54,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              right: 12,
              top: 12,
              child: IconButton.filledTonal(
                tooltip: 'Keyingi aksiya',
                onPressed: () => setState(
                    () => bannerIndex = (bannerIndex + 1) % campaigns.length),
                style: IconButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(.9),
                    foregroundColor: purple,
                    minimumSize: const Size(36, 36)),
                icon: const Icon(Icons.arrow_forward_rounded, size: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final scrollController = ScrollController();
  void _scrollTop() {
    if (scrollController.hasClients)
      scrollController.animateTo(0,
          duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
  }

  Widget _orb(double size, Color color) => Container(
      width: size,
      height: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color));

  Widget _promoTiles(bool wide) {
    const tiles = <(String, IconData, Color)>[
      ('Elektronika', Icons.devices_rounded, Color(0xFFE5E5FF)),
      ('Har kuni uchun', Icons.coffee_rounded, Color(0xFFFFE7D2)),
      ('Moda', Icons.checkroom_rounded, Color(0xFFFFDAE8)),
      ('Bolalar uchun', Icons.toys_rounded, Color(0xFFFFEBA5)),
    ];
    return Padding(
        padding: EdgeInsets.fromLTRB(wide ? 42 : 16, 10, wide ? 42 : 16, 16),
        child: Row(children: [
          for (var i = 0; i < tiles.length; i++)
            Expanded(
                child: Padding(
                    padding:
                        EdgeInsets.only(right: i == tiles.length - 1 ? 0 : 10),
                    child: InkWell(
                        onTap: () {
                          final cat = i == 0
                              ? 'Elektronika'
                              : i == 2
                                  ? 'Kiyim'
                                  : i == 3
                                      ? 'Bolalar uchun'
                                      : 'Oziq-ovqat';
                          setState(() {
                            selectedCategory = cat;
                            page = 1;
                          });
                        },
                        child: Container(
                            height: wide ? 100 : 82,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: tiles[i].$3,
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(children: [
                              Icon(tiles[i].$2,
                                  size: wide ? 36 : 27,
                                  color: const Color(0xFF393047)),
                              if (wide) ...[
                                const SizedBox(width: 9),
                                Expanded(
                                    child: Text(tiles[i].$1,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14)))
                              ]
                            ])))))
        ]));
  }

  Widget _productRail(String title, List<Product> items, bool wide) => Padding(
        padding: EdgeInsets.fromLTRB(wide ? 42 : 16, 14, wide ? 42 : 16, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Expanded(
                child: Text(title,
                    style: const TextStyle(
                        fontSize: 20,
                        letterSpacing: -.35,
                        fontWeight: FontWeight.w900)),
              ),
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    page = 0;
                    selectedCategory = null;
                    sortMode = title.contains('arzon')
                        ? 'Eng katta chegirma'
                        : 'Tavsiya etilgan';
                  });
                  _scrollTop();
                },
                icon: const Icon(Icons.arrow_forward_rounded, size: 17),
                label: const Text('Hammasi'),
                style: TextButton.styleFrom(foregroundColor: purple),
              ),
            ]),
            const SizedBox(height: 10),
            SizedBox(
              height: wide ? 390 : 358,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  final product = items[index];
                  return SizedBox(
                    width: wide ? 220 : 190,
                    child: ProductCard(
                      product: product,
                      favorite: favorites.contains(product),
                      count: quantities[product] ?? 0,
                      onFavorite: () => _toggleFavorite(product),
                      onAdd: () => _add(product),
                      onOpen: () => _showProduct(product),
                      onMinus: () => _changeQuantity(product, -1),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );

  Widget _filterStrip(bool wide) => Padding(
        padding: EdgeInsets.fromLTRB(wide ? 42 : 16, 0, wide ? 42 : 16, 8),
        child: Row(children: [
          Text('${visibleProducts.length} ta mahsulot',
              style: const TextStyle(color: muted, fontSize: 12)),
          const Spacer(),
          PopupMenuButton<String>(
            tooltip: 'Saralash',
            onSelected: (value) => setState(() => sortMode = value),
            itemBuilder: (_) => const [
              PopupMenuItem(
                  value: 'Tavsiya etilgan', child: Text('Tavsiya etilgan')),
              PopupMenuItem(
                  value: 'Avval arzonlari', child: Text('Avval arzonlari')),
              PopupMenuItem(
                  value: 'Avval qimmatlari', child: Text('Avval qimmatlari')),
              PopupMenuItem(
                  value: 'Eng katta chegirma',
                  child: Text('Eng katta chegirma')),
            ],
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFFE7E4EC)),
              ),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                const Icon(Icons.swap_vert_rounded, size: 18, color: purple),
                const SizedBox(width: 5),
                Text(sortMode,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w700)),
                const SizedBox(width: 4),
                const Icon(Icons.keyboard_arrow_down_rounded, size: 17),
              ]),
            ),
          ),
        ]),
      );

  Widget _sectionHeading(String title, String action, VoidCallback onTap) =>
      Padding(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.sizeOf(context).width > 900 ? 42 : 16,
              12,
              MediaQuery.sizeOf(context).width > 900 ? 42 : 16,
              16),
          child: Row(children: [
            Expanded(
                child: Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 21,
                        letterSpacing: -.4))),
            InkWell(
                onTap: onTap,
                child: Row(children: [
                  Text(action,
                      style: const TextStyle(
                          color: purple,
                          fontWeight: FontWeight.w700,
                          fontSize: 12)),
                  const SizedBox(width: 4),
                  const Icon(Icons.arrow_forward, size: 16, color: purple)
                ]))
          ]));

  Widget _cartPreview() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        if (cartProducts.isEmpty)
          const EmptyState(
              icon: Icons.shopping_cart_outlined,
              title: 'Savatingiz hozircha bo‘sh',
              subtitle: 'Mahsulotni tanlab, savatga qo‘shing')
        else ...[
          for (final p in cartProducts)
            Card(
                child: ListTile(
                    leading:
                        CircleAvatar(backgroundImage: NetworkImage(p.imageUrl)),
                    title: Text(p.title,
                        maxLines: 1, overflow: TextOverflow.ellipsis),
                    subtitle: Text('${money(p.price)} so‘m'),
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                      IconButton(
                          onPressed: () => _changeQuantity(p, -1),
                          icon: const Icon(Icons.remove_circle_outline)),
                      Text('${quantities[p]}'),
                      IconButton(
                          onPressed: () => _changeQuantity(p, 1),
                          icon: const Icon(Icons.add_circle_outline))
                    ]))),
          Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                  onPressed: _showCart,
                  child: const Text('Buyurtmani rasmiylashtirish'))),
        ]
      ]));

  Widget _benefits(bool wide) => Padding(
      padding: EdgeInsets.all(wide ? 42 : 16),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Wrap(spacing: 28, runSpacing: 16, children: const [
            Benefit(Icons.local_shipping_outlined, 'Tez yetkazib berish',
                'Buyurtmangiz o‘z vaqtida yetib keladi'),
            Benefit(Icons.verified_outlined, 'Qulay xarid',
                'Yuz minglab mahsulot bir joyda'),
            Benefit(Icons.assignment_return_outlined, 'Oson qaytarish',
                'Xarid qilish yanada xotirjam')
          ])));

  Widget _footer(bool wide) => Container(
        width: double.infinity,
        color: const Color(0xFF211D28),
        padding: EdgeInsets.fromLTRB(wide ? 42 : 18, 32, wide ? 42 : 18, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: wide ? 56 : 28,
              runSpacing: 28,
              children: [
                SizedBox(
                  width: wide ? 250 : 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('uzum market',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 23,
                              letterSpacing: -.6)),
                      const SizedBox(height: 10),
                      const Text(
                          'O‘zbekiston bo‘ylab millionlab mahsulotlar, qulay narxlar va tez yetkazib berish.',
                          style: TextStyle(
                              color: Color(0xFFCAC6D2),
                              fontSize: 12,
                              height: 1.5)),
                      const SizedBox(height: 14),
                      Row(children: [
                        _socialButton(Icons.send_rounded),
                        const SizedBox(width: 8),
                        _socialButton(Icons.camera_alt_outlined),
                        const SizedBox(width: 8),
                        _socialButton(Icons.play_arrow_rounded),
                      ]),
                    ],
                  ),
                ),
                _footerColumn('Xaridorlarga', [
                  'Yordam markazi',
                  'Yetkazib berish',
                  'To‘lov va qaytarish',
                  'Buyurtmalarim',
                ]),
                _footerColumn('Hamkorlarga', [
                  'Sotuvchi bo‘lish',
                  'Hamkorlik dasturi',
                  'Topshirish punktlari',
                ]),
                _footerColumn('Uzum Market', [
                  'Biz haqimizda',
                  'Vakansiyalar',
                  'Foydalanish shartlari',
                ]),
              ],
            ),
            const SizedBox(height: 24),
            const Divider(color: Color(0xFF403A48)),
            const SizedBox(height: 8),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 8,
              children: const [
                Text('© 2026 Uzum Market. Barcha huquqlar himoyalangan.',
                    style: TextStyle(color: Color(0xFFAAA4B3), fontSize: 11)),
                Text('Ommaviy oferta   ·   Maxfiylik siyosati',
                    style: TextStyle(color: Color(0xFFAAA4B3), fontSize: 11)),
              ],
            ),
          ],
        ),
      );

  Widget _footerColumn(String title, List<String> links) => SizedBox(
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w800)),
            const SizedBox(height: 12),
            for (final link in links)
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: InkWell(
                  onTap: () => _message(link),
                  child: Text(link,
                      style: const TextStyle(
                          color: Color(0xFFCAC6D2), fontSize: 12)),
                ),
              ),
          ],
        ),
      );

  Widget _socialButton(IconData icon) => Container(
        width: 34,
        height: 34,
        decoration: BoxDecoration(
            color: const Color(0xFF393340),
            borderRadius: BorderRadius.circular(10)),
        child: Icon(icon, size: 18, color: Colors.white),
      );
}

class HoverScale extends StatefulWidget {
  final Widget child;
  const HoverScale({super.key, required this.child});

  @override
  State<HoverScale> createState() => _HoverScaleState();
}

class _HoverScaleState extends State<HoverScale> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) => MouseRegion(
        onEnter: (_) => setState(() => hovered = true),
        onExit: (_) => setState(() => hovered = false),
        child: AnimatedScale(
          scale: hovered ? 1.025 : 1,
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: hovered
                  ? [
                      BoxShadow(
                        color: purple.withOpacity(.12),
                        blurRadius: 22,
                        offset: const Offset(0, 8),
                      )
                    ]
                  : const [],
            ),
            child: widget.child,
          ),
        ),
      );
}

class ProductCard extends StatelessWidget {
  final Product product;
  final bool favorite;
  final int count;
  final VoidCallback onFavorite, onAdd, onOpen, onMinus;

  const ProductCard(
      {super.key,
      required this.product,
      required this.favorite,
      required this.count,
      required this.onFavorite,
      required this.onAdd,
      required this.onOpen,
      required this.onMinus});

  @override
  Widget build(BuildContext context) => HoverScale(
      child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
              onTap: onOpen,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Stack(fit: StackFit.expand, children: [
                      Image.network(product.imageUrl,
                          fit: BoxFit.cover,
                          frameBuilder: (context, child, frame, syncLoaded) =>
                              AnimatedOpacity(
                                  opacity: frame == null && !syncLoaded ? 0 : 1,
                                  duration: const Duration(milliseconds: 320),
                                  curve: Curves.easeOut,
                                  child: child),
                          errorBuilder: (_, __, ___) => Container(
                              color: const Color(0xFFF0EEF4),
                              child: const Center(
                                  child: Icon(Icons.shopping_bag_outlined,
                                      size: 54, color: Color(0xFFB9AEC8))))),
                      Positioned(
                          left: 8,
                          top: 8,
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 4),
                              decoration: BoxDecoration(
                                  color: purple,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text(product.badge,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 9)))),
                      Positioned(
                          right: 7,
                          top: 7,
                          child: IconButton.filledTonal(
                              onPressed: onFavorite,
                              style: IconButton.styleFrom(
                                  backgroundColor:
                                      Colors.white.withOpacity(.92),
                                  minimumSize: const Size(34, 34),
                                  padding: EdgeInsets.zero),
                              icon: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 220),
                                transitionBuilder: (child, animation) =>
                                    ScaleTransition(
                                  scale: animation,
                                  child: child,
                                ),
                                child: Icon(
                                  favorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  key: ValueKey(favorite),
                                  size: 18,
                                  color:
                                      favorite ? const Color(0xFFE83F74) : ink,
                                ),
                              ))),
                      Positioned(
                          left: 8,
                          bottom: 8,
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFD84D),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text('ARZON NARX',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 8)))),
                    ])),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 9, 10, 9),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(product.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      height: 1.22,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: 5),
                              Row(children: [
                                const Icon(Icons.star_rounded,
                                    size: 14, color: Color(0xFFFFB800)),
                                const SizedBox(width: 3),
                                Text('${product.rating}  ·  1 024 ta sharh',
                                    style: const TextStyle(
                                        color: muted, fontSize: 10))
                              ]),
                              const SizedBox(height: 5),
                              Text('${money(product.oldPrice)} so‘m',
                                  style: const TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: muted,
                                      fontSize: 10)),
                              Row(children: [
                                Expanded(
                                    child: Text('${money(product.price)} so‘m',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w900))),
                                const SizedBox(width: 4),
                                if (count == 0)
                                  IconButton.filled(
                                      key: const ValueKey('add-to-cart'),
                                      onPressed: onAdd,
                                      style: IconButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFFFFD84D),
                                          foregroundColor: ink,
                                          minimumSize: const Size(34, 34),
                                          padding: EdgeInsets.zero),
                                      icon: const Icon(Icons.add_shopping_cart,
                                          size: 17))
                                else
                                  Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                            onPressed: onMinus,
                                            constraints:
                                                const BoxConstraints.tightFor(
                                                    width: 30, height: 32),
                                            padding: EdgeInsets.zero,
                                            icon: const Icon(
                                                Icons.remove_circle_outline,
                                                size: 20)),
                                        Text('$count',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w800)),
                                        IconButton(
                                            onPressed: onAdd,
                                            constraints:
                                                const BoxConstraints.tightFor(
                                                    width: 30, height: 32),
                                            padding: EdgeInsets.zero,
                                            icon: const Icon(
                                                Icons.add_circle_outline,
                                                size: 20))
                                      ])
                              ]),
                              Text(
                                  'Oyiga ${money(product.price ~/ 12)} so‘mdan',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: Color(0xFF6F3BB8),
                                      fontSize: 9,
                                      fontWeight: FontWeight.w700)),
                            ])),
                  ]))));
}

class Benefit extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;
  const Benefit(this.icon, this.title, this.subtitle, {super.key});
  @override
  Widget build(BuildContext context) => SizedBox(
      width: 260,
      child: Row(children: [
        Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
                color: const Color(0xFFF4EEFF),
                borderRadius: BorderRadius.circular(13)),
            child: Icon(icon, color: purple)),
        const SizedBox(width: 12),
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.w800, fontSize: 13)),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(color: muted, fontSize: 11))
        ]))
      ]));
}

class EmptyState extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;
  const EmptyState(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});
  @override
  Widget build(BuildContext context) => Center(
      child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(icon, size: 54, color: const Color(0xFFB5A7C8)),
            const SizedBox(height: 12),
            Text(title,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
            const SizedBox(height: 6),
            Text(subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(color: muted))
          ])));
}

String money(int amount) {
  final digits = amount.toString();
  final out = StringBuffer();
  for (var i = 0; i < digits.length; i++) {
    if (i != 0 && (digits.length - i) % 3 == 0) out.write(' ');
    out.write(digits[i]);
  }
  return out.toString();
}
