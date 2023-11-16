class NormalClass extends Object {
  final String name;

  NormalClass({required this.name});

  ///toString()
  ///override
  @override
  String toString() {
    // return "fjaksldfj";
    return name;
  }

  @override
  int get hashCode => name.hashCode;
  //object == object

  //override operator

  @override
  bool operator ==(covariant dynamic other) {
    return other.hashCode == hashCode;
  }

  //this + other datatype
  operator +(covariant NormalClass other) {
    return true;
  }
}

void main() {
  NormalClass normalClass = NormalClass(name: "mg mg");
  NormalClass normalClass2 = NormalClass(name: "mg mg");

  bool result = normalClass + normalClass2;

  print(result);

  ///toString()
  // double i = 1;
  // i.toString();

  print(normalClass == "mg mg");

  ProductData user1Product = ProductData(products: []);
  ProductData user2Product = ProductData(products: []);
  final List list = [];
  list.addAll(user1Product.products);
  list.addAll(user2Product.products);
  ProductData totalProduct = ProductData(products: list);

  ///warehouse 10
  ///warehouse 1 => 10
  ///warehouse 2 => 3
  ///...
  // final totalResult = w1 - w2 - w3 - w4 + w5 + w6 + w7 + w8;
}

class ProductData {
  final List products;

  ProductData({required this.products});
}
