import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tracky/app/shared/themes/font.dart';
import 'package:tracky/app/shared/utils/date_utils.dart';
import 'package:tracky/app/shared/widgets/show_custom_dialog_widget.dart';

import '../controllers/detail_asset_controller.dart';

class DetailAssetView extends GetView<DetailAssetController> {
  const DetailAssetView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailAssetController>(
      init: DetailAssetController(),
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            clipBehavior: Clip.none,
            elevation: 0,
            height: 146,
            child: Column(
              children: [
                Container(
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    'EDIT ASSET',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    showCustomDialog(
                        title: 'Are you sure you want to delete this asset?',
                        message: 'This action can not be undone');
                  },
                  child: Container(
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      border: Border.all(
                        width: 3,
                        color: const Color(
                          0xFFFF5449,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      'DELETE ASSET',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(
                          0xFFFF5449,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.white,
            centerTitle: false,
            titleSpacing: 0.0,
            title: Transform(
              transform: Matrix4.translationValues(0.0, 0.0, 0.0),
              child: Text(
                'Asset Detail',
                style: body2SemiBold.copyWith(
                  color: const Color(0xFFFFA500),
                  fontSize: 22,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 428,
                  decoration: BoxDecoration(
                    border: const Border.symmetric(
                      horizontal: BorderSide(
                        color: Color(0xFFDEE3E5),
                      ),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                        controller.asset.image,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp${NumberFormat('#,##0', 'ID').format(controller.asset.priceItem)}',
                            style: body2Bold.copyWith(
                              color: const Color(0xFFFFA500),
                              fontSize: 24,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 3,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFFFBAB1),
                              ),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Text(
                              '- Rp${NumberFormat('#,##0', 'ID').format(controller.asset.priceShipping)}/day',
                              style: textDescriptionMedium.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text(
                        controller.asset.title,
                        style: body2Bold.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        controller.asset.description,
                        style: body2Medium,
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Purchased on ',
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: [
                            TextSpan(
                              text: DateUtil.formatDate(
                                controller.asset.purchaseTime,
                              ),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Column(
                      //   children: [
                      //     Container(
                      //       height: 55,
                      //       alignment: Alignment.center,
                      //       decoration: BoxDecoration(
                      //         color: Colors.amber,
                      //         borderRadius: BorderRadius.circular(50),
                      //       ),
                      //       child: const Text(
                      //         'EDIT ASSET',
                      //         style: TextStyle(
                      //           fontSize: 17,
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     ),
                      //     const SizedBox(height: 12),
                      //     InkWell(
                      //       borderRadius: BorderRadius.circular(50),
                      //       onTap: () {
                      //         showCustomDialog(
                      //             title:
                      //                 'Are you sure you want to delete this asset?',
                      //             message: 'This action can not be undone');
                      //       },
                      //       child: Container(
                      //         height: 55,
                      //         alignment: Alignment.center,
                      //         decoration: BoxDecoration(
                      //           // color: Colors.amber,
                      //           border: Border.all(
                      //             width: 3,
                      //             color: const Color(
                      //               0xFFFF5449,
                      //             ),
                      //           ),
                      //           borderRadius: BorderRadius.circular(50),
                      //         ),
                      //         child: const Text(
                      //           'DELETE ASSET',
                      //           style: TextStyle(
                      //             fontSize: 17,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(
                      //               0xFFFF5449,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          // bottomNavigationBar: Stack(
          //   clipBehavior: Clip.none,
          //   alignment: const FractionalOffset(.5, 1.0),
          //   children: [
          //     Column(
          //       children: [
          //         Container(
          //           height: 55,
          //           alignment: Alignment.center,
          //           decoration: BoxDecoration(
          //             color: Colors.amber,
          //             borderRadius: BorderRadius.circular(50),
          //           ),
          //           child: const Text(
          //             'EDIT ASSET',
          //             style: TextStyle(
          //               fontSize: 17,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //         const SizedBox(height: 12),
          //         InkWell(
          //           borderRadius: BorderRadius.circular(50),
          //           onTap: () {
          //             showCustomDialog(
          //                 title: 'Are you sure you want to delete this asset?',
          //                 message: 'This action can not be undone');
          //           },
          //           child: Container(
          //             height: 55,
          //             alignment: Alignment.center,
          //             decoration: BoxDecoration(
          //               // color: Colors.amber,
          //               border: Border.all(
          //                 width: 3,
          //                 color: const Color(
          //                   0xFFFF5449,
          //                 ),
          //               ),
          //               borderRadius: BorderRadius.circular(50),
          //             ),
          //             child: const Text(
          //               'DELETE ASSET',
          //               style: TextStyle(
          //                 fontSize: 17,
          //                 fontWeight: FontWeight.bold,
          //                 color: Color(
          //                   0xFFFF5449,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        );
      },
    );
  }
}




// -------> INI YANG GABISA DI SCROLLLLLLLLLLL <--------
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:tracky/app/shared/themes/font.dart';
// import 'package:tracky/app/shared/utils/date_utils.dart';

// import '../controllers/detail_asset_controller.dart';

// class DetailAssetView extends GetView<DetailAssetController> {
//   const DetailAssetView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<DetailAssetController>(
//       init: DetailAssetController(),
//       builder: (controller) {
//         return Scaffold(
//           appBar: AppBar(
//             surfaceTintColor: Colors.transparent,
//             backgroundColor: Colors.white,
//             centerTitle: false,
//             titleSpacing: 0.0,
//             title: Transform(
//               // you can forcefully translate values left side using Transform
//               transform: Matrix4.translationValues(0.0, 0.0, 0.0),
//               child: Text(
//                 'Asset Detail',
//                 style: body2SemiBold.copyWith(
//                   color: const Color(0xFFFFA500),
//                   fontSize: 22,
//                 ),
//               ),
//             ),
//           ),
//           body: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 428,
//                 decoration: BoxDecoration(
//                   border: const Border.symmetric(
//                     horizontal: BorderSide(
//                       color: Color(0xFFDEE3E5),
//                     ),
//                   ),
//                   image: DecorationImage(
//                     fit: BoxFit.fitHeight,
//                     image: NetworkImage(
//                       controller.asset.image,
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(height: 10),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Rp${NumberFormat('#,##0', 'ID').format(controller.asset.priceItem)}',
//                                 style: body2Bold.copyWith(
//                                   color: const Color(0xFFFFA500),
//                                   fontSize: 24,
//                                 ),
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 3,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                     color: const Color(0xFFFFBAB1),
//                                   ),
//                                   borderRadius: BorderRadius.circular(3),
//                                 ),
//                                 child: Text(
//                                   '- Rp${NumberFormat('#,##0', 'ID').format(controller.asset.priceShipping)}/day',
//                                   style: textDescriptionMedium.copyWith(
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 3),
//                           Text(
//                             controller.asset.title,
//                             style: body2Bold.copyWith(
//                               fontSize: 18,
//                             ),
//                           ),
//                           const SizedBox(height: 3),
//                           Text(
//                             controller.asset.description,
//                             style: body2Medium,
//                           ),
//                         ],
//                       ),
//                       RichText(
//                         text: TextSpan(
//                           text: 'Purchased on ',
//                           style: Theme.of(context).textTheme.bodyLarge,
//                           children: [
//                             TextSpan(
//                               text: DateUtil.formatDate(
//                                 controller.asset.purchaseTime,
//                               ),
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Column(
//                         children: [
//                           Container(
//                             height: 55,
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                               color: Colors.amber,
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: const Text(
//                               'EDIT ASSET',
//                               style: TextStyle(
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 12),
//                           Container(
//                             height: 55,
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                               // color: Colors.amber,
//                               border: Border.all(
//                                 width: 3,
//                                 color: const Color(
//                                   0xFFFF5449,
//                                 ),
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: const Text(
//                               'DELETE ASSET',
//                               style: TextStyle(
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(
//                                   0xFFFF5449,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
