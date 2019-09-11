import 'package:flutter/material.dart';
import 'detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'ADIDAS Sport Shoes',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black87,
            ),
            body: GridView.count(
                crossAxisCount: 2,
                children: List.generate(items.length, (index) {
                  return Center(
                    child: ItemCard(item: items[index]),
                  );
                }))));
  }
}

class Item {
  const Item({this.image, this.title, this.subtitle});

  final String image;
  final String title;
  final String subtitle;
}

const List<Item> items = const <Item>[
  const Item(
      image:
          "https://static.shop.adidas.co.id/media/catalog/product/cache/2/small_image/230x/9df78eab33525d08d6e5fb8d27136e95/G/5/G54011_SL_eCom.jpg",
      title: "Ultraboost 19 Shoes",
      subtitle: "Ultraboost reinvented. These running shoes reboot key performance technologies to give you a confident and energy-filled run. The knit upper has a second-skin fit and is built with motion-weave technology for adaptive stretch and support. Dual-density cushioning delivers medial support and an energised ride. Engineered fit adidas Primeknit 360 upper offers an engineered fit that expands and supports as you move through each stride Endless energy Dual-density Boost cushioning on the medial side provides energised stability for a smooth, responsive ride Support through your stride Torsion Spring is embedded in the midsole to provide support during landing and propulsion at toe-off"),
  const Item(
      image:
          "https://static.shop.adidas.co.id/media/catalog/product/cache/2/small_image/230x/9df78eab33525d08d6e5fb8d27136e95/F/3/F34407_SL_eCom.jpg",
      title: "Nemeziz 19.1 Firm Ground Boots",
      subtitle: "Nemeziz isn't just a boot. It's a commitment that skills should be about wins, not likes. If you'd take celebrity over silverware, get out of here. But if you're ready to rip up the pitch to carry your team to victory, read on. The stretchy upper on these football boots is weaved using different widths and tensions of tape to match your foot shape. The result is a lockdown fit that provides stability and a direct touch."),
  const Item(
      image:
          "https://static.shop.adidas.co.id/media/catalog/product/cache/2/small_image/230x/9df78eab33525d08d6e5fb8d27136e95/F/3/F35316_SL_eCom.jpg",
      title: "X 19.1 Firm Ground Boots",
      subtitle: "X isn't just a boot. It's a recognition that speed should prise open defences, not dart down blind alleys. If you can't lead the charge with your lightning pace, jog on. But if you're ready to push past your limits, keep reading. These football boots have a thin upper for a minimal feel, responsive touch and lightning pace. A low-cut collar and moulded heel combine to keep you stable during explosive moves. "),
  const Item(
      image:
          "https://static.shop.adidas.co.id/media/catalog/product/cache/2/thumbnail/1200x/9df78eab33525d08d6e5fb8d27136e95/F/3/F35519_SL_eCom.jpg",
      title: "Copa 19.1 Firm Ground Boots",
      subtitle: "Copa isn't just a boot. It's an agreement that every fleeting touch should leave a lasting impression. If you can't make your mark on a match, move along. But if you're ready to take your touch to a new dimension, keep reading. These football boots seamlessly fuse a stretchy knit textile collar with a soft, ridged K-leather vamp. The result is secure lockdown, wraparound comfort and smooth-as-silk ball contact."),
  const Item(
      image:
          "https://static.shop.adidas.co.id/media/catalog/product/cache/2/thumbnail/1200x/9df78eab33525d08d6e5fb8d27136e95/F/3/F35606_SL_eCom.jpg",
      title: "Predator 19.1 Firm Ground Boots",
      subtitle: "Predator isn't just a boot. It's a statement that actions speak louder than words. If you can't back your chat with total control, pipe down. But if you're ready to dominate to the final whistle, keep reading. The upper on these football boots is made from foot-hugging knit textile for secure lockdown. A textured coating on the forefoot grips the ball to maximise the precision of every pass and shot."),
  const Item(
      image:
          "https://static.shop.adidas.co.id/media/catalog/product/cache/2/thumbnail/1200x/9df78eab33525d08d6e5fb8d27136e95/F/3/F35618_SL_eCom.jpg",
      title: "Predator 19.1 Trainers",
      subtitle: "Predator isn't just a trainer. It's a conviction that life is there for the taking. If you can't find the guts to seize control, get lost. But if you're ready to own your destiny, keep reading. These football shoes are styled after their famous on-field counterparts. A snug-fitting upper locks your foot down. Responsive cushioning returns energy as you take it all in your stride."),
  const Item(
      image:
      "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/4689889e35f74a968401aa9c00b256ef_9366/Predator_19.3_Firm_Ground_Cleats_Gold_G25793_01_standard.jpg",
      title: "Predator 19.3 Firm Ground Cleats",
      subtitle: "Predator isn't just a cleat. It's a statement that actions speak louder than words. If you can't back your chat with total control, pipe down. But if you're ready to dominate to the final whistle, keep reading. The soft synthetic upper on these juniors' soccer cleats provides a sock-like fit to securely lock you in. Embossing on the forefoot grips the ball to add control when passing and shooting."),
  const Item(
      image:
      "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/1f3b4bf8def24991be70aa070008f7b4_9366/Alphabounce+_Run_Shoes_Black_G28571_01_standard.jpg",
      title: "Alphabounce+ Run Shoes",
      subtitle: "Sprint, squat, lunge. These lightweight and supportive shoes are built for running and cross-training. The breathable mesh upper is built with targeted areas of support and stretch for confident multidirectional movement. Flexible cushioning adds spring to your step."),
  const Item(
      image:
      "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/8999f72d569a46e3aaebaa6a00e4a699_9366/D.O.N._Issue_1_Shoes_Blue_EF2932_01_standard.jpg",
      title: "D.O.N. Issue #1 Shoes",
      subtitle: "These juniors' basketball shoes reflect Donovan Mitchell's determination to succeed. The herringbone-pattern rubber outsole provides the traction needed to make quick and decisive cuts in the paint. A propulsion clip on the side gives you lateral support for dynamic moves, while a flexible Bounce midsole offers instant step-in comfort and a cushioned, responsive ride. "),
  const Item(
      image:
      "https://assets.adidas.com/images/w_320,h_320,f_auto,q_auto:sensitive,fl_lossy/361bd22907aa4bba89eeaa0701133925_9366/Dame_5_Shoes_Black_EF9367_01_standard.jpg",
      title: "Dame 5 Shoes",
      subtitle: "Made to play fresh out of the box, these low top basketball shoes are designed with Damian Lillard's signature style. Built with a textile upper, they feature flexible cushioning for lightweight comfort on every step-back jumper. The herringbone outsole lets you change directions on a dime."),
];

class ItemCard extends StatelessWidget {
  const ItemCard({Key key, this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetailView(item: item)));
        },
        child: Card(
            color: Colors.black87,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: FadeInImage.assetNetwork(
                          placeholder: 'assets/image/load.gif',
                          image: item.image)),
                  SizedBox(height: 12),
                  Text(item.title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(height: 12),
                ],
              ),
            )
        )
    );
  }
}
