using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace SportItem.Installers
{
    public interface IInstaller
    {
        void InstallServices(IServiceCollection services, IConfiguration configuration);
    }
}