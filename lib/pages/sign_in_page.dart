import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palugada/controllers/sign_in_controller.dart';
import 'package:palugada/pages/home_page.dart';
import 'package:palugada/pages/widgets/password_widget.dart';
import 'package:palugada/utilities/asset_constants.dart';
import 'package:palugada/widgets/button/button_icon.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final SignInController controller = Get.put(SignInController());

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
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF1f96e6),
                      Color(0xFF006cb4),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(25),
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Masuk",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(25),
                        width: 450,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Selamat Datang !",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    height: 1.5,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "Silahkan Masuk Untuk Mengakses Koleksi Buku Di",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          print("Klik aktif");
                                        },
                                      text: " Toko Buku Palugada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0xFF1f96e6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[300],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        onChanged: (value) {},
                                        decoration: InputDecoration(
                                          hintText: "Username atau Email",
                                          border: InputBorder.none,
                                          // fillColor: Colors.grey[250],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  PasswordField(controller: controller),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Obx(
                                            () => Checkbox(
                                              value: controller.checkC.value,
                                              onChanged: (value) =>
                                                  controller.checkC.toggle(),
                                              activeColor: Colors.red,
                                            ),
                                          ),
                                          Text(
                                            "Remember Me?",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Lupa Password?",
                                        style: TextStyle(
                                          color: Color(0XFF1f96e6),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: 55,
                                    width: 450,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF1f96e6),
                                          Color(0xFF006cb4),
                                        ],
                                      ),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Get.to(HomePage());
                                      },
                                      // ignore: sort_child_properties_last
                                      child: Text(
                                        "MASUK",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(450, 55),
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 2,
                                        width: 120,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Atau',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        height: 2,
                                        width: 120,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print("button aktif");
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ButtonIcon(
                                            icon: AssetsConstant.icGoogle,
                                            onTap: () {
                                              print("aktif");
                                            },
                                          ),
                                          Text(
                                            "Masuk Dengan Google",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Belum punya akun?",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          print("Daftar aktif");
                                        },
                                        child: Text(
                                          "Daftar",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1f96e6),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
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
