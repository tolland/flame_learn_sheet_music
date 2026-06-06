import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sound_service/sound_service.dart';

class FilePickerDemo extends StatefulWidget {
  const FilePickerDemo({super.key});

  @override
  State<FilePickerDemo> createState() => _FilePickerDemoState();
}

class _FilePickerDemoState extends State<FilePickerDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  final _defaultFileNameController = TextEditingController();
  final _dialogTitleController = TextEditingController();
  final _initialDirectoryController = TextEditingController();
  final _fileExtensionController = TextEditingController();
  String? _fileName;
  String? _saveAsFileName;
  List<PlatformFile>? _paths;
  String? _directoryPath;
  String? _extension;
  bool _isLoading = false;
  bool _lockParentWindow = false;
  bool _userAborted = false;
  bool _multiPick = false;
  FileType _pickingType = FileType.any;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<MidiPlayerBloc>().add(
              MidiPlayerPlay(),
            );
          },
          child: const Text('play'),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<MidiPlayerBloc>().add(
              MidiPlayerStop(),
            );
          },
          child: const Text('stop'),
        ),
        ElevatedButton(
          onPressed: () {
            // print("fuck off");
            // _pickFiles(onDone: () {
            //   print("_paths is $_paths");
            // });
            Future<FilePickerResult?> result = FilePicker.pickFiles();

            context.read<MidiPlayerBloc>().add(
                  MidiPlayerLoadFilePicker(
                    result: result,
                  ),
                );

            // if (result != null && result.files.isNotEmpty) {
            //   final fileBytes = result.files.first.bytes;
            //   final fileName = result.files.first.name;
            //   final parser = MidiParser();
            //   //List<int> originalFileBuffer = file.readAsBytesSync();
            //   var parsedMidi = parser.parseMidiFromBuffer(fileBytes!);
            //
            //   print(parsedMidi.tracks.length.toString());
            //
            //   for (var track in parsedMidi.tracks) {
            //     print("new track");
            //     print("");
            //     for (var event in track) {
            //       print(event.toString());
            //       Timer(
            //         Duration(seconds: 2, milliseconds: (event.tickFromStart * 1.5 ).round()),
            //         () {
            //           if(event is NoteOnEvent) {
            //             context.read<SoundServiceBloc>().add(
            //               SoundServiceEvent.noteOn(
            //                 number: event.noteNumber,
            //                 velocity: 15,
            //                 channel: 0,
            //               ),
            //             );
            //           } else if (event is NoteOffEvent) {
            //             context.read<SoundServiceBloc>().add(
            //               SoundServiceEvent.noteOff(
            //                 number: event.noteNumber,
            //                 velocity: 15,
            //                 channel: 0,
            //               ),
            //             );
            //           }
            //         },
            //       );
            //     }
            //   }
            //
            //   print("$fileName");
            // } else {
            //   // User canceled the picker
            // }
          },
          child: const Text('toggle metronome'),
        ),
      ],
    );
  }

  @override
  void initState() {}

  void _resetState() {}

  void _pickFiles({required VoidCallback onDone}) async {
    _resetState();
    try {
      _directoryPath = null;
      _paths = (await FilePicker.pickFiles(
        type: _pickingType,
        allowMultiple: false,
        onFileLoading: (FilePickerStatus status) {
          print("status is ${status}");
          if (status == FilePickerStatus.done) {
            onDone();
          }
        },
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
        dialogTitle: _dialogTitleController.text,
        initialDirectory: _initialDirectoryController.text,
        lockParentWindow: _lockParentWindow,
      ))
          ?.files;
    } on PlatformException catch (e) {
      _logException('Unsupported operation' + e.toString());
    } catch (e) {
      _logException(e.toString());
    }
    if (!mounted) return;
    setState(() {
      _isLoading = false;
      _fileName =
          _paths != null ? _paths!.map((e) => e.name).toString() : '...';
      _userAborted = _paths == null;
    });
  }

  void _logException(String message) {
    print(message);
    _scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
    _scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
