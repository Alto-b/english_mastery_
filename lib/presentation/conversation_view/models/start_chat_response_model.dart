class StartChatResponseModel {
  StartChatResponseModel({
    required this.sessionId,
    required this.message,
  });

  final String? sessionId;
  final String? message;

  factory StartChatResponseModel.fromJson(Map<String, dynamic> json) {
    return StartChatResponseModel(
      sessionId: json["session_id"],
      message: json["message"],
    );
  }

  Map<String, dynamic> toJson() => {
        "session_id": sessionId,
        "message": message,
      };
}
