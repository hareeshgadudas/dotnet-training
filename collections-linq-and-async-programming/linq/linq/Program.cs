// See https://aka.ms/new-console-template for more information





using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Xml.Linq;
using System.Reflection;

xmlread();



void reflection()
{
    // Using GetType to obtain type information:
    int i = 42;
    System.Type type = i.GetType();
    // create instance of class DateTime
    DateTime dateTime = (DateTime)Activator.CreateInstance(typeof(DateTime));
}

void sample()
{
    int[] numbers = { 5, 4, 1, 3, 9, 8 };
    //int[] numbers2 = new int[10];
    //numbers.CopyTo(numbers2, 2);
    //foreach (var item in numbers2)
    //{
    //    Console.WriteLine(item);
    //}
    var numsPlusOne = from n in numbers
                      select n;
    foreach (var i in numsPlusOne)
    {
        Console.WriteLine(i);
    }
}

void sample1()
{
    int[] nums = new int[] { 7,3,0, 1,5, 2,9,4 };
    var res = from a in nums 
              where a < 5 
              orderby a 
              select a;
    foreach (int i in res)
        Console.WriteLine(i);
}

void sample2()
{
    string[] names = { "Life is Beautiful",
                              "Arshika Agarwal",
                              "Seven Pounds",
                              "Rupali Agarwal",
                              "Pearl Solutions",
                              "Vamika Agarwal",
                              "Vidya Vrat Agarwal",
                              "C-Sharp Corner Mumbai Chapter"
                           };
    //Linq query  
    IEnumerable<string> namesOfPeople = from name in names
                                        where name.Length <= 16
                                        select name;


    foreach (var name in namesOfPeople)
    {
        Console.WriteLine(name);
    }
}

void sample3()
{
    var employess = new List<Employee>() { 
    new Employee() {Id=1, Name="emp1", Address="addr1", Age=20},
    new Employee() {Id=2, Name="emp2", Address="addr1", Age=25},
    new Employee() {Id=3, Name="emp3", Address="addr1", Age=19},
    new Employee() {Id=4, Name="emp4", Address="addr1", Age=17},
    new Employee() {Id=5, Name="emp5", Address="addr1", Age=32},
    new Employee() {Id=6, Name="emp6", Address="addr1", Age=28}
    };

    var employees20YO = from employee in employess
                        where employee.Age <=20
                        select new { employee.Name, employee.Age };

    foreach (var emp in employees20YO)
    {
        Console.WriteLine($"{emp.Name}  {emp.Age}");
    }
}

void multipleSelect()
{
    int[] numbersA = { 0, 2, 4, 5, 6, 8, 9 };
    int[] numbersB = { 1, 3, 5, 7, 8 };
    var pairs = from a in numbersA 
                from b in numbersB 
                where a < b 
                select new { a, b };
    //Console.WriteLine("Pairs where a < b:");
    foreach (var pair in pairs)
    {
        Console.WriteLine($"{pair.a} {pair.b}");
    }
    //foreach (var pair in pairs)
    //{
    //    Console.WriteLine("{0} is less than {1}", pair.a, pair.b);
    //}
}

void xmlread()
{
    var filename = "order.xml";
    var currentDirectory = Directory.GetCurrentDirectory();
    var purchaseOrderFilepath = Path.Combine(currentDirectory, filename);

    XElement purchaseOrder = XElement.Load(purchaseOrderFilepath);

    IEnumerable<string> partNos = from item in purchaseOrder.Descendants("Item")
                                  select (string)item.Attribute("PartNumber");
    foreach (var item in partNos)
    {
        Console.WriteLine(item);
    }
}


class Employee{
    public string Name { get; set; }
    public int Id { get; set; }
    public string Address { get; set; }
    public int Age { get; set; }
}