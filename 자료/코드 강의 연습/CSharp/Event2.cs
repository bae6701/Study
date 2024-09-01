using System;
using System.Collections.Generic;
using System.Text;

namespace CSharp
{
    // Observer Pattern
    class Event2
    {
        public delegate void OnInputKey();
        public event OnInputKey InputKey;

        public void Update()
        {
            if (Console.KeyAvailable == false) return;

            ConsoleKeyInfo info = Console.ReadKey();
            if (info.Key == ConsoleKey.A)
            {
                InputKey();
            }
        }
    }
}
