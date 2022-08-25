namespace MudProject.Models
{
    public class LeagueModel
    {
        public int LeagueId { get; set; }
        public int StuidentId { get; set; }
        public DateTime LeagueDate { get; set; }
        public string? LeagueActivity { get; set; }
        public double ScoreTotal { get; set; }
    }
}
