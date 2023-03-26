
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productProvider = Provider<List<Product>>((ref){
  return Products;
});

class Product {
  Product(
  {required this.name,required this.dsc});

  final String name;
  final String dsc;
}

final Products = [
  Product (name: 'appbar', dsc: 'hello'),
  Product (name: 'Body',dsc: 'hello' ),
];