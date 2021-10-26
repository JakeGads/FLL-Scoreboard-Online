using System.Collections.Generic;
using System.Linq;


namespace Scoreboard.Models
{
    public class Team
    {
        List<int> Scores { get; set; }
        private List<int> orderedScore;
        public double Average;
        public string Name { get; set; }
        public int Number { get; set; }

        public Team(string name, int number, List<int>Scores = null)
        {
            this.Name = name;
            this.Number = number;
            if (Scores != null)
            {
                this.Scores = Scores;
                this.genAverage();
            }
        }

        private void genAverage(int AverageOf = 0)
        {
            this.orderedScore = new List<int>(this.Scores);
            this.orderedScore.Sort();
            this.orderedScore.Reverse();

            switch (AverageOf)
            {
                case 0:
                    this.Average = this.orderedScore.Sum() / this.orderedScore.Count;
                    break;
                case 1:
                    this.Average = this.orderedScore[0];
                    break;
                default:
                    this.Average = this.orderedScore.Take(AverageOf).Sum() / AverageOf;
                    break;
            }
            

        }

        public void AddScore(int Score, int AverageOf = 0)
        {
            this.Scores.Add(Score);
            this.genAverage(AverageOf)
        }
    }
}
