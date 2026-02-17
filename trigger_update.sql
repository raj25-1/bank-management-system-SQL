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