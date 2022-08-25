namespace MudProject.Models
{
    public class AttendanceModel
    {
        public int AttendanceId { get; set; }
        public int StuidentId { get; set; }
        public DateTime AttendanceDate { get; set; }
        public bool Attendance { get; set; }
        public string? Notes { get; set; }
    }
}
