using System;
using System.Collections.Generic;

namespace CSharp
{
    class Event
    {
        static void OnInputTest()
        {
            Console.WriteLine("Input Received");
        }

        static void Main(string[] args)
        {
            Event2 inputManager = new Event2();
            inputManager.InputKey += OnInputTest;

            while (true)
            {
                inputManager.Update();
            }
        }
    }
}
