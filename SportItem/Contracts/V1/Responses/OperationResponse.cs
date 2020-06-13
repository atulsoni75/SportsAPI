using System;
using System.Collections.Generic;

namespace SportItem.Contracts.V1.Responses
{
    public class OperationResponse
    {
        public int Id { get; set; }

        public string SportName { get; set; }

        public string SportType { get; set; }

        public int NrOfEvents { get; set; }

        public int SportOrder { get; set; }

        public bool ShowAllButton { get; set; }

        public DateTime CreatedOn { get; set; }
    }
}