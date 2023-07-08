import 'stock_percentage_data_provider.dart';
import 'vo_simple_stock.dart';

class Stock extends SimpleStock with StockPercentageDataProvider {
  @override
  final int yesterdayClosePrice;
  @override
  final int currentPrice;
  final String stockImagePath;

  Stock({
    required super.stockName,
    required this.yesterdayClosePrice,
    required this.currentPrice,
    required this.stockImagePath,
  });
}
