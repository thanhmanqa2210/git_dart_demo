import 'dart:math';
import 'banner.dart';

sumInt(dynamic a, int b) {
  // biến chấp nhận mọi kiểu thì dùng dynamic
  return a + b;
}

double tinhtong(var a, {var b: 0, var c: 0}) {
  return a + b + c;
}

enum userGroup {
  guest,
  admin,
  member,
}
//tương tự hàm dưới
double tinhtong1(dynamic a, {var b, var c}) => a + b + c;

f1(var a, var b, var print) {
  //Ham ẩn danh
  var c = a + b;
  print(c);
}

class Product {
  String manufacture = "";
  String name = "";
  var price;
  var quantity;

  Product(var price, {var quantity: 1}) {
    this.price = price;
    this.quantity = quantity;
  }
  Product.iphone(var price, {var quantity: 1}) {
    this.price = price;
    this.quantity = quantity;
    this.manufacture = " Apple";
  }
  get nameProduct {
    return this.name;
  }

  set nameProduct(name) {
    this.name = name;
    switch (this.name) {
      case "Iphone 6":
        this.manufacture = "Apple";
        break;
      case "Galaxy S19":
        this.manufacture = "Samsung";
        break;
      default:
        this.manufacture = "Other";
        break;
    }
  }

  static showListStore() {
    print(" Store 1....");
    print(" Store 2....");
  }

  calulateTotal() {
    return this.price * this.quantity;
  }

  showTotal() {
    var tong = this.calulateTotal();
    print(" Tong tiền la : $tong");
  }

  @override
  String toString() {
    // TODO: implement toString
    return this.showTotal();
  }
}

class Table extends Product {
  double length = 0;
  double width = 0;
  Table(var giatien) : super(giatien, quantity: 1) {
    this.name = "Bàn Ăn";
  }
  @override
  showTotal() {
    // TODO: implement showTotal
    print("Tên sản phẩm : " + this.name);
    super.showTotal();
  }
}

abstract class A {
  var name = " My abtract class";
  void displayInfomation();
}

class B extends A {
  @override
  void displayInfomation() {
    print(this.name);
  }
}

class C implements B {
  @override
  String name;
  @override
  void displayInfomation() {}
}

main() {
  // var iterable = Iterable.generate(100);
  // for (var item in iterable) {
  //   print(item);
  // }
  var tong;
  var i = B();
  i.displayInfomation();
  var usergroup = userGroup.admin;
  var product = Product(300, quantity: 3);
  // product.iphone(23, quantity: 4);
  // product.quantity = 3;
  product.nameProduct = "Iphone 6";
  var info = product.nameProduct;
  print(info);
  product.toString();
  product = Product.iphone(230);
  product.showTotal();
  var table = Table(360);
  table
    ..showTotal()
    ..toString();
  // tương đương với cách gọi ở bên dưới
  //table.showTotal();
  Product.showListStore();
  switch (usergroup) {
    case userGroup.admin:
      print(" Quản trị hệ thống");
      break;
    case userGroup.guest:
      print("Khach hàng ");
      break;
    default:
      print(" Thành Viên ");
      break;
  }
  var map = {
    'T2': 'Thứ 2',
    'T3': 'Thứ 3',
    'T4': 'Thứ 4',
  };
  f1(2, 3, (x) {
    print("Tong la : $x");
  });
  var tong2 = tinhtong1(4.0, c: 5, b: 4);
  print("tong la $tong2");
  map.putIfAbsent('T5', () => 'Thứ 5');
  print(map);
  String aa = "S2";
  String ab = "S1";
  String bb = aa + ab;
  var abc = double.parse('44454.22');
  var a = 10;
  tong = sumInt(a, 20);
  print("Tong la : $tong");
  print('abc = $abc');
  print(bb);
  var sqrtvalue = sqrt(tong);
  banner();
  print(" Căn bậc 2 của tổng là : $sqrtvalue");
}
