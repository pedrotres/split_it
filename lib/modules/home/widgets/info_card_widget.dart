import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  final double value;
  const InfoCardWidget({Key? key, required this.value}) : super(key: key);

  TextStyle get textStyle => value >= 0 ? AppTheme.textStyles.infoCardSubtitleReceive : AppTheme.textStyles.infoCardSubtitlePay;

  IconDollarType get iconDollarType => value >= 0 ? IconDollarType.receive : IconDollarType.send;

  String get title => value >= 0 ? 'A receber' : 'A pagar';

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: AppTheme.colors.backgroundPrimary,
      padding: EdgeInsets.all(16),
      width: 156,
      height: 168,
      decoration: BoxDecoration(
          color: AppTheme.colors.backgroundPrimary,
          border: Border.fromBorderSide(
            BorderSide(color: AppTheme.colors.border),
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconDollarWidget(type: iconDollarType),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTheme.textStyles.infoCardTitle,),
              SizedBox(
                height: 4,
              ),
              Text('R\$ $value', style: textStyle,)
            ],
          )
        ],
      ),
    );
  }
}
