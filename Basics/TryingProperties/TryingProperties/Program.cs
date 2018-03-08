using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TryingProperties
{
    public class Course
    {
        private int _courseId;
        private string _courseName;
        private int _courseFee;

        public void SetCourseId(int Id)
        {
            if (Id <= 0)
            {
                throw new Exception("Course Id cannot be negative");
            }
            this._courseId = Id;
        }

        public int GetCourseId()
        {
            return this._courseId;
        }

        public void SetCourseName(string name)
        {
            if(string.IsNullOrEmpty(name))
            {
                throw new Exception("Course Name cannot be null or empty");
            }
            this._courseName = name;
        }

        public string GetCourseName()
        {
            return string.IsNullOrEmpty(this._courseName) ? "No Course Name" : this._courseName;
        }

        public void SetCourseFee(int fee)
        {
            if(fee <= 0)
            {
                throw new Exception("Course Fee cannot be Negative");
            }
            this._courseFee = fee;
        }

        public int GetCourseFee()
        {
            return this._courseFee;
        }
    }



    class Program
    {
        static void Main(string[] args)
        {
            Course course = new Course();
            course.SetCourseId(1);
            //course.SetCourseName("");
            course.SetCourseFee(1000000);

            Console.WriteLine(course.GetCourseId());
            Console.WriteLine(course.GetCourseName());
            Console.WriteLine(course.GetCourseFee());

            Console.WriteLine("\nPress any key to continue...");
            Console.ReadKey();
        }

    }
}
