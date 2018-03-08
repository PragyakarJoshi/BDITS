using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TryingInheritance
{
    
    class Program
    {
        public class ParentClass
        {
            public string parentAttribute1;
            public string parentAttribute2;

            public virtual void displayParentAttributes()
            {
                Console.WriteLine(parentAttribute1 + " " + parentAttribute2);
            }
        }

        public class ChildClass : ParentClass
        {
            public string childAttribute1;
            public string childAttribute2;

            public override void displayParentAttributes()
            {
                Console.WriteLine(parentAttribute1 +" "+ parentAttribute2 +" by overriding");
            }

            public void displayChildAttributes()
            {
                Console.WriteLine(childAttribute1 + " " + childAttribute2);
            }

            public void displayAllAttributes()
            {
                Console.WriteLine(parentAttribute1 + "\n" + parentAttribute2 + "\n" + childAttribute1 + "\n" + childAttribute2);
            }

            
        }

        static void Main(string[] args)
        {
            ChildClass child = new ChildClass();
            child.parentAttribute1 = "Inherited Parent Attribute 1";
            child.parentAttribute2 = "Inherited Parent Attribute 2";
            child.childAttribute1 = "Child Attribute 1";
            child.childAttribute2 = "Child Attribute 2";

            child.displayAllAttributes();
            child.displayParentAttributes();
            
            Console.Write("\nPress any key to continue...");
            Console.ReadKey();
        }
    }
}
