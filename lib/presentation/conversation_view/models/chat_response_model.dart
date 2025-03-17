class ChatResponseModel {
  ChatResponseModel({
    required this.response,
  });

  final String? response;

  factory ChatResponseModel.fromJson(Map<String, dynamic> json) {
    return ChatResponseModel(
      response: json["response"],
    );
  }

  Map<String, dynamic> toJson() => {
        "response": response,
      };
}
