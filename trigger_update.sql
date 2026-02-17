/*“This trigger solves the problem of balance inconsistency in banking systems. By automatically updating the account balance whenever a transaction is inserted, 
it eliminates manual balance calculations and ensures data consistency between the transactions and accounts tables.
This reduces the risk of errors, simplifies application logic, and guarantees that every financial operation is accurately reflected in real time.”*/

DELIMITER $$

CREATE TRIGGER update_balance
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
    IF NEW.transaction_type = 'DEPOSIT' THEN
        UPDATE accounts
        SET balance = balance + NEW.amount
        WHERE account_id = NEW.account_id;
    ELSE
        UPDATE accounts
        SET balance = balance - NEW.amount
        WHERE account_id = NEW.account_id;
    END IF;
END$$

DELIMITER ;
show triggers;

drop trigger update_balance;

/*📌 Why this is advanced

No manual balance calculation

Ensures data consistency

Mimics real banking systems*/
