import 'package:ippoo_cash_core/financial_document.dart';
import 'package:ippoo_cash_core/source_module.dart';
import 'package:ippoo_cash_core/transaction_status.dart';

class Transaction {
  final String id;
  final double amount;
  final String currency;
  final TransactionStatus status;
  final SourceModule source;
  final String userId;
  final DateTime createdAt;
  final List<FinancialDocument> documents;

  Transaction({
    required this.id,
    required this.amount,
    required this.currency,
    required this.status,
    required this.source,
    required this.userId,
    required this.createdAt,
    this.documents = const [],
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      amount: json['amount'],
      currency: json['currency'],
      status: _enumFromString(TransactionStatus.values, json['status']),
      source: _enumFromString(SourceModule.values, json['source']),
      userId: json['userId'],
      createdAt: DateTime.parse(json['createdAt']),
      documents: (json['documents'] as List<dynamic>?)
              ?.map((docJson) => FinancialDocument.fromJson(docJson))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'currency': currency,
      'status': status.toString().split('.').last,
      'source': source.toString().split('.').last,
      'userId': userId,
      'createdAt': createdAt.toIso8601String(),
      'documents': documents.map((doc) => doc.toJson()).toList(),
    };
  }

  Transaction copyWith({
    String? id,
    double? amount,
    String? currency,
    TransactionStatus? status,
    SourceModule? source,
    String? userId,
    DateTime? createdAt,
    List<FinancialDocument>? documents,
  }) {
    return Transaction(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      status: status ?? this.status,
      source: source ?? this.source,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      documents: documents ?? this.documents,
    );
  }
}

T _enumFromString<T>(List<T> values, String value) {
  return values.firstWhere((v) => v.toString().split('.').last == value,
      orElse: () => throw ArgumentError('Invalid enum value: $value'));
}
