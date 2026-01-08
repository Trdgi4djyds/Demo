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
