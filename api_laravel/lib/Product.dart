

class Product {
   String name = '';
   int price = 0;

  Product(this.name, this.price);

  Product.fromJson(Map<String, dynamic> json)
  {
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'price': price,
  };

  String show() => name;
}
