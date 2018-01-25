using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RGN.Models;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Web.ModelBinding;

namespace RGN.Admin
{
    public partial class AdminProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Product> GetProducts()
        {
            ProductContext db = new ProductContext();
            var query = db.Products;
            return query;
        }
        public IQueryable GetCategories()
        {
            var _db = new RGN.Models.ProductContext();
            IQueryable query = _db.Categories;
            return query;
        }

        public void UpdateProduct(int productID)
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

        public void DeleteProduct(int productID)
        {
            using (ProductContext db = new ProductContext())
            {
                var item = new Product { ProductID = productID };
                db.Entry(item).State = EntityState.Deleted;
                try
                {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    ModelState.AddModelError("", String.Format("Item with id {0} no longer exists in the database,", productID));
                }

            }
        }

        
    }
}