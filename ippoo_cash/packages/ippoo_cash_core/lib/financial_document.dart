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
}
