import 'package:flutter/material.dart';

class Product {
  String?name, image, description;
  List<Color> ?colors;
  double rating, price;
       double? discount;
  List<String> images, size;
  bool favorite;
  Color color;

  Product({
    required this.favorite,
    required this.name,
    required this.image,
    required this.description,
    required this.size,
    required this.colors,
    required this.rating,
    required this.price,
     this.discount,
    required this.images,
    required this.color,
  });
}

List demoProduct = [
  Product(
      name: 'Nike Air Max 20',
      image: 'assets/images/nike air max list pic1.jpg',
      description: 'Walk on Air with this full range of iconic classics and modern masterpieces.',
      size: ['US 6', 'US 7', 'US 8', 'US 9'],
      colors: [
        Colors.amber,
        Colors.redAccent,
        Colors.pinkAccent,
        Colors.blueAccent,
      ],
      color: Color(0xFFB5F18E),
      rating: 4.5,
      price: 240.00,
      discount: 30,
      images: [
        'assets/images/nike air max list pic1.jpg',
        'assets/images/nike air max list pic2.jpg',
        'assets/images/nike air max list pic3.jpg',
        'assets/images/nike air max list pic4.jpg',
      ],
    favorite: true
  ),
  Product(
      name: 'Excee Sneakers',
      image: 'assets/images/excee sneakers main pic.jpg',
      description: 'Elongated lines on the upper bring the 90s look you \nlove into a new, modern space.',
      size: ['US 5','US 6','US 7'],
      colors: [
        Colors.black,
        Colors.greenAccent,
        Colors.tealAccent,
        Colors.cyanAccent,
      ],
      color: Color(0xFF4EFAFA),
      rating: 3.0,
      price: 260.00,
      images: [
        'assets/images/excee sneakers list pic1.jpg',
        'assets/images/excee sneakers list pic2.jpg',
        'assets/images/excee sneakers list pic3.jpg',
        'assets/images/excee sneakers list pic4.jpg',
        'assets/images/excee sneakers list pic5.jpg',
      ],
    favorite: false
  ), Product(
      name: 'Air Max Motion 2',
      image: 'assets/images/air max motion 2 main pic.jpeg',
      description: ' A large, U-shaped Max Air unit provides while a heel clip delivers extra cushioning.',
      size: ['US 4','US 5','US 6','US 7'],
      colors: [
        Colors.lightBlue,
        Colors.greenAccent,
        Colors.red,
        Colors.orange,
      ],
      color: Color(0xFFEEB4FF),
      rating: 4.1,
      price: 250.00,
      discount: 40,
      images: [
        'assets/images/air max motion 2  lis pic1.jpeg',
        'assets/images/air max motion 2  lis pic2.jpeg',
        'assets/images/air max motion 2  lis pic3.jpeg',
        'assets/images/air max motion 2  lis pic4.jpeg',
        'assets/images/air max motion 2  lis pic5.jpeg'
      ],
    favorite: false
  ), Product(
      name: 'Leather Sneaker',
      image: 'assets/images/leather sneaker main pic.jpg',
      description: 'Shop Premium Men\'s Leather Sneakers,Classic and Heritage Leathers.',
      size: ['US 3','US 5','US 8'],
      colors: [
        Colors.red,
        Colors.blue,
        Colors.teal,
        Colors.greenAccent,
      ],
      color: Color(0xFFAAFFD3),
      rating: 3.9,
      price: 280.00,
      discount: 40,
      images: [
        'assets/images/leather sneaker  lis pic1.jpg',
        'assets/images/leather sneaker  lis pic2.jpg',
        'assets/images/leather sneaker  lis pic3.jpg',
        'assets/images/leather sneaker  lis pic4.jpg',
        'assets/images/leather sneaker  lis pic5.jpg',
      ],
    favorite: true
  ),
];