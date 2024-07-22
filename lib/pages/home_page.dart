import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palugada/controllers/home_controller.dart';
import 'package:palugada/pages/detail_page.dart';
import 'package:palugada/pages/widgets/button_nav.dart';
import 'package:palugada/pages/widgets/kategori_widget.dart';
import 'package:palugada/pages/widgets/populer_widget.dart';
import 'package:palugada/pages/widgets/sedang_ramai_widget.dart';
import 'package:palugada/utilities/asset_constants.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF1f96e6),
                            Color(0xFF006cb4),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      padding: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Palugada",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextField(
                                  controller: SearchController(),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                    hintText: "Cari buku..",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 15),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.tune),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.symmetric(horizontal:25,vertical: 15,),
                        child: Column(
                          children: [
                            Container(
                              width: 450,
                              decoration: const BoxDecoration(
                                  // color: Colors.grey,
                                  ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kategori",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        menuKategori(
                                          color: Color(0xFFffdada),
                                          icon: AssetsConstant.icAction,
                                          title: "Aksi",
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        menuKategori(
                                          color: Color(0xFFc3ffd4),
                                          icon: AssetsConstant.icFantasi,
                                          title: "Fantasi",
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        menuKategori(
                                          color: Color(0xFFfff8b7),
                                          icon: AssetsConstant.icSejarah,
                                          title: "Sejarah",
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        menuKategori(
                                          color: Color(0xFFffdada),
                                          icon: AssetsConstant.icAction,
                                          title: "Horror",
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        menuKategori(
                                          color: Color(0xFFc3ffd4),
                                          icon: AssetsConstant.icFantasi,
                                          title: "Aksi",
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        menuKategori(
                                          color: Color(0xFFfff8b7),
                                          icon: AssetsConstant.icSejarah,
                                          title: "Aksi",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Populer",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        populerWidget(
                                          cover: AssetsConstant.smplCars,
                                          judul: "Lorem Ipsum ama si Amet",
                                          penulis: "Ucup Baiq",
                                          onTap: (){Get.to(DetailPage());},
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        populerWidget(
                                          cover: AssetsConstant.smplDilam,
                                          judul: "Lorem Ipsum ama si Amet",
                                          penulis: "Ucup Baiq",
                                          onTap: (){Get.to(DetailPage());},
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        populerWidget(
                                          cover: AssetsConstant.smplOpnHeimmer,
                                          judul: "Lorem Ipsum ama si Amet",
                                          penulis: "Ucup Baiq",
                                          onTap: (){Get.to(DetailPage());},
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        populerWidget(
                                          cover: AssetsConstant.smplPeaky,
                                          judul: "Lorem Ipsum ama si Amet",
                                          penulis: "Ucup Baiq",
                                          onTap: (){Get.to(DetailPage());},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sedang Ramai",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        sedangRamaiWidget(
                                          sampul: AssetsConstant.smplCars,
                                          judul: "Cars anjay wkwkw xixixi",
                                          penulis: "Mamat Jhon Doe",
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        sedangRamaiWidget(
                                          sampul: AssetsConstant.smplCars,
                                          judul: "Cars anjay wkwkw xixixi",
                                          penulis: "Mamat Jhon Doe",
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: 25,
                        left: 25,
                        top: 10,
                        bottom: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: Offset(0, 1.5), // shadow direction: top
                          ),
                        ],
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            butttonNav(
                              icon: AssetsConstant.icHome,
                              title: "Beranda",
                            ),
                            butttonNav(
                              icon: AssetsConstant.icFavorit,
                              title: "Favorit",
                            ),
                            butttonNav(
                              icon: AssetsConstant.icCart,
                              title: "Keranjang",
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  padding: EdgeInsets.all(5),
                                  child: SizedBox(
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage(AssetsConstant.smplCars),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Profil",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
