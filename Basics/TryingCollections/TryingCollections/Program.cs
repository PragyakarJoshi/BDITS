using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TryingCollections
{
    class Program
    {
        static void Main(string[] args)
        {
            bool cont = true;
            int totalElementsInList = 0;
            int sumOfElementsInList = 0;
            int totalElementsInDictionary = 0;
            int totalElementsInHashtable = 0;

            List<int> userArray = new List<int>();
            Dictionary<string, int> userDictionary = new Dictionary<string, int>();
            Hashtable userHt = new Hashtable();

            Console.WriteLine("|-------------------------------------------------------|");
            Console.WriteLine("|  Collections in C#                                    |");
            Console.WriteLine("|-------------------------------------------------------|");
            Console.WriteLine("|  1. List                                              |");
            Console.WriteLine("|  2. Dictionary                                        |");
            Console.WriteLine("|  3. HashTable                                         |");
            Console.WriteLine("|-------------------------------------------------------|");
            Console.Write("Which type of collection would you like to work with? [1-3]: ");
            int colType = int.Parse(Console.ReadLine());

            if (colType == 1)
            {
                 while (cont)
            {
                try
                {
                    Console.WriteLine("\n|-------------------------------------------------------|");
                    Console.WriteLine("|  Working with List                                    |");
                    Console.WriteLine("|-------------------------------------------------------|");
                    Console.WriteLine("|  1. Add an Item to List                               |");
                    Console.WriteLine("|  2. Add multiple Item to List                         |");
                    Console.WriteLine("|  3. Remove item from List                             |");
                    Console.WriteLine("|  4. Remove item at particular index from List         |");
                    Console.WriteLine("|  5. Display total number of elements in the List      |");
                    Console.WriteLine("|  6. Display all the elements in the List              |");
                    Console.WriteLine("|  7. Calculate the sum of all the elements in the List |");
                    Console.WriteLine("|  8. Exit                                              |");
                    Console.WriteLine("|-------------------------------------------------------|");


                    Console.Write("Enter your choice [1-8]: ");
                    int choice = int.Parse(Console.ReadLine());
                    
                    switch (choice)
                    {
                        case 1:
                            Console.Write("Enter the number you want to add to the List: ");
                            int newNum = int.Parse(Console.ReadLine());
                            userArray.Add(newNum);
                            Console.WriteLine("\nSucessfully Added {0}", newNum);

                            Console.Write("\nPress any key to continue...");
                            Console.ReadKey();
                            break;
                        case 2:
                            Console.Write("Enter the number of items that you want to add to the List: ");
                            int range = int.Parse(Console.ReadLine());
                            int[] rangeArray = new int[range];
                            for (int i = 0; i < range; i++)
                            {
                                Console.Write("Enter the number you you want to add to the List: ");
                                rangeArray[i] = int.Parse(Console.ReadLine());
                            }
                            userArray.AddRange(rangeArray);
                            Console.WriteLine("\n{0} elements were added to the List", range);
                        
                            Console.Write("\nPress any key to continue...");
                            Console.ReadKey();
                            break;
                        case 3:
                            Console.Write("Enter the element that you want to remove from the List: ");
                            int remNum = int.Parse(Console.ReadLine());
                            if (userArray.Contains(remNum))
                            {
                                userArray.Remove(remNum);
                                Console.WriteLine("{0} has been removed sucessfully from the List.", remNum);
                            }
                            else
                            {
                                Console.WriteLine("{0} does not exist in the List", remNum);
                            }
                        

                            Console.Write("\nPress any key to continue...");
                            Console.ReadKey();
                            break;
                        case 4:
                            Console.Write("Enter the index of the item that you want to remove from the List: ");
                            int remIndex = int.Parse(Console.ReadLine());
                            if (remIndex < userArray.Count )
                            {
                                userArray.RemoveAt(remIndex);
                                Console.WriteLine("The element at {0} index has been removed.", remIndex);
                            }
                            else
                            {
                                Console.WriteLine("There is no such index");
                            }

                            Console.Write("\nPress any key to continue...");
                            Console.ReadKey();
                            break;
                        case 5:
                            Console.Write("Total Number of elements in the List: ");
                            totalElementsInList = userArray.Count;
                            Console.Write(totalElementsInList);

                            Console.Write("\nPress any key to continue...");
                            Console.ReadKey();
                            break;
                        case 6:
                            Console.WriteLine("All the elements in the List: ");
                            foreach(int element in userArray)
                            {
                                Console.Write(element + "\t");
                            }

                            Console.Write("\nPress any key to continue...");
                            Console.ReadKey();
                            break;
                        case 7:
                            Console.Write("\nSum of all elements in the List: ");
                            foreach (int element in userArray)
                            {
                                sumOfElementsInList += element;
                            }
                            Console.Write(sumOfElementsInList);

                            Console.Write("\nPress any key to continue...");
                            Console.ReadKey();
                            break;
                        case 8:
                            Console.WriteLine("Program Terminated");
                            cont = false;
                            break;
                        default:
                            Console.WriteLine("Invalid Option");

                            Console.Write("\nPress any key to continue...");
                            Console.ReadKey();
                            break;
                    }
                Console.WriteLine("\n");
                }
                catch (FormatException fe)
                {
                    Console.WriteLine("\nOnly enter numbers/integers\n");
                }
            }
            Console.Write("Press any key to exit...");
            Console.ReadKey();
            }
            else if (colType == 2)
            {
                while (cont)
                {
                    try
                    {
                        Console.WriteLine("\n|-------------------------------------------------------|");
                        Console.WriteLine("|  Working with Dictionary                              |");
                        Console.WriteLine("|-------------------------------------------------------|");
                        Console.WriteLine("|  1. Add an new Item to the dictionary                 |");
                        Console.WriteLine("|  2. Add a new Key to the dictionary                   |");
                        Console.WriteLine("|  3. Change value of a specific key                    |");
                        Console.WriteLine("|  4. Remove an item from the dictionary                |");
                        Console.WriteLine("|  5. Remove a value of a key from the dictionary       |");
                        Console.WriteLine("|  6. Display total number of elements in the Dictionary|");
                        Console.WriteLine("|  7. Display all the elements in the Dictionary        |");
                        Console.WriteLine("|  8. Display all the keys in the Dictionary            |");
                        Console.WriteLine("|  9. Exit                                              |");
                        Console.WriteLine("|-------------------------------------------------------|");
                        Console.Write("Enter your choice [1-9]: ");
                        int choice = int.Parse(Console.ReadLine());

                        switch (choice)
                        {
                            case 1:
                                Console.Write("\nEnter a new Key: ");
                                string newKey = Console.ReadLine();
                                if (userDictionary.ContainsKey(newKey))
                                {
                                    Console.WriteLine("{0} already exists as a key in the dictionary", newKey);
                                }
                                else 
                                {
                                    Console.Write("Enter the a new new value for the key, {0}: ", newKey);
                                    int newValue = int.Parse(Console.ReadLine());

                                    userDictionary.Add(newKey, newValue);
                                    Console.WriteLine("\nA new entry in the dictionary has been made with {0} as key and {1} as value", newKey, newValue);
                                }
                                
                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 2:
                                Console.Write("Enter a new Key: ");
                                string nayaKey = Console.ReadLine();

                                userDictionary.Add(nayaKey, 0);
                                Console.WriteLine("\nA new entry in the dictionary has been made with {0} as key and null value", nayaKey);

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 3:
                                Console.Write("Enter the key for which you want to add value: ");
                                string key = Console.ReadLine();

                                if (userDictionary.ContainsKey(key))
                                {
                                    Console.Write("Enter new value for the key {0}: ", key);
                                    int updatedValue = int.Parse(Console.ReadLine());
                                    userDictionary[key] = updatedValue;
                                    Console.WriteLine("\nValue Updated");
                                }
                                else
                                {
                                    Console.WriteLine("\nKey does not exist in the current dictionary.");
                                }

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 4:
                                Console.Write("\nEnter the key of the entry that you want to delete: ");
                                string delKey = Console.ReadLine();

                                if (userDictionary.ContainsKey(delKey))
                                {
                                    userDictionary.Remove(delKey);
                                    Console.WriteLine("\n{0} has been successfully removed from the dictionary", delKey);
                                }
                                else
                                {
                                    Console.WriteLine("\n{0} does not exist as a key in the dictionary", delKey);
                                }
                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;

                            case 5:
                                Console.Write("Enter they key of the entry for which you want to clear the value: ");
                                string remKey = Console.ReadLine();

                                if (userDictionary.ContainsKey(remKey))
                                {
                                    userDictionary[remKey] = 0;
                                    Console.WriteLine("\nthe value of {0} has been successfully cleared from the dictionary", remKey);
                                }
                                else
                                {
                                    Console.WriteLine("\n{0} does not exist as a key in the dictionary", remKey);
                                }

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 6:
                                totalElementsInDictionary = userDictionary.Count;

                                if (totalElementsInDictionary > 0)
                                {
                                    Console.Write("\nTotal number of elements in the dictionary: {0}", totalElementsInDictionary);
                                }
                                else
                                {
                                    Console.WriteLine("There are no entries in the dictionary currently.");
                                }

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 7:
                                Console.WriteLine("\nAll elements in the Dictionary: \n");

                                if (userDictionary.Count > 0)
                                {
                                    Console.WriteLine("Key \t Value");
                                    foreach (KeyValuePair<string, int> entry in userDictionary)
                                    {
                                        Console.WriteLine(entry.Key + " \t " + entry.Value);
                                    }
                                }
                                else
                                {
                                    Console.WriteLine("Dictionary is empty.");
                                }

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 8:
                                if (userDictionary.Count > 0)
                                {
                                    Console.WriteLine("\nList of Keys in the Dictionary\n");
                                    foreach (KeyValuePair<string, int> entry in userDictionary)
                                    {
                                        Console.WriteLine(entry.Key);
                                    }
                                }
                                else
                                {
                                    Console.WriteLine("\nDictionary is empty.\n");
                                }

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;

                            case 9:
                                Console.WriteLine("\nProgram Terminated");
                                cont = false;

                                break;
                            default:
                                Console.WriteLine("Invalid Option");

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                        }
                    }
                    catch (FormatException fe)
                    {
                        Console.WriteLine("\n Enter the right data type please.");
                        Console.Write("\nPress any key to continue...");
                        Console.ReadKey();
                    }
                }
                Console.Write("Press any key to exit...");
                Console.ReadKey();
            }
            else if (colType == 3)
            {
                while(cont)
                {
                    try
                    {
                        Console.WriteLine("\n|-------------------------------------------------------|");
                        Console.WriteLine("|  Working with Hashtables                              |");
                        Console.WriteLine("|-------------------------------------------------------|");
                        Console.WriteLine("|  1. Add an new Item to the hashtable                  |");
                        Console.WriteLine("|  2. Add a new Key to the hashtable                    |");
                        Console.WriteLine("|  3. Change value of a specific key                    |");
                        Console.WriteLine("|  4. Remove an item from the hashtable                 |");
                        Console.WriteLine("|  5. Remove a value of a key from the hashtable        |");
                        Console.WriteLine("|  6. Display total number of elements in the hashtable |");
                        Console.WriteLine("|  7. Display all the elements in the hashtable         |");
                        Console.WriteLine("|  8. Display all the keys in the hastable              |");
                        Console.WriteLine("|  9. Clear the hashtable                               |");
                        Console.WriteLine("|  10. Exit                                             |");
                        Console.WriteLine("|-------------------------------------------------------|");
                        Console.Write("Enter your choice [1-10]: ");
                        int choice = int.Parse(Console.ReadLine());

                        switch (choice)
                        {
                            case 1:
                                Console.Write("\nEnter a new Key: ");
                                String newHashKey = Console.ReadLine();
                                if (userHt.ContainsKey(newHashKey))
                                {
                                    Console.WriteLine("{0} already exists as a key in the hashtable", newHashKey);
                                }
                                else
                                {
                                    Console.Write("Enter a new value for the key, {0}: ", newHashKey);
                                    string newHashValue = Console.ReadLine();

                                    userHt.Add(newHashKey, newHashValue);
                                    Console.WriteLine("\nA new entry in the hastable has been made with {0} as key and {1} as value", newHashKey, newHashValue);
                                }

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 2:
                                Console.Write("\nEnter a new Key: ");
                                String nayaHashKey = Console.ReadLine();
                                if (userHt.ContainsKey(nayaHashKey))
                                {
                                    Console.WriteLine("{0} already exists as a key in the hashtable", nayaHashKey);
                                }
                                else
                                {
                                    userHt.Add(nayaHashKey, null);
                                    Console.WriteLine("\nA new entry in the hastable has been made with {0} as key and null value", nayaHashKey);
                                }
                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 3:
                                Console.Write("Enter the key for which you want to add value: ");
                                string currentKey = Console.ReadLine();

                                if (userHt.ContainsKey(currentKey))
                                {
                                    Console.Write("Enter new value for the key {0}: ", currentKey);
                                    string updatedHtValue = Console.ReadLine();
                                    userHt[currentKey] = updatedHtValue;
                                    Console.WriteLine("\nValue Updated");
                                }
                                else
                                {
                                    Console.WriteLine("\nKey does not exist in the current dictionary.");
                                }
                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 4:
                                Console.Write("\nEnter the key of the entry that you want to delete: ");
                                string delHtKey = Console.ReadLine();

                                if (userHt.ContainsKey(delHtKey))
                                {
                                    userHt.Remove(delHtKey);
                                    Console.WriteLine("\n{0} has been successfully removed from the hashtable", delHtKey);
                                }
                                else
                                {
                                    Console.WriteLine("\n{0} does not exist as a key in the dictionary", delHtKey);
                                }

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 5:
                                Console.Write("Enter they key of the entry for which you want to clear the value: ");
                                string remHtKey = Console.ReadLine();

                                if (userHt.ContainsKey(remHtKey))
                                {
                                    userDictionary[remHtKey] = 0;
                                    Console.WriteLine("\nthe value of {0} has been successfully cleared from the hashtable", remHtKey);
                                }
                                else
                                {
                                    Console.WriteLine("\n{0} does not exist as a key in the hashtable", remHtKey);
                                }

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 6:
                                totalElementsInHashtable = userHt.Count;

                                if (totalElementsInHashtable > 0)
                                {
                                    Console.Write("\nTotal number of elements in the hashtable: {0}", totalElementsInHashtable);
                                }
                                else
                                {
                                    Console.WriteLine("There are no entries in the hashtable currently.");
                                }

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 7:
                                if (userHt.Count > 0)
                                {
                                    Console.WriteLine("\nAll elements in the hashtable: \n");
                                    Console.WriteLine("Key \t Value");
                                    foreach (string key in userHt.Keys)
                                    {
                                        Console.WriteLine(String.Format("{0} \t {1}", key, userHt[key]));
                                    }
                                }
                                else
                                {
                                    Console.WriteLine("Hashtable is empty.");
                                }
                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 8:
                                if (userHt.Count > 0)
                                {
                                    Console.WriteLine("\nAll keys in the hashtable: \n");

                                    foreach (string key in userHt.Keys)
                                    {
                                        Console.WriteLine(String.Format(key));
                                    }
                                }
                                else
                                {
                                    Console.WriteLine("Hashtable is empty.");
                                }
                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 9:
                                if (userHt.Count > 0)
                                {
                                    Console.WriteLine("Are you sure you want to clear everything?(Press Y to confirm and any other key to cancel): ");
                                    string confirmation = Console.ReadLine();

                                    if (confirmation == "Y")
                                    {
                                        userHt.Clear();
                                        Console.WriteLine("Hashtable cleared");
                                    }
                                }
                                else
                                {
                                    Console.WriteLine("There are no entries in the hastable. No need to be cleared.");
                                }
                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                            case 10:
                                Console.WriteLine("\nProgram Terminated");
                                cont = false;
                                break;
                            default:
                                Console.WriteLine("Invalid Option");

                                Console.Write("\nPress any key to continue...");
                                Console.ReadKey();
                                break;
                        }

                    }
                    catch(FormatException fe)
                    {
                        Console.WriteLine("\n Enter the right data type please.");
                        Console.Write("\nPress any key to continue...");
                        Console.ReadKey();
                    }
                }
            }
            else
            {
                Console.WriteLine("Invalid Option");
                Console.Write("Press any key to exit...");
                Console.ReadKey();
            }
        }
    }
}
