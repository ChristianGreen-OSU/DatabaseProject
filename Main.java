import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

/**
 * Library Database Interface program
 *
 * @authors Christian Barrett, Zach Mason, Andrew Kramer, Avijit Kumar
 */
public final class Main {

    //TODO: Insert tracks? Maybe a fake "upload a list of all tracks and we'll parse it" method
    //TODO: Search by library card number, actor/director/artist/author name
    //TODO: Order functionality

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

    //The staff user selects an item option (artist, actor, audiobook, movie),
    //provide the name and are presented with the option to edit/delete any
    //field and then save it, updating the database.

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
            printSQLException(e);
            System.out
                    .println("There was a problem connecting to the database.");
        }
        return conn;
    }

    private static void addRecords(Scanner in, Connection Conn, int Max_Item_No)
            throws SQLException {

        System.out.println(
                "Which media type would you like to add? (A - Album, B - Book, M - Movie): ");
        String choice = in.nextLine();
        choice = choice.toLowerCase();
        Max_Item_No++;
        int Item_No = Max_Item_No;

        if (choice.equals("a") || choice.equals("album")) {
            //System.out.println("Enter the item number: ");
            //int Item_No = Integer.parseInt(in.nextLine());
            System.out.println("Enter the Album Name: ");
            String Name = in.nextLine();
            System.out.println("Enter the number of songs: ");
            int Num_Songs = Integer.parseInt(in.nextLine());
            System.out.println("Enter the artist name: ");
            String Artist_Name = in.nextLine();
            System.out.println("Enter the year: ");
            int year = Integer.parseInt(in.nextLine());
            System.out.println("Enter the genre: ");
            String genre = in.nextLine();
            System.out.println("Enter the location: ");
            String location = in.nextLine();
            System.out.println("Enter the type (digital/physical): ");
            String type = in.nextLine();
            System.out.println("Enter the number of copies: ");
            int numCopies = Integer.parseInt(in.nextLine());
            System.out.println("Enter the price: ");
            int price = Integer.parseInt(in.nextLine());
            System.out.println("Enter the number of copies checked out: ");
            int numCopiesChecked = Integer.parseInt(in.nextLine());

            if (!checkArtist(Conn, Artist_Name)) {
                System.out.println("Is the artist still active? (Y/N)");
                String active = in.nextLine();
                boolean activeStatus = false;
                if (active.equals("Y")) {
                    activeStatus = true;
                }
                insertArtist(Conn, Artist_Name, activeStatus);
            }
            //TODO: Do we have a way of adding Tracks?

            insertMedia(Conn, Item_No, year, genre, location, type, numCopies,
                    price, numCopiesChecked);
            insertAlbum(Conn, Item_No, Name, Num_Songs, Artist_Name);
        } else if (choice.equals("b") || choice.equals("book")) {
            //System.out.println("Enter the item number: ");
            //int Item_No = Integer.parseInt(in.nextLine());
            System.out.println("Enter the Book Title: ");
            String Title = in.nextLine();
            System.out.println("Enter the number of pages: ");
            int Length = Integer.parseInt(in.nextLine());
            System.out.println("Enter the number of chapters: ");
            int Chapters = Integer.parseInt(in.nextLine());
            System.out.println("Enter the year: ");
            int year = Integer.parseInt(in.nextLine());
            System.out.println("Enter the genre: ");
            String genre = in.nextLine();
            System.out.println("Enter the location: ");
            String location = in.nextLine();
            System.out.println("Enter the type (digital/physical): ");
            String type = in.nextLine();
            System.out.println("Enter the number of copies: ");
            int numCopies = Integer.parseInt(in.nextLine());
            System.out.println("Enter the price: ");
            int price = Integer.parseInt(in.nextLine());
            System.out.println("Enter the number of copies checked out: ");
            int numCopiesChecked = Integer.parseInt(in.nextLine());

            System.out.println("Enter the authors name: ");
            String name = in.nextLine();
            if (!checkAuthor(Conn, name)) {
                insertAuthor(Conn, name, genre);
            }

            insertMedia(Conn, Item_No, year, genre, location, type, numCopies,
                    price, numCopiesChecked);
            insertBook(Conn, Item_No, Title, Length, Chapters);
        } else if (choice.equals("m") || choice.equals("movie")) {
            //System.out.println("Enter the item number: ");
            //int Item_No = Integer.parseInt(in.nextLine());
            System.out.println("Enter the Movie Title: ");
            String Title = in.nextLine();
            System.out.println("Enter the length of the movie in minutes: ");
            int Length = Integer.parseInt(in.nextLine());
            System.out.println("Enter the Director's Name: ");
            String dName = in.nextLine();
            System.out.println("Enter the Lead Actor's Name: ");
            String aName = in.nextLine();
            System.out.println("Enter the year: ");
            int year = Integer.parseInt(in.nextLine());
            System.out.println("Enter the genre: ");
            String genre = in.nextLine();
            System.out.println("Enter the location: ");
            String location = in.nextLine();
            System.out.println("Enter the type (digital/physical): ");
            String type = in.nextLine();
            System.out.println("Enter the number of copies: ");
            int numCopies = Integer.parseInt(in.nextLine());
            System.out.println("Enter the price: ");
            int price = Integer.parseInt(in.nextLine());
            System.out.println("Enter the number of copies checked out: ");
            int numCopiesChecked = Integer.parseInt(in.nextLine());

            if (!checkDirector(Conn, dName)) {
                insertDirector(Conn, dName, genre);
            }

            if (!checkActor(Conn, aName)) {
                System.out.println("Lead Actor's Birthdate (1/1/1990)");
                String bdate = in.nextLine();
                insertActor(Conn, aName, bdate);
            }

            insertMedia(Conn, Item_No, year, genre, location, type, numCopies,
                    price, numCopiesChecked);
            insertMovie(Conn, Item_No, Title, Length, dName, aName);

        } else {
            System.out.println("Invalid entry - Try again!");
        }

    }

    private static void deleteRecords(Scanner in, Connection Conn)
            throws SQLException {

        System.out.println(
                "Which media type would you like to delete? (A - Album, B - Book, M - Movie): ");
        String choice = in.nextLine();
        choice = choice.toLowerCase();

        if (choice.equals("a") || choice.equals("album")) {
            System.out.println("Enter the name: ");
            String name = in.nextLine();
            deleteAlbum(Conn, name);
        } else if (choice.equals("b") || choice.equals("book")) {
            System.out.println("Enter the name: ");
            String name = in.nextLine();
            deleteBook(Conn, name);
        } else if (choice.equals("m") || choice.equals("movie")) {
            System.out.println("Enter the name: ");
            String name = in.nextLine();
            deleteMovie(Conn, name);
        } else {
            System.out.println("Invalid entry - Try again!");
        }

    }

    private static void searchRecords(Scanner in, Connection Conn)
            throws SQLException {

        System.out.println(
                "Which media type would you like to search? (A - Album, B - Book, M - Movie): ");
        String choice = in.nextLine();
        choice = choice.toLowerCase();

        if (choice.equals("a") || choice.equals("album")) {
            System.out.println("Enter the name: ");
            String name = in.nextLine();
            searchAlbum(Conn, name);
        } else if (choice.equals("b") || choice.equals("book")) {
            System.out.println("Enter the name: ");
            String name = in.nextLine();
            searchBook(Conn, name);
        } else if (choice.equals("m") || choice.equals("movie")) {
            System.out.println("Enter the name: ");
            String name = in.nextLine();
            searchMovie(Conn, name);
        } else {
            System.out.println("Invalid entry - Try again!");
        }

    }

    private static void orderRecords(Scanner in, Connection Conn)
            throws SQLException {

        System.out.println(
                "Which media type would you like to order? (A - Album, B - Book, M - Movie): ");
        String choice = in.nextLine();
        choice = choice.toLowerCase();
        int quantity = 0;
        System.out.println();

        if (choice.equals("a") || choice.equals("album")) {
            System.out.println("Enter the Album Name: ");
            String Name = in.nextLine();
            System.out.println("Enter the artist name: ");
            String Artist_Name = in.nextLine();

            orderAlbum(Conn, Name, Artist_Name);
        } else if (choice.equals("b") || choice.equals("book")) {
            System.out.println("Enter the Book Title: ");
            String Title = in.nextLine();
            System.out.println("Enter the author name: ");
            String Author_Name = in.nextLine();

            orderBook(Conn, Title, Author_Name);
        } else if (choice.equals("m") || choice.equals("movie")) {
            System.out.println("Enter the Movie Title: ");
            String Title = in.nextLine();

            orderMovie(Conn, Title);
        } else {
            System.out.println("Invalid entry - Try again!");
        }

    }

    {
//    private static void editRecords(Scanner in, Inventory inv) {
//        System.out.println(
//                "Which record would you like to edit? (enter an Item Number)");
//        int itemNo = Integer.parseInt(in.nextLine());
//        Media record = inv.getMediaByKey(itemNo);
//
//        System.out.println("Which attribute would you like to edit?");
//        System.out.println("(a) Item Number");
//        System.out.println("(b) Title: ");
//        System.out.println("(c) Location: ");
//        System.out.println("(d) Length: ");
//        String input = in.nextLine();
//
//        if (input.equals("a")) {
//            System.out.println("New Item Number? ");
//            int newItemNo = Integer.parseInt(in.nextLine());
//            record.setItemNo(newItemNo);
//        } else if (input.equals("b")) {
//            System.out.println("New Title? ");
//            String title = in.nextLine();
//            record.setTitle(title);
//        } else if (input.equals("c")) {
//            System.out.println("New Location? ");
//            String location = in.nextLine();
//            record.setLocation(location);
//        } else if (input.equals("d")) {
//            System.out.println("New Length? ");
//            int length = Integer.parseInt(in.nextLine());
//            record.setLength(length);
//        }
//
//        System.out.println("Record Edited!");
//    }
//
//    private static void searchRecords(Scanner in, Inventory inv) {
//        System.out.println(
//                "Which record would you like to search? (enter an Item Number)");
//        int itemNo = Integer.parseInt(in.nextLine());
//        Media record = inv.getMediaByKey(itemNo);
//        record.printAttributes();
//
//        System.out.println("Records Searched!");
//    }
    }

    private static String menu(Scanner in) {
        System.out.println(
                "(a) Add new records (movies, audiobooks, albums, ..)");
        System.out.println(
                "(b) Edit/Delete records (movies, audiobooks, albums, ..)");
        System.out.println("(c) Search (movies, audiobooks, albums, ..)");
        System.out.println("(d) Order items (movies, audiobooks, albums, ..)");
        System.out.println("(x) to Exit Program");
        String input = in.nextLine();
        input = input.toLowerCase();
        return input;
    }

    /*
     * Requires Item_No to be defined uniquely in type Media but not an Album,
     * Track, Movie, or Book
     */
    private static void insertAlbum(Connection conn, int itemNo,
            String albumName, int numSongs, String artistName)
            throws SQLException {
        PreparedStatement stmt = null;
        try {

            String queryAlbum = " INSERT into Album (Item_No, Name, Num_Songs, Artist_Name)"
                    + " values (?, ?, ?, ?)";

            stmt = conn.prepareStatement(queryAlbum);

            stmt.setInt(1, itemNo);
            stmt.setString(2, albumName);
            stmt.setInt(3, numSongs);
            stmt.setString(4, artistName);

            stmt.execute();
            System.out.println("Successful Entry");
        } catch (SQLException e) {
            printSQLException(e);
            System.out.println("ERROR when adding to Album");
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }

    }

    private static void insertBook(Connection conn, int Item_No, String Title,
            int Length, int Chapters) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryBook = " INSERT into Audiobook (Item_No, Title, Length, Chapters)"
                    + " values (?, ?, ?, ?)";

            stmt = conn.prepareStatement(queryBook);

            stmt.setInt(1, Item_No);
            stmt.setString(2, Title);
            stmt.setInt(3, Length);
            stmt.setInt(4, Chapters);

            stmt.execute();
            System.out.println("Successful Entry");

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("ERROR when adding to AudioBook");
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static void insertMovie(Connection conn, int Item_No, String Title,
            int Length, String dName, String aName) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryMovie = " INSERT into Movie (Item_No, Title, Length, Director_Name, Actor_Name)"
                    + " values (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(queryMovie);

            stmt.setInt(1, Item_No);
            stmt.setString(2, Title);
            stmt.setInt(3, Length);
            stmt.setString(4, dName);
            stmt.setString(5, aName);

            stmt.execute();
            System.out.println("Successful Entry");

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("ERROR when adding to Movie");
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static void insertMedia(Connection conn, int item_No, int year,
            String genre, String location, String type, int numCopies,
            int price, int numChecked) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryMedia = " INSERT into Media(Item_No, Year, Genre, Location, Type, Num_Copies, Price, Num_times_checked_out)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?)"; //Pretty sure not supposed to concatenate
            stmt = conn.prepareStatement(queryMedia);

            stmt.setInt(1, item_No);
            stmt.setInt(2, year);
            stmt.setString(3, genre);
            stmt.setString(4, location);
            stmt.setString(5, type);
            stmt.setInt(6, numCopies);
            stmt.setInt(7, price);
            stmt.setInt(8, numChecked);

            stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("ERROR when adding to Media");
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static void insertAuthor(Connection conn, String name, String genre)
            throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryAuthor = " INSERT into Author(Name, Genre)"
                    + " values (?, ?)";
            stmt = conn.prepareStatement(queryAuthor);

            stmt.setString(1, name);
            stmt.setString(2, genre);

            stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("ERROR when adding to Author");
        }
    }

    private static void insertDirector(Connection conn, String name,
            String genre) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryDirector = " INSERT into Director(Director_Name, Genre)"
                    + " values (?, ?)";
            stmt = conn.prepareStatement(queryDirector);

            stmt.setString(1, name);
            stmt.setString(2, genre);

            stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("ERROR when adding to Director");
        }
    }

    private static void insertActor(Connection conn, String name,
            String birthDate) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryActor = " INSERT into Actor(Actor_Name, Birth_Date)"
                    + " values (?, ?)";
            stmt = conn.prepareStatement(queryActor);

            stmt.setString(1, name);
            stmt.setString(2, birthDate);

            stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("ERROR when adding to Actor");
        }
    }

    private static void insertArtist(Connection conn, String name,
            boolean activeStatus) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryArtist = " INSERT into Artist(Artist_Name, Active_Status)"
                    + " values (?, ?)";
            stmt = conn.prepareStatement(queryArtist);

            stmt.setString(1, name);
            stmt.setBoolean(2, activeStatus);

            stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("ERROR when adding to Artist");
        }
    }

    private static void insertWrites(Connection conn, String author, int itemNo)
            throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryWrites = " INSERT into Writes(Name, Item_No)"
                    + " values (?, ?)"; //Pretty sure not supposed to concatenate
            stmt = conn.prepareStatement(queryWrites);

            stmt.setString(1, author);
            stmt.setInt(2, itemNo);

            stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("ERROR when adding to Author");
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static void deleteAlbum(Connection conn, String Name)
            throws SQLException {
        PreparedStatement stmt = null;
        try {
            String query = "DELETE FROM Album WHERE Name LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, Name);
            stmt.executeUpdate();
            System.out.println("Sucessfully deleted album record.");

        } catch (SQLException e) {
            printSQLException(e);
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static void deleteBook(Connection conn, String name)
            throws SQLException {
        PreparedStatement stmt = null;
        try {
            String query = "DELETE FROM Audiobook WHERE Title LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            stmt.executeUpdate();
            System.out.println("Sucessfully deleted book record.");

        } catch (SQLException e) {
            printSQLException(e);
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static void deleteMovie(Connection conn, String name)
            throws SQLException {
        PreparedStatement stmt = null;
        try {
            String query = "DELETE FROM Movie WHERE Title LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            stmt.executeUpdate();
            System.out.println("Sucessfully deleted movie record.");

        } catch (SQLException e) {
            printSQLException(e);
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static void searchAlbum(Connection conn, String name)
            throws SQLException {
        PreparedStatement stmt = null;
        ResultSet rSet = null;
        try {
            String query = "SELECT * FROM Album WHERE Name LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            rSet = stmt.executeQuery();
            while (rSet.next()) {
                String Title = rSet.getString("Name");
                int Length = rSet.getInt("Album_Length");
                int numSongs = rSet.getInt("Num_Songs");
                String ArtistName = rSet.getString("Artist_Name");
                System.out.println("Name: " + Title);
                System.out.println("Length: " + Length);
                System.out.println("Number of Songs: " + numSongs);
                System.out.println("Artist Name: " + ArtistName);
            }
            System.out.println("Sucessfully searched Album record.");

        } catch (SQLException e) {
            printSQLException(e);
        } finally {
            if (rSet != null) {
                rSet.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static void searchBook(Connection conn, String name)
            throws SQLException {
        PreparedStatement stmt = null;
        ResultSet rSet = null;
        try {
            String query = "SELECT * FROM Audiobook WHERE Title LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            rSet = stmt.executeQuery();
            while (rSet.next()) {
                String Title = rSet.getString("Title");
                int Length = rSet.getInt("Length");
                int Chapters = rSet.getInt("Chapters");
                System.out.println("Name: " + Title);
                System.out.println("Length: " + Length);
                System.out.println("Chapters: " + Chapters);
            }
            System.out.println("Sucessfully searched book record.");

        } catch (SQLException e) {
            printSQLException(e);
        } finally {
            if (rSet != null) {
                rSet.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static void searchMovie(Connection conn, String name)
            throws SQLException {
        PreparedStatement stmt = null;
        ResultSet rSet = null;
        try {
            String query = "SELECT * FROM Movie WHERE Title LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            rSet = stmt.executeQuery();
            while (rSet.next()) {
                String Title = rSet.getString("Title");
                int Length = rSet.getInt("Length");
                String DirectorName = rSet.getString("Director_Name");
                String ActorName = rSet.getString("Actor_Name");
                System.out.println("Name: " + Title);
                System.out.println("Length: " + Length);
                System.out.println("Director: " + DirectorName);
                System.out.println("Actor: " + ActorName);
            }
            System.out.println("Sucessfully searched Movie record.");

        } catch (SQLException e) {
            printSQLException(e);
        } finally {
            if (rSet != null) {
                rSet.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private static int maxItemNo(Connection conn) {
        PreparedStatement stmt = null;
        ResultSet item = null;
        int item_No = 0;
        try {
            String query = "SELECT Max(Item_No) FROM Media";
            stmt = conn.prepareStatement(query);
            item = stmt.executeQuery();
            item_No = item.getInt(1);
        } catch (SQLException e) {
            printSQLException(e);
        }
        System.out.println(item_No);
        return item_No;
    }

    //Checks if authorName is already and author in the database
    private static boolean checkAuthor(Connection conn, String authorName)
            throws SQLException {

        PreparedStatement stmt = null;
        boolean exists = false;
        try {
            String query = "SELECT Count(*) FROM Author WHERE Name = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, authorName);
            ResultSet set = stmt.executeQuery();
            int number = set.getInt(1);

            if (!(number == 0)) {
                exists = true;
            }

        } catch (SQLException e) {
            printSQLException(e);

        }
        return exists;
    }

    //Checks if directorName is already and author in the database
    private static boolean checkDirector(Connection conn, String directorName)
            throws SQLException {

        PreparedStatement stmt = null;
        boolean exists = false;
        try {
            String query = "SELECT Count(*) FROM Director WHERE Director_Name = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, directorName);
            ResultSet set = stmt.executeQuery();
            int number = set.getInt(1);

            if (!(number == 0)) {
                exists = true;
            }

        } catch (SQLException e) {
            printSQLException(e);

        }
        return exists;
    }

    //Checks if actorName is already and author in the database
    private static boolean checkActor(Connection conn, String actorName)
            throws SQLException {

        PreparedStatement stmt = null;
        boolean exists = false;
        try {
            String query = "SELECT Count(*) FROM Actor WHERE Actor_Name = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, actorName);
            ResultSet set = stmt.executeQuery();
            int number = set.getInt(1);

            if (!(number == 0)) {
                exists = true;
            }

        } catch (SQLException e) {
            printSQLException(e);

        }
        return exists;
    }

    //Checks if directorName is already and author in the database
    private static boolean checkArtist(Connection conn, String artistName)
            throws SQLException {

        PreparedStatement stmt = null;
        boolean exists = false;
        try {
            String query = "SELECT Count(*) FROM Artist WHERE Artist_Name = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, artistName);
            ResultSet set = stmt.executeQuery();
            int number = set.getInt(1);

            if (!(number == 0)) {
                exists = true;
            }

        } catch (SQLException e) {
            printSQLException(e);

        }
        return exists;
    }

    private static void orderMovie(Connection conn, String title) {
        // TODO Need to add functionality to this. Currently don't have a table
        //for it

    }

    private static void orderBook(Connection conn, String title,
            String Author_Name) {
        // TODO Need to add functionality to this. Currently don't have a table
        //for it

    }

    private static void orderAlbum(Connection conn, String name,
            String artist_Name) {
        // TODO Need to add functionality to this. Currently don't have a table
        //for it

    }

    //copied from JDBC oracle documentation
    public static void printSQLException(SQLException ex) {

        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                if (ignoreSQLException(
                        ((SQLException) e).getSQLState()) == false) {

                    e.printStackTrace(System.err);
                    System.err.println(
                            "SQLState: " + ((SQLException) e).getSQLState());

                    System.err.println(
                            "Error Code: " + ((SQLException) e).getErrorCode());

                    System.err.println("Message: " + e.getMessage());

                    Throwable t = ex.getCause();
                    while (t != null) {
                        System.out.println("Cause: " + t);
                        t = t.getCause();
                    }
                }
            }
        }
    }

    //copied from JDBC oracle documentation
    public static boolean ignoreSQLException(String sqlState) {
        if (sqlState == null) {
            System.out.println("The SQL state is not defined!");
            return false;
        }
        // X0Y32: Jar file already exists in schema
        if (sqlState.equalsIgnoreCase("X0Y32")) {
            return true;
        }
        // 42Y55: Table already exists in schema
        if (sqlState.equalsIgnoreCase("42Y55")) {
            return true;
        }
        return false;
    }

    /**
     * Main method.
     *
     * @param args
     *            the command line arguments; unused here
     * @throws SQLException
     */
    public static void main(String[] args) throws SQLException {
        Connection conn = initializeDB(DATABASE);
        Scanner in = new Scanner(System.in);
        String input = menu(in);
        int Max_Item_No = maxItemNo(conn);

        while (!input.equals("x")) {
            if (input.equals("a")) { //add new record
                addRecords(in, conn, Max_Item_No);
            } else if (input.equals("b")) { //delete record
                deleteRecords(in, conn);
            } else if (input.equals("c")) { //Search for record
                searchRecords(in, conn);
            } else if (input.equals("d")) { //order items
                orderRecords(in, conn);
            }
            System.out.println();
            input = menu(in);
        }

        if (conn != null) {
            conn.close();
        }
    }

}
