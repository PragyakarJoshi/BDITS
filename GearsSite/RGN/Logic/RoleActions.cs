using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using RGN.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;

namespace RGN.Logic
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

            if (!roleMgr.RoleExists("super"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "super" });
            }

            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "superUser@rgn.com",
                Email = "superUser@rgn.com"
            };
            IdUserResult = userMgr.Create(appUser, "TheSuperUser");


            if (!userMgr.IsInRole(userMgr.FindByEmail("superUser@rgn.com").Id, "super"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("superUser@rgn.com").Id, "super");
            }
        }
    }
}