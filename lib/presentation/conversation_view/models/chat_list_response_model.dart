class ChatListResponseModel {
  ChatListResponseModel({
    required this.userId,
    required this.chats,
  });

  final String? userId;
  final List<Chat> chats;

  factory ChatListResponseModel.fromJson(Map<String, dynamic> json) {
    return ChatListResponseModel(
      userId: json["user_id"],
      chats: json["chats"] == null
          ? []
          : List<Chat>.from(json["chats"]!.map((x) => Chat.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "chats": chats.map((x) => x?.toJson()).toList(),
      };
}

class Chat {
  Chat({
    required this.sessionId,
    required this.title,
  });

  final String? sessionId;
  final String? title;

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      sessionId: json["session_id"],
      title: json["title"],
    );
  }

  Map<String, dynamic> toJson() => {
        "session_id": sessionId,
        "title": title,
      };
}
