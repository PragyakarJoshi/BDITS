using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SomeUniversity.Models;

namespace SomeUniversity
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<SomeUniversity.Models.Course> GetCourses()
        {
            SchoolContext db = new SchoolContext();
            var query = db.Courses;
            return query;
        }
    }
}