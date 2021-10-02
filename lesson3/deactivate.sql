CREATE OR REPLACE PROCEDURE deactivate()
AS $$
BEGIN
	UPDATE customer SET active=0 WHERE customer.customer_id in (
		SELECT customer.customer_id as blockcustomer FROM payment,customer
		where payment.customer_id=customer.customer_id and payment.amount<1
	);
END;
$$ LANGUAGE plpgsql;

CALL deactivate();