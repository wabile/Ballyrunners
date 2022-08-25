namespace MudProject.Models
{
    public class PermissionsModel
    {
        public int? PermissionId { get; set; }
        public int DetailsId { get; set; }
        public string? FullName { get; set; }
        public bool? StudFicilResn { get; set; }
        public bool? PhotoConsent { get; set; }
        public bool? DataConsent { get; set; }
        public bool? PersonalPropertyConsent { get; set; }
        public bool? Responsibilities { get; set; }

    }
}
