import 'dart:async';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:audioplayers/audioplayers.dart';

class ConversationController extends GetxController {
  TextEditingController textController = TextEditingController();
  RxString textFieldContent = ''.obs;
  RxBool isRecording = false.obs;
  RxBool recordingCompleted = false.obs;
  RxInt recordingTime = 0.obs;
  RxString recordedFilePath = ''.obs; // Store recorded file path

  final AudioPlayer audioPlayer = AudioPlayer(); // Audio player instance
  final RxBool isPlaying = false.obs; // Tracks if audio is playing

  final record = AudioRecorder();
  Timer? _timer;

  void clearText() {
    textController.clear();
    textFieldContent.value = '';
    recordingCompleted.value = false; // Reset state after clearing
    recordedFilePath.value = ''; // Reset recorded file
  }

  void sendMessage() {
    if (recordedFilePath.isNotEmpty) {
      log(
          name: "log-conversation",
          "Audio file sent: ${recordedFilePath.value}");
      clearText(); // Clear file path after sending
      return;
    }
    if (textFieldContent.trim().isNotEmpty) {
      log(name: "log-conversation", "Message sent: ${textFieldContent.value}");
      clearText();
      return;
    }
  }

  // Start Recording Logic
  void startRecording() async {
    isRecording.value = true;
    recordingCompleted.value = false; // Reset on new recording
    recordingTime.value = 0;
    recordedFilePath.value = ''; // Clear previous file path
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      recordingTime.value++;
    });

    if (await record.hasPermission()) {
      final filePath = await getFilePath();
      recordedFilePath.value = filePath;
      await record.start(const RecordConfig(), path: filePath);
      isPlaying.value = false;
    }
  }

  // Stop Recording Logic
  void stopRecording() async {
    _timer?.cancel();
    isRecording.value = false;
    recordingCompleted.value = true; // Indicate recording is done

    final path = await record.stop();
    if (path != null) {
      recordedFilePath.value = path; // Store recorded file path
      log(
          name: 'log-conversation',
          "Recording saved at: ${recordedFilePath.value}");
    }
  }

  void resetRecordingState() {
    isRecording.value = false;
    recordingCompleted.value = false;
    recordingTime.value = 0;
  }

  void saveRecording() {
    stopRecording(); // Stop the recording process
    recordingCompleted.value = true; // Mark recording as saved
  }

  Future<String> getFilePath() async {
    final directory =
        await getApplicationDocumentsDirectory(); // Safer storage path
    return '${directory.path}/myFile.m4a';
  }

  //Play Recorded Audio
  Future<void> playRecordedAudio() async {
    if (recordedFilePath.value.isNotEmpty) {
      await audioPlayer.play(DeviceFileSource(recordedFilePath.value));
      isPlaying.value = true;

      audioPlayer.onPlayerComplete.listen((_) {
        isPlaying.value = false;
      });
      log(name: 'log-conversation', "isPlaying : $isPlaying");
    }
  }

  Future<void> pauseRecordedAudio() async {
    await audioPlayer.pause();
    log(name: 'log-conversation', "playback paused");
  }

  @override
  void onClose() {
    textController.dispose();
    _timer?.cancel();
    super.onClose();
  }
}
