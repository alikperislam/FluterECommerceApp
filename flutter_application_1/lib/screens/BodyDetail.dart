import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/Product.dart';

class BodyDetail extends StatelessWidget {
  final Product product;
  const BodyDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Color",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  renk(
                                      color: Color(0xFF356C95),
                                      seciliMi: false),
                                  renk(color: Colors.orange, seciliMi: true),
                                  renk(
                                      color: Color(0xFFA29B9B),
                                      seciliMi: false),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 120),
                                    child: yazilar(product: product),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 30),
                                child: Text(
                                  product.description,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              CartSayac(),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              child: Center(
                                  child: Icon(
                                Icons.shopping_cart_outlined,
                                color: product.color,
                              )),
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: product.color,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35),
                              child: Container(
                                child: Center(
                                    child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                height: 60,
                                width: 250,
                                decoration: BoxDecoration(
                                  color: product.color,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: product.color,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                titleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartSayac extends StatefulWidget {
  const CartSayac({Key? key}) : super(key: key);

  @override
  _CartSayacState createState() => _CartSayacState();
}

class _CartSayacState extends State<CartSayac> {
  int deger = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  deger++;
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text("$deger", style: TextStyle(fontSize: 22)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  if (deger == 0) {
                    deger = 0;
                  } else {
                    deger--;
                  }
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 140),
          child: Icon(
            Icons.star,
            size: 35,
            color: Colors.amber[800],
          ),
        ),
      ],
    );
  }
}

class yazilar extends StatelessWidget {
  final Product product;
  const yazilar({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
        ),
        Text(
          "${product.size}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ],
    );
  }
}

class renk extends StatelessWidget {
  final Color color;
  final bool seciliMi;
  const renk({Key? key, required this.color, required this.seciliMi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: seciliMi ? color : Colors.transparent,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class titleWithImage extends StatelessWidget {
  const titleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristoctatic Hand Bag",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Text(
            product.title,
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 1,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$ ${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image(
                    image: AssetImage(
                      product.image,
                    ),
                    fit: BoxFit.fill, // fotoğrafları belli bir kutuda tutuyor.
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
