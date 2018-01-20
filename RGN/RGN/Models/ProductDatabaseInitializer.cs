using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace RGN.Models
{
    public class ProductDatabaseInitializer: DropCreateDatabaseIfModelChanges<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Helmets"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Gloves"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Apparels"
                },
            };
            return categories;
        }

        private static List<Product> GetProducts()
        {
        var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "AGV Pista GP R",
                    Description = "Limited edition of the ultimate track helmet celebrating 70 yrs of AGV, Pista GP R Anniversario features its Moto GP-tested metal air vents in a unique gold finishing, superb Aero performance with BIPLANO spoiler technology dressed in an exclusive black matt color, iridium rainbow gold visor included in the box (additional to standard clear) and a dedicated carry bag. Limited to 1947 pcs. ",
                    ImagePath="helmet.jpg",
                    UnitPrice = 1200,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 2,
                    ProductName = "AGV Corsa",
                    Description = "AGV CORSA R E2205 motorcycle helmet. Designed for uncompromising performance on the track, it offers most of the Pista GP R’s features, but with a carbon-fiberglass shell and adjustable vents. ",
                    ImagePath="helmet.jpg",
                    UnitPrice = 600,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 3,
                    ProductName = "AGV Veloce S",
                    Description = "AGV VELOCE S E2205 motorcycle helmet. Thanks to this premium sport model from AGV, high-performance features typically found in a racing helmet are now available in a street-friendly package. ",
                    ImagePath="helmet.jpg",
                    UnitPrice = 400,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "AGV K5 S",
                    Description = "AGV K-5 S E2205 motorcycle helmet. A premium sport helmet by AGV, now even more comfortable thanks to its new inner liner construction. ",
                    ImagePath="helmet.jpg",
                    UnitPrice = 350,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "AGV K3 SV",
                    Description = "AGV K-3 SV E2205 motorcycle helmet. A helmet that reaches high levels of comfort, safety and aerodynamics. ",
                    ImagePath="helmet.jpg",
                    UnitPrice = 250,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 6,
                    ProductName = "AGV AX-8",
                    Description = "AGV AX-8 NAKED CARBON E2205 motorcycle helmet. Exposed carbon helmet for those who love sporty, stylish, and high performing motorbikes. ",
                    ImagePath="helmet.jpg",
                    UnitPrice = 550,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 7,
                    ProductName = "AGV AX-8 Dual",
                    Description = "AGV AX-8 DUAL EVO E2205 motorcycle helmet. For road and off-road use, a versatile helmet offering great comfort. ",
                    ImagePath="helmet.jpg",
                    UnitPrice = 450,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 8,
                    ProductName = "Alpinestar GP Pro",
                    Description = "With full updated ergonomic shaping and design details, the GP Pro R2 has taken an evolutionary step with an anatomically engineered design for performance, protection and comfort. ",
                    ImagePath="gloves.jpg",
                    UnitPrice = 300,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 9,
                    ProductName = "Alpinestar SuperTech",
                    Description = "The most technically advanced performance racing glove forged in the highest echelons of professional racing, the Supertech Glove incorporates groundbreaking construction methods and material technologies. ",
                    ImagePath="gloves.jpg",
                    UnitPrice = 400,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 10,
                    ProductName = "Alpinestar SP-1",
                    Description = "The SP-1 is a multi-panel, gauntlet-style leather glove that is fully featured, incorporating a host of innovations designed to improve level of protection, comfort and performance. From the carbon fiber knuckle guard and the Clarino® reinforcements to the patented finger-bridge and ventilation features the SP-1 is an indispensable glove for the serious track or street rider.",
                    ImagePath="gloves.jpg",
                    UnitPrice = 150,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 11,
                    ProductName = "Alpinestar Rage DryStar",
                    Description = "A short-cuff performance riding glove constructed from a leather and poly-fabric main shell with Alpinestars waterproof DRYSTAR® membrane, the Rage Glove incorporates advanced protective features such as carbon compound knuckle and palm slider",
                    ImagePath="gloves.jpg",
                    UnitPrice = 120,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 12,
                    ProductName = "Alpinestar SP-8 V2",
                    Description = "A CE certified glove constructed from highly abrasion resistant, full grain leather and featuring a rugged polymer knuckle protection, the SP-8 V2 offers high levels of protection, movement and comfort. With a pre-shaped finger construction, a velcro cuff closure and a new anatomically profiled grip insert on palm and thumb, this glove affords a secure and highly personalized performance riding fit. ",
                    ImagePath="gloves.jpg",
                    UnitPrice = 100,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 13,
                    ProductName = "Dianese Mugello R",
                    Description = "Some Description Here",
                    ImagePath="apparel.jpg",
                    UnitPrice = 4000,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 14,
                    ProductName = "Dianese Racing Misano",
                    Description = "Some Description Here",
                    ImagePath="apparel.jpg",
                    UnitPrice = 2200,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 15,
                    ProductName = "Dianese Kyalami",
                    Description = "Some Description Here",
                    ImagePath="apparel.jpg",
                    UnitPrice = 1700,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 16,
                    ProductName = "Dianese Laguna Seca",
                    Description = "Some Description Here",
                    ImagePath="apparel.jpg",
                    UnitPrice = 1000,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 17,
                    ProductName = "Dianese Avro D2",
                    Description = "Some Description Here",
                    ImagePath="apparel.jpg",
                    UnitPrice = 900,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 18,
                    ProductName = "Dianese Assen",
                    Description = "Some Description Here",
                    ImagePath="apparel.jpg",
                    UnitPrice = 800,
                    CategoryID = 3
                },
            };

        return products;
        }
    }
}