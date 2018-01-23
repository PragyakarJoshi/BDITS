using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SomeUniversity.Startup))]
namespace SomeUniversity
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
