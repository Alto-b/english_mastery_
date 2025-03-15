import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'conversation_controller.dart';

class ConversationScreen extends GetView<ConversationController> {
  ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ConversationController());
    return Scaffold(
      appBar: AppBar(title: Text("Chat Assist")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoActivityIndicator(radius: 15),
            SizedBox(height: 12),
            Text(
              'Loading conversation...',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Obx(() {
                  if (controller.isRecording.value) {
                    return Container(
                      height: 150,
                      width: 150,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recording... ${controller.recordingTime.value}s',
                            style: TextStyle(fontSize: 16, color: Colors.red),
                          ),
                          IconButton(
                            icon: Icon(Icons.clear, color: Colors.red),
                            onPressed: () {
                              controller.stopRecording(); // Cancels recording
                              controller
                                  .resetRecordingState(); // Resets to idle state
                            },
                          ),
                        ],
                      ),
                    );
                  } else if (controller.recordingCompleted.value) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recorded: ${controller.recordingTime.value}s',
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                        IconButton(
                          icon: Icon(
                              (controller.isPlaying.value)
                                  ? Icons.pause
                                  : Icons.play_arrow_rounded,
                              color: Colors.blue),
                          onPressed: (controller.isPlaying.value)
                              ? controller.pauseRecordedAudio
                              : controller.playRecordedAudio,
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            controller.resetRecordingState();
                          },
                        ),
                      ],
                    );
                  } else {
                    return TextFormField(
                      controller: controller.textController,
                      textInputAction: TextInputAction.send,
                      onChanged: (value) =>
                          controller.textFieldContent.value = value,
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        border: InputBorder.none,
                        suffixIcon:
                            controller.textFieldContent.trim().isNotEmpty
                                ? GestureDetector(
                                    onTap: () => controller.clearText(),
                                    child: Icon(Icons.clear),
                                  )
                                : SizedBox.shrink(),
                      ),
                    );
                  }
                }),
              ),
// Recording Button (Visible only if text field is empty)
              Visibility(
                visible: controller.textFieldContent.trim().isEmpty,
                child: GestureDetector(
                  onTap: controller.isRecording.value
                      ? controller.stopRecording
                      : controller.startRecording,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      controller.isRecording.value ? Icons.check : Icons.mic,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),

              // // Recording Controls (Check for Save / Cancel for Reset)
              // Visibility(
              //   visible: controller.isRecording.value,
              //   child: Row(
              //     children: [
              //       // Cancel Recording Button
              //       GestureDetector(
              //         onTap: () {
              //           controller.stopRecording(); // Cancels recording
              //           controller.resetRecordingState(); // Resets to idle
              //         },
              //         child: Container(
              //           padding: const EdgeInsets.all(5),
              //           decoration: BoxDecoration(
              //             color: Colors.redAccent,
              //             shape: BoxShape.circle,
              //           ),
              //           child: Icon(Icons.clear, color: Colors.white),
              //         ),
              //       ),
              //       SizedBox(width: 10),

              //       // Save Recording Button
              //       GestureDetector(
              //         onTap: controller.saveRecording, // Saves recorded audio
              //         child: Container(
              //           padding: const EdgeInsets.all(5),
              //           decoration: BoxDecoration(
              //             color: Colors.green,
              //             shape: BoxShape.circle,
              //           ),
              //           child: Icon(Icons.check, color: Colors.white),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // Send Button (Visible only if recorded or text entered)
              Obx(() => Visibility(
                    visible: controller.recordingCompleted.value ||
                        controller.textFieldContent.trim().isNotEmpty,
                    child: GestureDetector(
                      onTap: controller.sendMessage,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.send_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
