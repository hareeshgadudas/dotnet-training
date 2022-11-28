// See https://aka.ms/new-console-template for more information


using System;



multiDimentionalArray();



void singleDimentionalArray()
{
    //Single-Dimensional Arrays
    Console.WriteLine("Single-Dimensional Arrays");

    int[] array = new int[5];
    
    

    int[] array1 = new int[] { 1, 3, 5, 7, 9, 10 };
    foreach (var item in array1)
    {
        Console.WriteLine(item);
    }
}

void multiDimentionalArray()
{
    //Multidimensional Arrays 
    int[,] mda = new int[4, 2];
    // Two-dimensional array.
    int[,] array2D = new int[,] { 
                                    { 1, 2 },
                                    { 3, 4 },
                                    { 5, 6 },
                                    { 7, 8 } 
                                };
    // The same array with dimensions specified.
    int[,] array2Da = new int[4, 2] { { 1, 2 }, { 3, 4 }, { 5, 6 }, { 7, 8 } };
    // A similar array with string elements.
    string[,] array2Db = new string[3, 2] { { "one", "two" }, { "three", "four" },
                                        { "five", "six" } };

    // Three-dimensional array.
    int[,,] array3D = new int[,,] { { { 1, 2, 3 }, { 4, 5, 6 } },
                                 { { 7, 8, 9 }, { 10, 11, 12 } } };
    // The same array with dimensions specified.
    int[,,] array3Da = new int[2, 2, 3] { 
                                            { 
                                                { 1, 2, 3 }, 
                                                { 4, 5, 6 } 
                                            },
                                            { 
                                                { 7, 8, 9 }, 
                                                { 10, 11, 12 } 
                                            }
                                        };

    foreach (var item in array3Da)
    {
        Console.WriteLine(item);
    }

    // Accessing array elements.
    //Console.WriteLine(array2D[0, 0]);
    //Console.WriteLine(array2D[0, 1]);
    //Console.WriteLine(array2D[1, 0]);
    //Console.WriteLine(array2D[1, 1]);
    //Console.WriteLine(array2D[3, 0]);

    //Console.WriteLine(array2Db[1, 0]);

    //Console.WriteLine(array3Da[1, 0, 1]);
    //Console.WriteLine(array3D[1, 1, 2]);

    // Getting the total count of elements or the length of a given dimension.
    var allLength = array3D.Length;
    var total = 1;
    //for (int i = 0; i < array3D.Rank; i++)
    //{
    //    total *= array3D.GetLength(i);
    //}
    //Console.WriteLine("{0} equals {1}", allLength, total);
}

void jaggedArray() 
{
    // Declare the array of two elements.
    int[][] arr = new int[2][];

    // Initialize the elements.
    arr[0] = new int[5] { 1, 3, 5, 7, 9 };
    arr[1] = new int[4] { 2, 4, 6, 8 };

    // Display the array elements.
    for (int i = 0; i < arr.Length; i++)
    {
        System.Console.Write("Element({0}): ", i);

        for (int j = 0; j < arr[i].Length; j++)
        {
            System.Console.Write("{0}{1}", arr[i][j], j == (arr[i].Length - 1) ? "" : " ");
        }
        System.Console.WriteLine();
    }
}

void dictionary()
{
   // Dictionary<int, int> dictionary = new Dictionary<int, int>();
   // dictionary[0] = 1;
   // dictionary.Add(1, 2);
   // //dictionary.Remove(1);
   //// dictionary.Clear();
   // foreach (var item in dictionary)
   // {
   //     Console.WriteLine("Key : {0} and Value : {1}", item.Key, item.Value);
   // }
}


