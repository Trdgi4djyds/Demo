class FinancialDocument {
  final String id;
  final String transactionId;
  final String documentType;
  final DateTime createdAt;

  FinancialDocument({
    required this.id,
    required this.transactionId,
    required this.documentType,
    required this.createdAt,
  });

  factory FinancialDocument.fromJson(Map<String, dynamic> json) {
    return FinancialDocument(
      id: json['id'],
      transactionId: json['transactionId'],
      documentType: json['documentType'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transactionId': transactionId,
      'documentType': documentType,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
