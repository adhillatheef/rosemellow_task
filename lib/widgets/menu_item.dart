import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Item extends StatelessWidget {
  final String imageUrl;
  final String name;
  const Item({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: 200,
              fit: BoxFit.cover,
              imageBuilder: (context, imageProvider) => Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) =>  SizedBox(
                height: 200,
                child: Lottie.asset('assets/lottie/image_loading.json'),
              ),
              errorWidget: (context, url, error) =>const Icon(Icons.error),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffEA0029),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
              ),
              //height: 80,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(name, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
