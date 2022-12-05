var database = require("../database/config");

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function DataGraph(erros,acertos,pontuacao) {

  // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
  //  e na ordem de inserção dos dados.
  var instrucao = `
        INSERT INTO tentativa (erros,acertos,pontuacao) VALUES ('${erros}', '${acertos}', '${pontuacao}');
    `;
  console.log("Executando a instrução SQL: \n" + instrucao);
  return database.executar(instrucao);
}

module.exports = {
    DataGraph
};
