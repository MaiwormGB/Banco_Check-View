
--view de clientes ativos
CREATE VIEW vw_clientes_ativos AS
SELECT 
    id_login,
    Nome,
    cpf,
    receita_total,
    telefone
FROM 
    login
WHERE 
    bloqueado = false;

--view de clientes bloqueados
CREATE VIEW vw_clientes_bloqueados AS
SELECT 
    id_login,
    nome,
    cpf,
    receita_total,
    telefone,
    ultimo_saque,
    ultimo_deposito
FROM 
    login
WHERE 
    bloqueado = true;