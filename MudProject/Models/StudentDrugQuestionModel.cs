namespace MudProject.Models
{
    public class StudentDrugQuestionModel
    {
        public DrugsQuestionnaireModel? drugQuestion { get; set; }
        public StudentModel? studentModel { get; set; }
        public StudentDrugQuestionModel()
        {
            drugQuestion = new();
            studentModel = new();
        }
    }
}

