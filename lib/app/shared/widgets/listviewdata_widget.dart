import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracky/app/data/models/asset_model.dart';
import 'package:intl/intl.dart';
import 'package:svg_flutter/svg.dart';
import 'package:tracky/app/modules/detail_asset/views/detail_asset_view.dart';
import 'package:tracky/app/shared/themes/font.dart';
import 'package:tracky/app/shared/utils/date_utils.dart';

class ListViewDataWidget extends StatelessWidget {
  final List<Asset> listData;
  const ListViewDataWidget({
    super.key,
    required this.listData,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const Divider(height: 30),
      itemCount: listData.length,
      itemBuilder: (context, index) {
        var data = listData[index];
        return InkWell(
          onTap: () => Get.to(
            () => const DetailAssetView(),
            arguments: {
              'asset': data,
            },
          ),
          child: Row(
            children: [
              Container(
                height: 87,
                width: 87,
                // padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      data.image,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SizedBox(
                  height: 87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data.title,
                                style: body2Bold.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Rp${NumberFormat('#,##0', 'ID').format(data.priceItem)}',
                                style: body2SemiBold.copyWith(
                                  color: const Color(0xFFFFA500),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 130,
                                child: Text(
                                  data.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: placeholder.copyWith(
                                    fontSize: 9,
                                  ),
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
                                  '- Rp${NumberFormat('#,##0', 'ID').format(data.priceShipping)}/day',
                                  style: placeholder.copyWith(
                                    fontSize: 9,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    'assets/icons/ic_purchased.svg'),
                                const SizedBox(width: 8),
                                Text(
                                  DateUtil.formatDate(data.purchaseTime),
                                  style: placeholder.copyWith(
                                    fontSize: 9,
                                  ),
                                ),
                              ],
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
        );
      },
    );
  }
}

// Row(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 8,
//                           vertical: 3,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.grey.withOpacity(0.5),
//                           borderRadius: BorderRadius.circular(3),
//                         ),
//                         child: Row(
//                           children: [
//                             SvgPicture.asset('assets/icons/ic_purchased.svg'),
//                             const SizedBox(width: 8),
//                             Text(
//                               DateUtil.formatDate(data.purchaseTime),
//                               style: placeholder.copyWith(
//                                 fontSize: 9,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   )
