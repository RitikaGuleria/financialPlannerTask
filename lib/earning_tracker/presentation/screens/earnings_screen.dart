import 'package:earning_tracker/core/theme/app_pallete.dart';
import 'package:earning_tracker/earning_tracker/presentation/bloc/earnings_bloc.dart';
import 'package:earning_tracker/earning_tracker/presentation/bloc/earnings_event.dart';
import 'package:earning_tracker/earning_tracker/presentation/bloc/earnings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'earnings_transcript_screen.dart';
import 'package:fl_chart/fl_chart.dart';

class EarningsScreen extends StatelessWidget {
  final TextEditingController tickerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Adjusts the layout when the keyboard appears
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Earnings Tracker',
            style: TextStyle(
              color: AppPallete.gradient2,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView( // Allows scrolling when the keyboard is open
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 4, bottom: 4),
        child: Column(
          children: [
            TextField(
              controller: tickerController,
              decoration: const InputDecoration(labelText: 'Enter Company Ticker'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                final ticker = tickerController.text.trim();
                if (ticker.isNotEmpty) {
                  context.read<EarningsBloc>().add(FetchEarningsCalendar(ticker));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please enter a valid company ticker.')),
                  );
                }
              },
              child: const Text(
                'Fetch Earnings',
                style: TextStyle(color: AppPallete.whiteColor),
              ),
            ),
            const SizedBox(height: 15),
            const Divider(color: AppPallete.gradient2, thickness: 0.2),
            const SizedBox(height: 15),
            BlocBuilder<EarningsBloc, EarningsState>(
              builder: (context, state) {
                if (state is EarningsLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is EarningsLoaded) {
                  return Column(
                    children: [
                      const Text(
                        'Earning Vs Estimated Graph',
                        style: TextStyle(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 22),
                      SizedBox(
                        height: 300,
                        child: LineChart(
                          LineChartData(
                            titlesData: FlTitlesData(),
                            gridData: const FlGridData(show: true),
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
                      const SizedBox(height: 15),
                      const Divider(color: AppPallete.gradient2, thickness: 0.2),
                      const SizedBox(height: 15),
                      const Text(
                        'Transcript Details',
                        style: TextStyle(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 4),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(), // Prevents double scroll issues
                        shrinkWrap: true,
                        itemCount: state.earningsData.length,
                        itemBuilder: (context, index) {
                          final data = state.earningsData[index];
                          return ListTile(
                            title: Text('Date: ${data.date}'),
                            subtitle: Text(
                              'Actual: \$${data.actualEarnings}, Estimated: \$${data.estimatedEarnings}',
                            ),
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
                    ],
                  );
                } else if (state is EarningsError) {
                  return Text('Error: ${state.message}');
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
