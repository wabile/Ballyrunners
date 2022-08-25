namespace MudProject.Models
{
    public class TutorModel
    {
        public int TutorId { get; set; }
        public int DetailsId { get; set; }
        public string? Skills { get; set; }
        public double HourlyRate { get; set; }
        public bool RecivedCV { get; set; }
        public bool ContractSigned { get; set; }
    }
}
