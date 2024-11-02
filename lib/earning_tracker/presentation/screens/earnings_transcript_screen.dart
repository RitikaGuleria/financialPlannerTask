import 'package:earning_tracker/earning_tracker/presentation/bloc/earnings_bloc.dart';
import 'package:earning_tracker/earning_tracker/presentation/bloc/earnings_event.dart';
import 'package:earning_tracker/earning_tracker/presentation/bloc/earnings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EarningsTranscriptScreen extends StatelessWidget {
  final String ticker;
  final String date;

  const EarningsTranscriptScreen({Key? key, required this.ticker, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Trigger fetching of the transcript
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EarningsBloc>().add(FetchEarningsTranscript(ticker, date));
    });


    return Scaffold(
      appBar: AppBar(title: Text('$ticker Earnings Transcript')),
      body: BlocBuilder<EarningsBloc, EarningsState>(
        builder: (context, state) {
          if (state is EarningsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is TranscriptLoaded) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(state.transcript),
            );
          } else if (state is EarningsError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return Container();
        },
      ),
    );
  }
}
