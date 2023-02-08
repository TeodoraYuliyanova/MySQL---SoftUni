DELIMITER $$
CREATE FUNCTION ufn_calculate_future_value(initial_sum DECIMAL(19,4),rate DOUBLE,number_of_years INT)
RETURNS DECIMAL(19,4)
DETERMINISTIC
BEGIN
DECLARE result DECIMAL(19,4);
SET result := initial_sum * POW(1 + rate,number_of_years);
RETURN result;
END$$
