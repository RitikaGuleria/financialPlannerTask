
import 'package:earning_tracker/earning_tracker/data/models/earnings_data.dart';
import 'package:earning_tracker/earning_tracker/presentation/bloc/earnings_bloc.dart';
import 'package:earning_tracker/earning_tracker/presentation/bloc/earnings_state.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'earnings_transcript_screen.dart'; // Import your transcript screen

class EarningsGraphScreen extends StatelessWidget {
  final List<EarningsData> earningsData;
  final String ticker; // Add a ticker parameter

  EarningsGraphScreen({Key? key, required this.earningsData, required this.ticker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Estimated vs Actual Earnings')),
      body:
      BlocBuilder<EarningsBloc, EarningsState>(
        builder: (context, state) {
          if (state is EarningsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is EarningsLoaded) {
            return Expanded(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    child: LineChart(
                      LineChartData(
                        titlesData: FlTitlesData(
                          // leftTitles: SideTitles(showTitles: true),
                          // bottomTitles: SideTitles(showTitles: true),
                        ),
                        gridData: FlGridData(show: true),
                        borderData: FlBorderData(show: true),
                        lineBarsData: [
                          LineChartBarData(
                            spots: state.earningsData
                                .asMap()
                                .entries
                                .map((entry) => FlSpot(
                              entry.key.toDouble(),
                              entry.value.actualEarnings,
                            ))
                                .toList(),
                            isCurved: true,
                            color: Colors.blue,
                            belowBarData: BarAreaData(show: false),
                          ),
                          LineChartBarData(
                            spots: state.earningsData
                                .asMap()
                                .entries
                                .map((entry) => FlSpot(
                              entry.key.toDouble(),
                              entry.value.estimatedEarnings,
                            ))
                                .toList(),
                            isCurved: true,
                            color: Colors.red,
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.earningsData.length,
                      itemBuilder: (context, index) {
                        final data = state.earningsData[index];
                        return ListTile(
                          title: Text('Date: ${data.date}'),
                          subtitle: Text(
                              'Actual: \$${data.actualEarnings}, Estimated: \$${data.estimatedEarnings}'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EarningsTranscriptScreen(
                                  ticker: data.date,
                                  date: data.date,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else if (state is EarningsError) {
            return Text('Error: ${state.message}');
          }
          return Container();
        },
      ),

    );
  }
}
