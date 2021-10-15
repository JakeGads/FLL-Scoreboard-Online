using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FLL_ScoreBoard_Online
{
    public class User 
    {
        public int id { get; set; }
        public string fullName { get; set; }
        public string email { get; set; }
        private bool isSignedIn { get; set; }

        bool isVerified()
        {
            return this.isSignedIn;
        }
    }

    public class Event
    {
        public int id { get; set; }
        public string name { get; set; }

        public User user { get; set; }

        public EventSettings eventSettings { get; set; }



        void findUser(List<User> userList, int id)
        {
            this.user = userList.Find(x => x.id == id);
        }
    }

    public class EventSettings
    {
        public int id { get; set; }
        public string Timer { get; set; }
        public int AverageScoresTaken { get; set; }
    }

    public class Team
    {
        public int number { get; set; }
        public string name { get; set; }
    }

    public class Score
    {
        public int id { get; set; }
        public Team team { get; set; }
        public Event _event { get; set; }
        public int score { get; set; }

    }

    public class ScoreAggregator
    {
        public List<Score> getTeamScore(List<Score> allScores, Team team)
        {
            return allScores.FindAll(x => x.team.number == team.number);
        }

        public List<Score> getTeamScore(List<Score> allScores, Team team, Event _event)
        {
            return allScores.FindAll(x => x.team.number == team.number && x._event.id == _event.id);
        }
    }
}
