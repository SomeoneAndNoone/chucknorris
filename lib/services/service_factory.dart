import 'dart:collection';

import 'package:chucknorris/data/details/asset_json_data.dart';
import 'package:chucknorris/data/home/clicked_memory_data.dart';
import 'package:chucknorris/data/home/prime_number_generator.dart';
import 'package:chucknorris/services/details/chucknorris_service.dart';
import 'package:chucknorris/services/details/impl/chucknorris_service_impl.dart';
import 'package:chucknorris/services/home/number_service.dart';

import 'home/impl/number_service_impl.dart';

class ServiceFactory {
  static ServiceFactory instance = ServiceFactory();
  static HashMap services = HashMap<Type, Object>();

  ChucknorrisService getChucknorrisService() {
    if (!services.containsKey(ChucknorrisServiceImpl)) {
      services[ChucknorrisService] = ChucknorrisServiceImpl();
    }

    return services[ChucknorrisService] as ChucknorrisService;
  }

  AssetJsonData getAssetJsonData() {
    if (!services.containsKey(AssetJsonData)) {
      services[AssetJsonData] = AssetJsonData();
    }

    return services[AssetJsonData] as AssetJsonData;
  }

  ClickedMemoryData getClickedMemoryData() {
    if (!services.containsKey(ClickedMemoryData)) {
      services[ClickedMemoryData] = ClickedMemoryData();
    }

    return services[ClickedMemoryData] as ClickedMemoryData;
  }

  PrimeNumberGenerator getPrimeNumberGenerator() {
    if (!services.containsKey(PrimeNumberGenerator)) {
      services[PrimeNumberGenerator] = PrimeNumberGenerator();
    }

    return services[PrimeNumberGenerator] as PrimeNumberGenerator;
  }

  NumberService getNumberService() {
    if (!services.containsKey(NumberService)) {
      services[NumberService] = NumberServiceImpl();
    }

    return services[NumberService] as NumberService;
  }
}
