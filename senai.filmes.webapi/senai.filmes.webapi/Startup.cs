using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;

namespace senai.filmes.webapi
{
    public class Startup
    {
        
        // Criando um método para os serviços
        public void ConfigureServices(IServiceCollection services)
        {
            services
                // Adciona Mvc ao projeto
                .AddMvc()
                // Define a versão do .NET  Core compatível
                .SetCompatibilityVersion(Microsoft.AspNetCore.Mvc.CompatibilityVersion.Version_2_1);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            // Define o uso do MVC
            app.UseMvc();
        }
    }
}
