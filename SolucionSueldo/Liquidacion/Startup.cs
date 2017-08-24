using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Liquidacion.Startup))]
namespace Liquidacion
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
