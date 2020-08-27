using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.EntityFrameworkCore;
using SportItem.Data;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using SportItem.Option;
using Microsoft.OpenApi.Models;
using SportItem.Installers;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore;
using APITestAtul.swagger;
using APITestAtul.Domain;
using System.Reflection;
using System.IO;

namespace SportItem
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.InstallServicesInAssembly(Configuration);
            services.AddAutoMapper(typeof(Startup));
            services.AddApiVersioning();

            services.AddSwaggerGen(options =>
            {
                options.SwaggerDoc("v1",
                    new OpenApiInfo
                    {
                        Version = "v1",
                        Title = "v1 API",
                        Description = "v1 API Description"
                    });

                // Add a SwaggerDoc for v2 
                options.SwaggerDoc("v2",
                    new OpenApiInfo
                    {
                        Version = "v2",
                        Title = "v2 API",
                        Description = "v2 API Description"
                    });

                // Apply the filters
                options.OperationFilter<RemoveVersionFromParameter>();
                options.DocumentFilter<ReplaceVersionWithExactValueInPath>();
                // Set the comments path for the Swagger JSON and UI.
                //var xmlFile = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
                //var xmlPath = Path.Combine(AppContext.BaseDirectory, xmlFile);
                //options.IncludeXmlComments(xmlPath);

                var baseDirectory = AppDomain.CurrentDomain.BaseDirectory;
                //var commentsFileName = Assembly.GetExecutingAssembly().GetName().Name + ".XML";
                var commentsFileName = "Comments" + ".XML";
                var commentsFile = Path.Combine(baseDirectory, commentsFileName);

               //options.IncludeXmlComments(commentsFile);

                //  options.EnableAnnotations();

                //// Ensure the routes are added to the right Swagger doc
                //options.DocInclusionPredicate((version, desc) =>
                //{
                //    var versions = desc.ControllerAttributes()
                //        .OfType<ApiVersionAttribute>()
                //        .SelectMany(attr => attr.Versions);

                //    var maps = desc.ActionAttributes()
                //        .OfType<MapToApiVersionAttribute>()
                //        .SelectMany(attr => attr.Versions)
                //        .ToArray();

                //    return versions.Any(v => $"v{v.ToString()}" == version)
                //                  && (!maps.Any() || maps.Any(v => $"v{v.ToString()}" == version)); ;
                //});

            });


        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            //var swaggerOptions = new SwaggerOptions();
            //Configuration.GetSection(nameof(SwaggerOptions)).Bind(swaggerOptions);

            app.UseSwagger();

        
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint($"/swagger/v1/swagger.json", $"v1");
                // Specify and endpoint for v2
                c.SwaggerEndpoint($"/swagger/v2/swagger.json", $"v2");
            });

           
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });


            //app.UseMvc(routeBuilder =>
            //{
            //    routeBuilder.Select().Filter();
            //    routeBuilder.MapODataServiceRoute("odata", "odata", GetEdmModel());
            //});

            //app.UseAuthentication();
            //app.UseAuthorization();


        }

        //IEdmModel GetEdmModel()
        //{
        //    var odataBuilder = new ODataConventionModelBuilder();
        //    odataBuilder.EntitySet<Student>("Students");

        //    return odataBuilder.GetEdmModel();
        //}
    }
}
