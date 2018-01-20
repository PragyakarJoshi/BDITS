using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RGN.Startup))]
namespace RGN
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
