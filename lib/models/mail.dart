class Mail {
  String sender;
  String recipient;
  String subject;
  String body;
  bool? starred;
  int type;
  DateTime timestamp;
  bool isRead;

  Mail({
    required this.sender,
    required this.recipient,
    required this.subject,
    required this.body,
    this.starred = false,
    required this.type,
    required this.timestamp,
    this.isRead = false,
  });

  // Method to mark the mail as read
  void markAsRead() {
    isRead = true;
  }

  // Method to display mail details

}
