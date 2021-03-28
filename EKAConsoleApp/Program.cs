using System;

namespace EKAConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            var arr = new int[] { 1, -2, 3, 0, 5, 6, 7, 8, 9, 10 };

            var m = 5;
            m -= 1;

            var t = Check(arr[0 * ZeroOrOne(m - 0)])
                & Check(arr[1 * ZeroOrOne(m - 1)])
                & Check(arr[2 * ZeroOrOne(m - 2)])
                & Check(arr[3 * ZeroOrOne(m - 3)])
                & Check(arr[4 * ZeroOrOne(m - 4)])
                & Check(arr[5 * ZeroOrOne(m - 5)])
                & Check(arr[6 * ZeroOrOne(m - 6)])
                & Check(arr[7 * ZeroOrOne(m - 7)])
                & Check(arr[8 * ZeroOrOne(m - 8)])
                & Check(arr[9 * ZeroOrOne(m - 9)])
                & Check(arr[9 * ZeroOrOne(m - 10)])
                & Check(arr[9 * ZeroOrOne(m - 11)])
                & Check(arr[9 * ZeroOrOne(m - 12)])
                & Check(arr[9 * ZeroOrOne(m - 13)])
                & Check(arr[9 * ZeroOrOne(m - 14)])
                & Check(arr[9 * ZeroOrOne(m - 15)])
                & Check(arr[9 * ZeroOrOne(m - 16)])
                & Check(arr[9 * ZeroOrOne(m - 17)])
                & Check(arr[9 * ZeroOrOne(m - 18)])
                & Check(arr[9 * ZeroOrOne(m - 19)]);

            Print(t);
            Console.ReadLine();
        }

        static void Print(int x)
        {
            Console.Write(new string[] { "No", "Yes" }[x]);
        }

        static int ZeroOrOne(int x)
        {
            return ~(x >> 31) & 1;
        }

        static int Check(int x)
        {
            var r = x | (x >> 1) | (x >> 2) | (x >> 3) | (x >> 4) | (x >> 5) | (x >> 6) | (x >> 7) | (x >> 8)
            | (x >> 9) | (x >> 10) | (x >> 11) | (x >> 12) | (x >> 13) | (x >> 14) | (x >> 15)
            | (x >> 16) | (x >> 17) | (x >> 18) | (x >> 19) | (x >> 20) | (x >> 21) | (x >> 22)
            | (x >> 23) | (x >> 24) | (x >> 24) | (x >> 25) | (x >> 26) | (x >> 27) | (x >> 28)
            | (x >> 29) | (x >> 30) | (x >> 31);

            return r % 2;
        }
    }
}
