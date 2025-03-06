import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/app_style.dart';
import '../controller/city_controller.dart';
import '../../../../generated/l10n.dart';

class CitySearchWidget extends ConsumerStatefulWidget {
  const CitySearchWidget({super.key});

  @override
  ConsumerState<CitySearchWidget> createState() => _CitySearchState();
}

class _CitySearchState extends ConsumerState<CitySearchWidget> {
  static const _radius = 30.0;

  late final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = ref.read(cityControllerProvider);
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget w = Container(
      height: _radius * 2,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade600),
        borderRadius: BorderRadius.circular(_radius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              style: AppStyle.textSmall,
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(
                  hintText: S.of(context).weather_city,
                  hintStyle: AppStyle.textSmaller),
              onSubmitted: (value) {
                ref.read(cityControllerProvider.notifier).setCity(value);
              },
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(_radius),
                  bottomRight: Radius.circular(_radius),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: AppStyle.iconColor,
                  )
                ],
              ),
            ),
            onTap: () {
              FocusScope.of(context).unfocus();
              ref
                  .read(cityControllerProvider.notifier)
                  .setCity(_searchController.text);
            },
          ),
        ],
      ),
    );

    return w;
  }
}
