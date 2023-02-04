import 'package:coffee_roastery/service/api_request.dart';
import 'package:coffee_roastery/models/coffee_bean.dart';

class BeansProvider {
  void getBeansList({
    Function()? beforeSend,
    Function(List<CoffeeBean> coffeeBean)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(
            url:
                'http://103.157.218.115/CoffeeRoastery/hs/CoffeeRoastery/V1/CoffeeBean')
        .get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess!((data as List)
            .map((beanJson) => CoffeeBean.fromJson(beanJson))
            .toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}