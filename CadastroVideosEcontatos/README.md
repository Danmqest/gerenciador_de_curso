# ProjetowebPI3
repositorio de telas
 
 
    // Informações de conexão com o banco de dados
    $db_url = "jdbc:h2:tcp://localhost/~/contatos";
    $db_user = "sa";
    $db_pass = "sa";

    // Cria a tabela 'mensagens' caso não exista
    $conn = new PDO($db_url, $db_user, $db_pass);
    $sql =
    BANCO DE DADOS CODIGO DA TABELA CRIADA NO H2 CONSOLE  SO INSERIR O CODIGO A BAIXO
    
    CREATE SCHEMA [ IF NOT EXISTS ] CONTATO [ AUTHORIZATION ownerCONTATO ]
    CREATE TABLE IF NOT EXISTS CONTATO (
                id INT AUTO_INCREMENT PRIMARY KEY,
                nome VARCHAR(255) NOT NULL,
                email VARCHAR(255) NOT NULL,
                mensagem TEXT NOT NULL,
                data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
  
