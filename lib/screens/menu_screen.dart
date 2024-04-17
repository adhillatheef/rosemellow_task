import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosemellow_task/controller/menu_controller.dart';
import 'package:rosemellow_task/widgets/menu_item.dart';

class MenuScreen extends StatelessWidget {
  final controller = Get.put(MenuScreenController());

   MenuScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  GetBuilder<MenuScreenController>(
      builder: (obj) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffEA0029),
            centerTitle: true,
            title: const Text("Menu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            leading: const Icon(Icons.arrow_back_ios_new,color: Colors.white,),
            actions: const[
               Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Icon(Icons.home_outlined,color: Colors.white,size: 32,),
               )
            ],
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffEA0029),
                  Color(0xff000000),
                  Color(0xff000000),
                ],
              ),
            ),
            child:   GridView.builder(
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: controller.menuItems.length,
                itemBuilder: (context, index) {
                  final menuItem = controller.menuItems[index];
                  return GestureDetector(
                    onTap: () {
                      // Handle item tap if needed
                    },
                    child: Card(
                      elevation: 2.0,
                      child: Expanded(child: Item(imageUrl: menuItem.images != null && menuItem.images!.isNotEmpty
                          ? menuItem.images![0]
                          : 'https://storage.googleapis.com/proudcity/mebanenc/uploads/2021/03/placeholder-image.png', name: menuItem.name ?? 'Loading...')),
                    ),
                  );
                },
              ),
          ),
        );
      }
    );
  }
}
