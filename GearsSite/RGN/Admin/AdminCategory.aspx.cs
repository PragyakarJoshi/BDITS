using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RGN.Models;

namespace RGN.Admin
{
    public partial class AdminCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Category> GetCategories()
        {
            var _db = new RGN.Models.ProductContext();
            IQueryable<Category> query = _db.Categories;
            return query;
        }

        public void categoryGrid_UpdateItem(int productID)
        {
           using (ProductContext db = new ProductContext())
           {
               Product item = null;
               item = db.Products.Find(productID);
               if (item == null)
               {
                   ModelState.AddModelError("", String.Format("Item with id {0} was not found", productID));
                   return;
               }
               TryUpdateModel(item);
               if (ModelState.IsValid)
               {
                   db.SaveChanges();
               }
           }
        }
    }
}