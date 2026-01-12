import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:ippoo_cash_core/ippoo_cash_core.dart';

import 'database_service.dart';

class Api {
  final _db = DatabaseService();
  final _transactionService = TransactionService();

  Router get router {
    final router = Router();

    // GET /transactions - Get all transactions
    router.get('/transactions', (Request request) {
      final transactions = _db.getAllTransactions();
      return Response.ok(
        json.encode(transactions.map((t) => t.toJson()).toList()),
        headers: {'Content-Type': 'application/json'},
      );
    });

    // POST /transactions - Create a new transaction
    router.post('/transactions', (Request request) async {
      final body = await request.readAsString();
      final transaction = Transaction.fromJson(json.decode(body));
      final newTransaction = _db.addTransaction(transaction);
      return Response.ok(
        json.encode(newTransaction.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
    });

    // PUT /transactions/<id>/validate - Validate a transaction
    router.put('/transactions/<id>/validate', (Request request, String id) {
      final transaction = _db.getTransactionById(id);
      if (transaction == null) {
        return Response.notFound('Transaction not found');
      }
      try {
        final validatedTransaction = _transactionService.validateTransaction(transaction);
        _db.updateTransaction(validatedTransaction);
        return Response.ok(
          json.encode(validatedTransaction.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        return Response.badRequest(body: e.toString());
      }
    });

    return router;
  }
}
