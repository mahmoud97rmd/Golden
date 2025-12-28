import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/account_simulator.dart';
import 'services/indicator_service.dart';
import 'services/price_feed_service.dart';
import 'services/strategy_service.dart';
import 'services/backtest_service.dart';
import 'screens/chart_screen.dart';
void main() {
  runApp(const GoldTradingApp());
}
class GoldTradingApp extends StatelessWidget {
  const GoldTradingApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AccountSimulator()),
        ChangeNotifierProvider(create: (_) => IndicatorService()),
        ChangeNotifierProvider(create: (_) => PriceFeedService()),
        ChangeNotifierProvider(create: (_) => StrategyService()),
        ChangeNotifierProvider(create: (_) => BacktestService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gold Trading Simulator',
        theme: ThemeData.dark(),
        home: const ChartScreen(),
      ),
    );
  }
}
