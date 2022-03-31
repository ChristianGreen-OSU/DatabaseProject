import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

import tools.Inventory;
import tools.Media;

/**
 * Library Database Interface program
 *
 * @authors Christian Barrett, Zach Mason, Andrew Kramer, Avijit Kumar
 */
public final class Main {

    /**
     * The database file name.
     *
     * Make sure the database file is in the root folder of the project if you
     * only provide the name and extension.
     */
    private static String DATABASE = "Library.db";

    /**
     * The query statements to be executed.
     */
    //The user provides all the info needed to enter a new record
    //(artist, actor, Audiobook, movie, ..) into the database.
    private static String addNewRecord = "INSERT INTO ? VALUES(";
    //The staff user selects an item option (artist, actor, audiobook, movie),
    //provide the name and are presented with the option to edit/delete any
    //field and then save it, updating the database.
    private static String deleteRecord = "DELETE FROM ?;";

    /**
     * Default constructor--private to prevent instantiation.
     */
    private Main() {
        // no code needed here
    }

    /**
     * Connects to the database if it exists, creates it if it does not, and
     * returns the connection object.
     *
     * @param databaseFileName
     *            the database file name
     * @return a connection object to the designated database
     */
    public static Connection initializeDB(String databaseFileName) {
        /**
         * The "Connection String" or "Connection URL".
         *
         * "jdbc:sqlite:" is the "subprotocol". (If this were a SQL Server
         * database it would be "jdbc:sqlserver:".)
         */
        String url = "jdbc:sqlite:" + databaseFileName;
        Connection conn = null; // If you create this variable inside the Try block it will be out of scope
        try {
            conn = DriverManager.getConnection(url);
            if (conn != null) {
                // Provides some positive assurance the connection and/or creation was successful.
                DatabaseMetaData meta = conn.getMetaData();
                System.out
                        .println("The driver name is " + meta.getDriverName());
                System.out.println(
                        "The connection to the database was successful.");
            } else {
                // Provides some feedback in case the connection failed but did not throw an exception.
                System.out.println("Null Connection");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out
                    .println("There was a problem connecting to the database.");
        }
        return conn;
    }

    private static void addRecords(Scanner in, Connection Conn) {
    	
    	System.out.print("Which media type would you like to add? (A - Album, B - Book, M - Movie): ");
    	String choice = in.next();
    	choice.toLowerCase();
    	
    	if (choice == "a" || choice == "album")
    	{
    		System.out.print("Enter the item number: ");
        	int Item_No = in.nextInt();
        	System.out.print("Enter the Album Name: ");
        	String Name = in.next();
        	System.out.print("Enter the number of songs: ");
        	int Num_Songs = in.nextInt();
        	System.out.print("Enter the artist name: ");
        	String Artist_Name = in.next();
        	
        	insertAlbum(Conn, Item_No, Name, Num_Songs, Artist_Name);
    	}
    	else if (choice == "b" || choice == "book")
    	{
    		System.out.print("Enter the item number: ");
        	int Item_No = in.nextInt();
        	System.out.print("Enter the Book Title: ");
        	String Title = in.next();
        	System.out.print("Enter the number of pages: ");
        	int Length = in.nextInt();
        	System.out.print("Enter the number of chapters: ");
        	int Chapters = in.nextInt();
        	
        	insertBook(Conn, Item_No, Title, Length, Chapters);
    	}
    	else if (choice == "m" || choice == "movie")
    	{
    		System.out.print("Enter the item number: ");
        	int Item_No = in.nextInt();
        	System.out.print("Enter the Movie Title: ");
        	String Title = in.next();
        	System.out.print("Enter the length of the movie in minutes: ");
        	int Length = in.nextInt();
        	System.out.print("Enter the Director's Name: ");
        	String dName = in.next();
        	System.out.print("Enter the Lead Actor's Name: ");
        	String aName = in.next();
        	
        	insertMovie(Conn, Item_No, Title, Length, dName, aName);
    	}
        else
    	{
    		System.out.println("Invalid entry - Try again!");
    	}
    	
        
    }

    private static void editRecords(Scanner in, Inventory inv) {
        System.out.println(
                "Which record would you like to edit? (enter an Item Number)");
        int itemNo = Integer.parseInt(in.nextLine());
        Media record = inv.getMediaByKey(itemNo);

        System.out.println("Which attribute would you like to edit?");
        System.out.println("(a) Item Number");
        System.out.println("(b) Title: ");
        System.out.println("(c) Location: ");
        System.out.println("(d) Length: ");
        String input = in.nextLine();

        if (input.equals("a")) {
            System.out.println("New Item Number? ");
            int newItemNo = Integer.parseInt(in.nextLine());
            record.setItemNo(newItemNo);
        } else if (input.equals("b")) {
            System.out.println("New Title? ");
            String title = in.nextLine();
            record.setTitle(title);
        } else if (input.equals("c")) {
            System.out.println("New Location? ");
            String location = in.nextLine();
            record.setLocation(location);
        } else if (input.equals("d")) {
            System.out.println("New Length? ");
            int length = Integer.parseInt(in.nextLine());
            record.setLength(length);
        }

        System.out.println("Record Edited!");
    }

    private static void searchRecords(Scanner in, Inventory inv) {
        System.out.println(
                "Which record would you like to search? (enter an Item Number)");
        int itemNo = Integer.parseInt(in.nextLine());
        Media record = inv.getMediaByKey(itemNo);
        record.printAttributes();

        System.out.println("Records Searched!");
    }

    private static String menu(Scanner in) {
        System.out.println("(a) Add new records (movies, audiobooks, albums, ..)");
        System.out.println("(b) Edit records (movies, audiobooks, albums, ..)");
        System.out.println("(c) Search (movies, audiobooks, albums, ..)");
        System.out.println("(x) to Exit Program");
        String input = in.nextLine();
        input = input.toLowerCase();
        return input;
    }
   
    
    /*Requires Item_No to be defined uniquely in type Media but not an Album, Track, Movie, or Book
    */
    private static void insertAlbum(Connection conn, int itemNo, String albumName, int numSongs, String artistName) {
        try {
            
            String queryAlbum = " INSERT into Album (Item_No, Name, Num_Songs, Artist_Name)" + " values (?, ?, ?, ?)";
        	
			PreparedStatement stmt = conn.prepareStatement(queryAlbum);
			
			stmt.setInt(1,  itemNo);
			stmt.setString(2, albumName);
			stmt.setInt(3, numSongs);
			stmt.setString(4, artistName);
			
			stmt.execute();
			System.out.println("Successful Entry");
			conn.close();
        } catch(SQLException e){
            System.out.println(e.getMessage());
			System.out.println("ERROR when adding to Album");
            }   
    }
    
    private static void insertBook(Connection conn, int Item_No, String Title, int Length, int Chapters) {
    	try {
        	String queryBook = " INSERT into Book (Item_No, Title, Length, Chapters)" + " values (?, ?, ?, ?)";
        	
			PreparedStatement prepStmt = conn.prepareStatement(queryBook);
			
			prepStmt.setInt(1,  Item_No);
			prepStmt.setString(2,  Title);
			prepStmt.setInt(3, Length);
			prepStmt.setInt(4, Chapters);
			
			prepStmt.execute();
			System.out.println("Successful Entry");
			conn.close();
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ERROR when adding to Book");
		}
    }
    
    private static void insertMovie(Connection conn, int Item_No, String Title, int Length, String dName, String aName) {
    	try {
        	String queryMovie = " INSERT into Movie (Item_No, Title, Length, Director_Name, Actor_Name)" + " values (?, ?, ?, ?, ?)";
        	
			PreparedStatement prepStmt = conn.prepareStatement(queryMovie);
			
			prepStmt.setInt(1,  Item_No);
			prepStmt.setString(2,  Title);
			prepStmt.setInt(3, Length);
			prepStmt.setString(4, dName);
			prepStmt.setString(5,  aName);
			
			prepStmt.execute();
			System.out.println("Successful Entry");
			conn.close();
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ERROR when adding to Book");
		}
    }
                           
    private static void deleteAlbum(Connection conn, int itemNo){
        try{
            String query = "DELETE FROM Album WHERE Item_No = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, itemNo);
            stmt.executeUpdate();
            System.out.println("Sucessfully deleted album record.");
         
        } catch(SQLException e){
            System.out.println(e.getMessage());
            }  
    }

    /**
     * Main method.
     *
     * @param args
     *            the command line arguments; unused here
     */
    public static void main(String[] args) {
        Inventory inv = new Inventory();
        Scanner in = new Scanner(System.in);
        String input = menu(in);

        while (!input.equals("x")) {
            if (input.equals("a")) { //add new record
                inv.addMedia(addRecords(in));
            } else if (input.equals("b")) { //edit record
                editRecords(in, inv);
            } else if (input.equals("c")) { //Search for record
                searchRecords(in, inv);
            }
            System.out.println();
            input = menu(in);
        }
    }

}
