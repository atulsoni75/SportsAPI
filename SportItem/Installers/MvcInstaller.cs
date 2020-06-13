using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.OpenApi.Models;

namespace SportItem.Installers
{
    public class MvcInstaller : IInstaller
    {
        public void InstallServices(IServiceCollection services, IConfiguration configuration)
        {
           
            
            services
                .AddMvc(options =>
                {
                    options.EnableEndpointRouting = false;
                    
                })
             
                .SetCompatibilityVersion(CompatibilityVersion.Version_3_0);

       
        }
    }
}