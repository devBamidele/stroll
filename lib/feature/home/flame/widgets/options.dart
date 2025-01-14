import 'package:flutter/material.dart';

import '../../../../common/styles/text_styles.dart';
import '../../../../constants/colors.dart';

class OptionsWidget extends StatefulWidget {
  final List<String> options;
  final List<String>? numbering;
  final bool showBorders;
  final int childAspectRatio;

  final double paddingVertical;

  const OptionsWidget({
    super.key,
    required this.options,
    this.numbering,
    this.showBorders = true,
    this.childAspectRatio = 6,
    this.paddingVertical = 24.0,
  });

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.options.length + 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / widget.childAspectRatio),
        mainAxisSpacing: 18.0,
        crossAxisSpacing: 16.0,
      ),
      padding: EdgeInsets.symmetric(vertical: widget.paddingVertical),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Options(
          text: widget.options[index],
          showBorders: widget.showBorders,
          numbering: widget.numbering?[index],
          optionColor: AppColors.cardColor,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          selected: selectedIndex == index,
        );
      },
      itemCount: widget.options.length,
    );
  }
}

class Options extends StatelessWidget {
  final String text;
  final Function() onTap;
  final String? numbering;
  final bool showBorders;
  final Color optionColor;

  final bool selected;

  const Options({
    super.key,
    required this.text,
    required this.onTap,
    required this.selected,
    this.showBorders = true,
    required this.optionColor,
    this.numbering,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
                color: selected
                    ? AppColors.primaryColor
                    : showBorders
                        ? AppColors.greyColor.withOpacity(.3)
                        : Colors.transparent,
                width: 2.5),
            color: optionColor,
            borderRadius: BorderRadius.circular(12.0)),
        child: Row(
          children: [
            if (numbering != null)
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: selected
                          ? AppColors.primaryColor
                          : AppColors.greyTextColor,
                      width: 1.5),
                  color: selected ? AppColors.primaryColor : null,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  numbering!.toUpperCase(),
                  style: TextStyles.options.copyWith(
                      fontSize: selected ? 13 : 12,
                      color: AppColors.whiteTextColor),
                ),
              ),
            Expanded(
              child: Text(text,
                  textAlign: numbering != null ? null : TextAlign.center,
                  maxLines: 2,
                  style: TextStyles.options),
            ),
          ],
        ),
      ),
    );
  }
}
