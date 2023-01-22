using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(DXWebApp_EVENTOS.Startup))]

// Files related to ASP.NET Identity duplicate the Microsoft ASP.NET Identity file structure and contain initial Microsoft comments.

namespace DXWebApp_EVENTOS
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}