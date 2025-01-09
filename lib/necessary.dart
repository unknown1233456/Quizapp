import 'package:flutter/material.dart';

double imagesize=300;
double textsize=20;
double buttontextsize=19;
//Set  the gradient

//set image and size of image 
class ImageSet extends StatelessWidget {
  const ImageSet(this.image,this.size,this.color,{super.key});
  final String image;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Image.asset(image,width: size,color: color);
  }
}

//Set Text and size of text
class SetText extends StatelessWidget {
  const SetText(this.text,this.fosize, {super.key});
  final String text;
  final double? fosize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fosize,
      ),
    );
  }
}

//set width and size of sizedbox
class SetSize extends StatelessWidget {
  const SetSize(this.width,this.height,{super.key,});
final double width;
final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      height: height,
    );
  }
}

//outlined button