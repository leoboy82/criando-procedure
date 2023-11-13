DELIMITER //

CREATE PROCEDURE RelatorioDiario()
BEGIN
    -- Defina a data inicial e final conforme necessário
    DECLARE data_inicial DATE;
    DECLARE data_final DATE;

    -- Preencha as datas inicial e final conforme necessário
    SET data_inicial = '2023-11-13';
    SET data_final = '2023-11-13';

    -- Selecione a quantidade de produtos comprados por dia
    SELECT data, SUM(quantidade) AS total_produtos
    FROM vendas
    WHERE data BETWEEN data_inicial AND data_final
    GROUP BY data;

END //

DELIMITER ;
