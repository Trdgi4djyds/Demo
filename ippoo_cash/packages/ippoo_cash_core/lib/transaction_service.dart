import 'package:ippoo_cash_core/transaction.dart';
import 'package:ippoo_cash_core/transaction_status.dart';

class TransactionService {
  /// Validates a pending transaction.
  Transaction validateTransaction(Transaction transaction) {
    if (transaction.status != TransactionStatus.pending) {
      throw Exception('Only pending transactions can be validated.');
    }
    return transaction.copyWith(status: TransactionStatus.validated);
  }

  /// Cancels a pending transaction.
  Transaction cancelTransaction(Transaction transaction) {
    if (transaction.status != TransactionStatus.pending) {
      throw Exception('Only pending transactions can be cancelled.');
    }
    return transaction.copyWith(status: TransactionStatus.cancelled);
  }

  /// Confirms a validated transaction.
  Transaction confirmTransaction(Transaction transaction) {
    if (transaction.status != TransactionStatus.validated) {
      throw Exception('Only validated transactions can be confirmed.');
    }
    return transaction.copyWith(status: TransactionStatus.confirmed);
  }
}
