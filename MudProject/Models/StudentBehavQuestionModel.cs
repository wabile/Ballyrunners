namespace MudProject.Models
{
    public class StudentBehavQuestionModel
    {
        public OffendingBehaviourQuestionModel? behaviourQuestion { get; set; }
        public StudentModel? studentModel { get; set; }
        public StudentBehavQuestionModel()
        {
            behaviourQuestion = new();
            studentModel = new();
        }
    }
}
