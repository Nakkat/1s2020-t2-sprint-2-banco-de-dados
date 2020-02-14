using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using senai.filmes.webapi.Domains;
using senai.filmes.webapi.Interfaces;
using senai.filmes.webapi.Repositories;

namespace senai.filmes.webapi.Controllers
    // Controlar faz a comunicação com o banco
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class GenerosController : ControllerBase
    {
        // Criando um objeto privado por ser exclusivo da classe
        private IGeneroRepository _generoRepository { get; set; }

        public GenerosController()
        {
            _generoRepository = new GeneroRepository();
        }
        // Requisição Busca
        [HttpGet]
        // IEnumerable - função nativa C# - Metódo de lista
        public IEnumerable<GeneroDomain> Get()
        {
            return _generoRepository.Listar();
        }
    }
}