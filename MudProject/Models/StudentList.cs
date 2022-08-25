namespace MudProject.Models
{
    public class StudentListModel
    {
        public int StudentId { get; set; }
        public int DetailsId { get; set; }
        public string? PPSN { get; set; }
        public string? FirstName { get; set; }
        public string? Surname { get; set; }
        public bool IsStudent { get; set; }
        public virtual string isStudent => IsStudent ? "Yes" : "No";
    }
}
