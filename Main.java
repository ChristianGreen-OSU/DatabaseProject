import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
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

    private static Media addRecords(Scanner in) {
        System.out.println("Item Number: ");
        int itemNo = Integer.parseInt(in.nextLine());
        System.out.println("Title: ");
        String title = in.nextLine();
        System.out.println("Location: ");
        String location = in.nextLine();
        System.out.println("Length: ");
        int length = Integer.parseInt(in.nextLine());

        Media record = new Media(itemNo, title, location, length);
        System.out.println("New Record Added!");
        return record;
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
        System.out.println(
                "(a) Add new records (movies, audiobooks, albums, ..)");
        System.out.println("(b) Edit records (movies, audiobooks, albums, ..)");
        System.out.println("(c) Search (movies, audiobooks, albums, ..)");
        System.out.println("(x) to Exit Program");
        String input = in.nextLine();
        input = input.toLowerCase();
        return input;
    }
   
    
    /*Requires Item_No to be defined uniquely in type Media but not an Album, Track, Movie, or Book
    */
    private static void insertAlbum(Connection conn, int itemNo, String albumName, int numSongs, String artistName){
        try {
            String query = "INSERT INTO Album (Item_No, Name, Num_Songs, Artist_Name) values (?,?,?,?)";
            PreparedStatement stmt = conn.preparedStatement(query);
            stmt.setInt(itemNo);
            stmt.setString(albumName);
            stmt.setInt(numSongs);
            stmt.setInt(artistName);
            stmt.executeUpdate();
            System.println("Sucessfully inserted album record.);
            } catch(SQLException e){
            System.out.println(e.getMessage());
            }   
    }
                           
    private static void deleteAlbum(Connection conn, int itemNo){
        try{
            String query = "DELETE FROM Album WHERE Item_No = ?";
            PreparedStatement stmt = conn.preparedStatement(query);
            stmt.setInt(itemNo);
            stmt.executeUpdate();
            System.println("Sucessfully deleted album record.);
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
