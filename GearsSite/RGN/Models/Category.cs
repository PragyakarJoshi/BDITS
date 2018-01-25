using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace RGN.Models
{
    public class Category
    {
        [ScaffoldColumn(false), Display(Name = "Category ID")]
        public int CategoryID { get; set; }

        [Required, StringLength(100), Display(Name = " Category Name")]
        public string CategoryName { get; set; }

        [Display(Name = "Category Description")]
        public string Description { get; set; }

        public virtual ICollection<Product> Products { get; set; }  
    }
}