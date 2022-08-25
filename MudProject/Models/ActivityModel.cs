using System.ComponentModel.DataAnnotations;

namespace MudProject.Models
{
    public class ActivityModel
    {
        public int ActivityId { get; set; }
        public string? ActivityType { get; set; }
        public string? ActivityName { get; set; }
        public string? Location { get; set; }
        public string? Address { get; set; }
        public DateTime? ActivityDateStart { get; set; } = new DateTime?();
        [DataType(DataType.Date)]
        public DateTime? ActivityDateEnd { get; set; } = new DateTime?();
        [DataType(DataType.Date)]
        public int? Rating { get; set; }
        public decimal ProjectManagement { get; set; }
        public decimal Transport { get; set; }
        public decimal Food { get; set; }
        public decimal Activities { get; set; }
        public decimal Resources { get; set; }
        public decimal Stationary { get; set; }
        public decimal Promotion { get; set; }
        public decimal IT { get; set; }
        public decimal Other { get; set; }
        public string? OtherDescription { get; set; }
        public decimal Tutors { get; set; }
        public decimal Venue { get; set; }
        public decimal Balance { get; set; }
        public decimal Budget { get; set; }

    }
}
