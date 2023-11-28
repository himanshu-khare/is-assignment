import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:is_assignment/core/utils/size_utils.dart';
import 'package:is_assignment/domain/entities/get_leads_data_model/lead.dart';
import 'package:is_assignment/gen/assets.gen.dart';
import 'package:is_assignment/leads/widgets/dash_divider.dart';
import 'package:is_assignment/theme/theme_helper.dart';

class BuildLeadItem extends StatelessWidget {
  const BuildLeadItem({
    required this.lead,
    super.key,
  });
  final Lead lead;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.adaptSize),
      surfaceTintColor: appTheme.white,
      child: Padding(
        padding: EdgeInsets.all(16.adaptSize),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12.adaptSize),
              decoration: BoxDecoration(
                color: appTheme.icbackground,
                borderRadius: BorderRadius.circular(10.adaptSize),
              ),
              child: SvgPicture.asset(
                lead.policyTypeDetails?.policyTypeImg() ??
                    Assets.images.generalInsurance,
              ),
            ),
            SizedBox(
              width: 10.adaptSize,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lead.name ?? '',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    lead.mobile ?? '',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Text(
                        'Current Status: ',
                        style: TextStyle(fontSize: 16.fSize),
                      ),
                      Expanded(
                        child: Text(
                          '${lead.status}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16.fSize,
                            
                            color: appTheme.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  const DashDivider(color: Colors.grey),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildBtn(
                        'Add Comment',
                        Assets.images.addComment,
                        appTheme.icbackground,
                      ),
                      buildBtn(
                        'Status History',
                        Assets.images.statusHistory,
                        appTheme.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildBtn(String title, String asset, Color bColor) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.7, 1.0],
          colors: [
            appTheme
                .white, // You can change this to any color you want at the top
            bColor, // Your desired orange color
          ],
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(asset),
          SizedBox(
            width: 10.adaptSize,
          ),
          Text(title),
        ],
      ),
    );
  }
}
