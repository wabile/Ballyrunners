namespace MudProject.Models
{
    public class TutorDetailsModel
    {
        public PersonalDetailsModel? personalDetails { get; set; }
        public TutorModel? tutorModel { get; set; }
        public TutorDetailsModel()
        {
            personalDetails = new();
            tutorModel = new();
        }

    }
}
