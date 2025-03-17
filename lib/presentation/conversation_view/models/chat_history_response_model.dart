class ChatHistoryResponseModel {
  ChatHistoryResponseModel({
    required this.sender,
    required this.message,
    required this.timestamp,
  });

  final String? sender;
  final String? message;
  final DateTime? timestamp;

  factory ChatHistoryResponseModel.fromJson(Map<String, dynamic> json) {
    return ChatHistoryResponseModel(
      sender: json["sender"],
      message: json["message"],
      timestamp: DateTime.tryParse(json["timestamp"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "sender": sender,
        "message": message,
        "timestamp": timestamp?.toIso8601String(),
      };
}
