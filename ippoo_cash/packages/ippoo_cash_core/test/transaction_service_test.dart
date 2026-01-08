import 'package:test/test.dart';
import 'package:ippoo_cash_core/ippoo_cash_core.dart';

void main() {
  group('TransactionService', () {
    late TransactionService service;
    late Transaction pendingTransaction;
    late Transaction validatedTransaction;

    setUp(() {
      service = TransactionService();
      pendingTransaction = Transaction(
        id: '1',
        amount: 100.0,
        currency: 'USD',
        status: TransactionStatus.pending,
        source: SourceModule.shop,
        userId: 'user1',
        createdAt: DateTime.now(),
      );
      validatedTransaction = Transaction(
        id: '2',
        amount: 200.0,
        currency: 'EUR',
        status: TransactionStatus.validated,
        source: SourceModule.work,
        userId: 'user2',
        createdAt: DateTime.now(),
      );
    });

    test('validateTransaction should change status to validated', () {
      final result = service.validateTransaction(pendingTransaction);
      expect(result.status, TransactionStatus.validated);
    });

    test('validateTransaction should throw exception for non-pending transaction', () {
      expect(() => service.validateTransaction(validatedTransaction), throwsException);
    });

    test('cancelTransaction should change status to cancelled', () {
      final result = service.cancelTransaction(pendingTransaction);
      expect(result.status, TransactionStatus.cancelled);
    });

    test('cancelTransaction should throw exception for non-pending transaction', () {
      expect(() => service.cancelTransaction(validatedTransaction), throwsException);
    });

    test('confirmTransaction should change status to confirmed', () {
      final result = service.confirmTransaction(validatedTransaction);
      expect(result.status, TransactionStatus.confirmed);
    });

    test('confirmTransaction should throw exception for non-validated transaction', () {
      expect(() => service.confirmTransaction(pendingTransaction), throwsException);
    });
  });
}
