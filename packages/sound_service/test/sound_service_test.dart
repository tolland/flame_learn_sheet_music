import 'package:audio_audioplayers/audioplayer_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:sound_service/sound_service.dart';

import 'constants.dart';
@GenerateNiceMocks([
  MockSpec<IInstrumentRepository>(as: #MockInstrumentRepository),
  MockSpec<Clock>(as: #MockClock),
  MockSpec<AudioController>(as: #MockAudioController),
  MockSpec<AudioControllerPools>(as: #MockAudioControllerPools),
])
import 'sound_service_test.mocks.dart';

void main() {
  late MockInstrumentRepository mockRepository;
  late MockClock clock;
  late MockAudioController audioController;
  late MockAudioControllerPools audioControllerPools;
  late SoundServiceBloc soundServiceBloc;
  late SoundServiceState state;

  setUp(() {
    mockRepository = MockInstrumentRepository();
    clock = MockClock(
        //   initialTicksPerSecond: 1,
        );
    audioController = MockAudioController();

    audioControllerPools= MockAudioControllerPools();

    when(mockRepository.getPitchList()).thenAnswer(
      (_) async => List.generate(
        82 - 48 + 1,
        (i) => i,
      ),
    );

    soundServiceBloc = SoundServiceBloc(
      clock: clock,
      audioController: audioController,
    //  audioControllerPools: audioControllerPools,
    );

    state = const SoundServiceState();
  });

  group('Test each music player event', () {
    blocTest<SoundServiceBloc, SoundServiceState>(
      'Play the first track',
      build: () => soundServiceBloc,
      setUp: () {
        when(clock.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 0));
      },
      act: (bloc) => bloc.add(const SoundServiceEvent.start()),
      skip: 0,
      expect: () => <SoundServiceState>[
        state.copyWith(
          status: SoundServiceStatus.running,
        ),
      ],
    );
    blocTest<SoundServiceBloc, SoundServiceState>(
      'Test that its in the initial state',
      build: () => soundServiceBloc,
      setUp: () {
        when(clock.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 0));
      },
      act: (bloc) => bloc.add(const SoundServiceEvent.touch()),
      skip: 0,
      expect: () => <SoundServiceState>[
        state.copyWith(
          status: SoundServiceStatus.initial,
        ),
      ],
    );
    blocTest<SoundServiceBloc, SoundServiceState>(
      'Test that the notes On gets the note',
      build: () => soundServiceBloc,
      setUp: () {
        when(clock.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 0));
      },
      act: (bloc) {
        bloc.add(const SoundServiceEvent.start());
        bloc.add(const SoundServiceEvent.noteOn(
          channel: 0,
          number: 60,
          velocity: 100,
        ));
      },
      skip: 0,
      expect: () => <SoundServiceState>[
        state.copyWith(
          status: SoundServiceStatus.running,
        ),
        state.copyWith(
          status: SoundServiceStatus.running,
          noteOn: {0: 60},
        ),
      ],
    );
  });
}
