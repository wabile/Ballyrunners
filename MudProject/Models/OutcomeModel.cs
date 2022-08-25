namespace MudProject.Models
{
    public class OutcomeModel
    {
        public int OutcomeId { get; set; }
        public int StuidentId { get; set; }
        public string? OutcomeDescription { get; set; }
        public string? OrganizationName { get; set; }
        public string? ProgrammmeeName { get; set; }
        public string? JobTitle { get; set; }
        public string? TrainingAgency { get; set; }
        public DateTime OutcomeDate { get; set; }
        public DateTime OutcomeStart { get; set; }
        public DateTime DateOutcomeEnd { get; set; }
        public string? DateComments { get; set; }
    }
}
