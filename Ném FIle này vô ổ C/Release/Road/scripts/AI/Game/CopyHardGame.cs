﻿using System;
using System.Collections.Generic;
using System.Text;
using Game.Logic.AI;

namespace GameServerScript.AI.Game
{
    public class CopyHardGame : APVEGameControl
    {
        public override void OnCreated()
        {
            Game.SetupMissions("1272,1273,1276,1277");
            Game.TotalMissionCount = 4;
        }

        public override void OnPrepated()
        {

            Game.SessionId = 0;
        }

        public override int CalculateScoreGrade(int score)
        {
            if (score > 800)
            {
                return 3;
            }
            else if (score > 725)
            {
                return 2;
            }
            else if (score > 650)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }

        public override void OnGameOverAllSession()
        {
        }
    }
}
