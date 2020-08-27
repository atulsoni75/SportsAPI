using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using APITestAtul.Domain;

using Microsoft.AspNetCore.Mvc;

namespace APITestAtul.Controllers
{

    public class StudentsController : ControllerBase
    {
        [HttpGet]
        // [EnableQuery()]
        /// <summary>
        /// gt students a specific TodoItem.
        /// </summary>
        /// <param name="id"></param> 
        public IEnumerable<Student> Get()
        {
            return new List<Student>
            {
                CreateNewStudent("Cody Allen", 130),
                CreateNewStudent("Todd Ostermeier", 160),
                CreateNewStudent("Viral Pandya", 140)
            };
        }
        private static Student CreateNewStudent(string name, int score)
        {
            return new Student
            {
                Id = Guid.NewGuid(),
                Name = name,
                Score = score
            };
        }
    }
}
