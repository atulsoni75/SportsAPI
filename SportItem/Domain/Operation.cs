using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNetCore.Identity;

namespace SportItem.Domain
{
    public class Operation
    {

        [Key]
        public int Id { get; set; }

        public string SportName { get; set; }

        public int SportType { get; set; }

        public int NrOfEvents { get; set; }

        public int SportOrder { get; set; }

        public bool ShowAllButton { get; set; }

        public DateTime CreatedOn { get; set; }

    }
}