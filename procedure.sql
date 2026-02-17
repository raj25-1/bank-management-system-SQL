-- procedure to fetch account balance

DELIMITER $$

CREATE PROCEDURE get_account_balance(IN acc_id INT)
BEGIN
    SELECT account_id, balance
    FROM accounts
    WHERE account_id = acc_id;
END$$

DELIMITER ;



CALL get_account_balance(1);


call get_account_balance(2);

call get_account_balance(51);



/*📌 Why procedure?

Encapsulates logic

Secure & reusable

Used by applications*/