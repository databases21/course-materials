CREATE OR REPLACE FUNCTION sales_tax3(INOUT subtotal real) AS $$
BEGIN
    subtotal:= subtotal * 0.06;
END;
$$ LANGUAGE plpgsql;
