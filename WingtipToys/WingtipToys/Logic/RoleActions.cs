using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WingtipToys.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;

namespace WingtipToys.Logic
{
    internal class RoleActions
    {
        internal void AddUserAndRole()
        {
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            var roleStore = new RoleStore<IdentityRole>(context);
            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            if (!roleMgr.RoleExists("superUser"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "superUser" });
            }

            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "superUser@wtt.com",
                Email = "superUser@wtt.com"
            };
            IdUserResult = userMgr.Create(appUser, "TheSuperUser");


            if (!userMgr.IsInRole(userMgr.FindByEmail("superUser@wtt.com").Id, "superUser"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("superUser@wtt.com").Id, "superUser");
            }
        }
    }
}