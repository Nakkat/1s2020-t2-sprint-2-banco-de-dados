using senai.filmes.webapi.Domains;
using senai.filmes.webapi.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

// repository - como vou fazer a conexão com o banco
// integrated security=true para quando não tiver sa
namespace senai.filmes.webapi.Repositories
{
    public class GeneroRepository : IGeneroRepository
    {
        // Conexão com o banco // initial catalog = Tabela
        private string StringConexao = "Data Source=DEV301\\SQLEXPRESS; initial catalog=Filmes; user Id=sa; pwd=sa@132";

        // Criando uma lista fazendo uma instância do domain (propriedades)
        public List<GeneroDomain> Listar()
        {
            List<GeneroDomain> generos = new List<GeneroDomain>();

            // Metódo fazer conexão com o banco
            // Definir uma busca 
            using (SqlConnection con = new SqlConnection(StringConexao)) 
            {
                string query = "SELECT IdGenero, Nome FROM Genero";

                con.Open();

                // rdr - Leitura de Dados
                SqlDataReader rdr;

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Executar comando
                    rdr = cmd.ExecuteReader();

                    // Enquanto estiver conectado, faça a seguinte operação 
                    while (rdr.Read())
                    {
                        GeneroDomain genero = new GeneroDomain
                        {
                            // Convertendo de string para int
                            // 0 é o indíce, primeira coluna do banco - Nome
                            IdGenero = Convert.ToInt32(rdr[0]),
                            Nome = rdr["Nome"].ToString()
                        };

                        // Adciono na minha lista

                        generos.Add(genero);
                    }
                } 
            }

            return generos;
        }
    }
}
