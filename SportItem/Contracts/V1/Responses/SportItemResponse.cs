
namespace SportItem.Contracts.V1.Responses
{

    public class SportItemResponse
    {
        public int Id { get; set; }
        public string SportName { get; set; }
        public int SportType { get; set; }
        public int NrOfEvents { get; set; }
        public int SportOrder { get; set; }
        public bool ShowAllButton { get; set; }
    }
}
