class ChatFeedbackResponseModel {
  ChatFeedbackResponseModel({
    required this.feedback,
  });

  final String? feedback;

  factory ChatFeedbackResponseModel.fromJson(Map<String, dynamic> json) {
    return ChatFeedbackResponseModel(
      feedback: json["feedback"],
    );
  }

  Map<String, dynamic> toJson() => {
        "feedback": feedback,
      };
}
