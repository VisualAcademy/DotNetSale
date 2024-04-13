using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DotNetSale.Startup))]
namespace DotNetSale
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
