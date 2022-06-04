library np_plug;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

/// A Calculator.

class np_plug extends StatefulWidget {
  const np_plug({Key? key}) : super(key: key);

  @override
  State<np_plug> createState() => _np_plugState();
}

class _np_plugState extends State<np_plug> {
  List<String> imgurl = [
    "https://upload.wikimedia.org/wikipedia/commons/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg",
    "https://s1.1zoom.me/b5050/118/382462-svetik_3840x2160.jpg",
    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",
    "https://shotkit.com/wp-content/uploads/2021/01/nature-photography.jpg",
    "https://oecdenvironmentfocusblog.files.wordpress.com/2020/06/wed-blog-shutterstock_1703194387_low_nwm.jpg",
    "https://myrepublica.nagariknetwork.com/uploads/media/nature_20210209150332.jpeg",
    "https://fancycrave.com/wp-content/uploads/2019/12/Free-Nature-Pictures-min.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: imgurl.length,
       itemBuilder: (context,index,pageViewInde){
         return Container( child: Image.network(imgurl.elementAt(index)));
       }, options: CarouselOptions(autoPlay: true)
       ),
    );
  }
}
