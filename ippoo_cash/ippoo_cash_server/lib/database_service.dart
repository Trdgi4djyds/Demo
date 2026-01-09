import 'package:ippoo_cash_core/ippoo_cash_core.dart';

class DatabaseService {
  // A private, static list to act as our in-memory database.
  static final List<Transaction> _transactions = [];

  // Initialize with some mock data.
  DatabaseService() {
    if (_transactions.isEmpty) {
      _transactions.addAll([
        Transaction(
          id: '1',
          amount: 150.0,
          currency: 'EUR',
          status: TransactionStatus.pending,
          source: SourceModule.shop,
          userId: 'user123',
          createdAt: DateTime.now().subtract(const Duration(days: 2)),
        ),
        Transaction(
          id: '2',
          amount: 85.50,
          currency: 'EUR',
          status: TransactionStatus.validated,
          source: SourceModule.work,
          userId: 'user456',
          createdAt: DateTime.now().subtract(const Duration(days: 1)),
        ),
        Transaction(
          id: '3',
          amount: 200.0,
          currency: 'USD',
          status: TransactionStatus.confirmed,
          source: SourceModule.comptoir,
          userId: 'user789',
          createdAt: DateTime.now(),
        ),
      ]);
    }
  }

  /// Returns all transactions from the database.
  List<Transaction> getAllTransactions() {
    return _transactions;
  }

  /// Adds a new transaction to the database.
  Transaction addTransaction(Transaction transaction) {
    _transactions.add(transaction);
    return transaction;
  }

  /// Finds a transaction by its ID.
  Transaction? getTransactionById(String id) {
    try {
      return _transactions.firstWhere((t) => t.id == id);
    } catch (e) {
      return null;
    }
  }

  /// Updates a transaction in the database.
  Transaction? updateTransaction(Transaction transaction) {
    final index = _transactions.indexWhere((t) => t.id == transaction.id);
    if (index != -1) {
      _transactions[index] = transaction;
      return transaction;
    }
    return null;
  }
}
