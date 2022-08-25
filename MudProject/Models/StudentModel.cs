namespace MudProject.Models
{
    public class StudentModel
    {
        public int StudentId { get; set; }
        public int DetailsId { get; set; }
        public string? EducationLevel { get; set; }
        public string? ReferralSource { get; set; }
        public bool Interview { get; set; }
        public bool PlaceOffered { get; set; }
        public bool PlaceAccepted { get; set; }
        public bool RegistredWithBLJC { get; set; }
        public string? GuidanceOfficer { get; set; }
        public bool EngagedWithOtherAgencies { get; set; }
        public bool Responsibilities { get; set; }
        public bool PhotoConsent { get; set; }
        public bool DataConsent { get; set; }
        public bool PersonalPropertyConsent { get; set; }
        public string? Notes { get; set; }
        public string? MedicalIssue { get; set; }
        public bool NextofKin { get; set; }
        public string? BackgroundYoungPerson { get; set; }
        public string? ReferrerAgencyName { get; set; }
        public string ReferrerName { get; set; }
        public string? ReferrerAddress { get; set; }
        public string? ReferrerPhone { get; set; }
        public string? ReferrerMail { get; set; }
        public DateTime? DateOfReferral { get; set; } = new DateTime?();
        public bool IsStudent { get; set; }

    }
}