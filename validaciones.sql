CREATE OR REPLACE PROCEDURE register_payment(
    p_client_id INT,
    p_amount DECIMAL
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Validar que el cliente exista
    IF NOT EXISTS (SELECT 1 FROM clients WHERE client_id = p_client_id) THEN
        RAISE EXCEPTION 'El cliente con ID % no existe', p_client_id;
    END IF;

    -- Validar que el monto del pago sea positivo
    IF p_amount <= 0 THEN
        RAISE EXCEPTION 'El monto del pago debe ser positivo';
    END IF;

    -- Registrar el pago
    INSERT INTO payments (client_id, payment_date, amount)
    VALUES (p_client_id, CURRENT_DATE, p_amount);

    -- Confirmar la transacción
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Revertir cambios en caso de error
        ROLLBACK;
        RAISE;
END;
$$;