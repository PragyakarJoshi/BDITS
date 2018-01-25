using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RGN.Models;

namespace RGN.Admin
{
    public partial class AddNewCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void addCategoryForm_InsertItem()
        {
            var item = new RGN.Models.Category();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                using (ProductContext db = new ProductContext())
                {
                    db.Categories.Add(item);
                    db.SaveChanges();
                }
            }
        }
        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/AdminCategory");
        }

        protected void addStudentForm_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            Response.Redirect("~/Admin/AdminCategory");
        }
    }
}