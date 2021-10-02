CREATE OR REPLACE FUNCTION sales_tax2(IN subtotal real,OUT res real) AS $$
BEGIN
    res:= subtotal * 0.06;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

select sales_tax2(12);
