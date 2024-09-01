using System;
using System.Collections.Generic;
using System.Reflection;

namespace CSharp
{  
    class Program
    {
        class Monster
        { 
            public int Id { get; set; }
        }
        static void Main(string[] args)
        {
            Monster monster = null;
            if(monster != null)
            {
                int monsterId = monster.Id;
            }
            int? id = monster?.Id;
        }
    }
}
