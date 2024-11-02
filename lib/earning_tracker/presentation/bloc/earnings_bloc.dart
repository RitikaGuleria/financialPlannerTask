import 'package:earning_tracker/earning_tracker/domain/repositories/earning_repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'earnings_event.dart';
import 'earnings_state.dart';

class EarningsBloc extends Bloc<EarningsEvent, EarningsState> {
  final EarningsRepository earningsRepository;

  EarningsBloc(this.earningsRepository) : super(const EarningsInitial()) {
    on<FetchEarningsCalendar>(_onFetchEarningsCalendar);
    on<FetchEarningsTranscript>(_onFetchEarningsTranscript);
  }

  Future<void> _onFetchEarningsCalendar(FetchEarningsCalendar event, Emitter<EarningsState> emit) async {
    emit(const EarningsLoading());
    try {
      final earningsData = await earningsRepository.fetchEarningsCalendar(event.ticker);
      emit(EarningsLoaded(earningsData));
    } catch (e) {
      emit(EarningsError(e.toString()));
    }
  }

  Future<void> _onFetchEarningsTranscript(FetchEarningsTranscript event, Emitter<EarningsState> emit) async {
    emit(const EarningsLoading());
    try {
      final transcript = await earningsRepository.fetchEarningsTranscript(event.ticker, event.date);
      emit(TranscriptLoaded(transcript));
    } catch (e) {
      emit(EarningsError(e.toString()));
    }
  }
}
