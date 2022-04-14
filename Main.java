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

    /**
     * The database file name.
     *
     * Make sure the database file is in the root folder of the project if you
     * only provide the name and extension.
     */
    private static String DATABASE = "Library (1).db";

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
                "Which media type would you like to add? (A - Album, B - Book, M - Movie, P - Patron): ");
        String choice = in.nextLine();
        choice = choice.toLowerCase();
        int Item_No = Max_Item_No;

        if (choice.equals("a") || choice.equals("album")) {
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

            if (!checkArtist(Conn, Artist_Name)) {
                System.out.println("Is the artist still active? (Y/N)");
                String active = in.nextLine();
                boolean activeStatus = false;
                if (active.equals("Y")) {
                    activeStatus = true;
                }
                insertArtist(Conn, Artist_Name, activeStatus);
            }

            insertMedia(Conn, Item_No, year, genre, location, type, numCopies,
                    price);
            insertAlbum(Conn, Item_No, Name, Num_Songs, Artist_Name);
        } else if (choice.equals("b") || choice.equals("book")) {
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

            System.out.println("Enter the authors name: ");
            String name = in.nextLine();
            if (!checkAuthor(Conn, name)) {
                insertAuthor(Conn, name, genre);
            }

            insertMedia(Conn, Item_No, year, genre, location, type, numCopies,
                    price);
            insertBook(Conn, Item_No, Title, Length, Chapters);
            insertWrites(Conn, name, Item_No);
        } else if (choice.equals("m") || choice.equals("movie")) {
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

            if (!checkDirector(Conn, dName)) {
                insertDirector(Conn, dName, genre);
            }

            if (!checkActor(Conn, aName)) {
                System.out.println("Lead Actor's Birthdate (1/1/1990)");
                String bdate = in.nextLine();
                insertActor(Conn, aName, bdate);
            }

            insertMedia(Conn, Item_No, year, genre, location, type, numCopies,
                    price);
            insertMovie(Conn, Item_No, Title, Length, dName, aName);

        } else if (choice.equals("p") || choice.equals("patron")) {
            System.out.println("Enter their new Library Card Number: ");
            String lib_card_No = in.nextLine();
            System.out.println("Enter their email : ");
            String email = in.nextLine();
            System.out.println("Enter their address: ");
            String address = in.nextLine();
            System.out.println("Enter their first name: ");
            String fName = in.nextLine();
            System.out.println("Enter their last name ");
            String lName = in.nextLine();

            insertPatron(Conn, lib_card_No, email, address, fName, lName);
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
                "What would you like to search for? (A - Album, B - Book, M - Movie, AC - Actor, AU - Author, AR - Artist, D - Director, P - Patron): ");
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
        } else if (choice.equals("ac") || choice.equals("actor")) {
            System.out.println("Enter their name: ");
            String name = in.nextLine();
            searchActor(Conn, name);
        } else if (choice.equals("au") || choice.equals("author")) {
            System.out.println("Enter their name: ");
            String name = in.nextLine();
            searchAuthor(Conn, name);
        } else if (choice.equals("ar") || choice.equals("artist")) {
            System.out.println("Enter their name: ");
            String name = in.nextLine();
            searchArtist(Conn, name);
        } else if (choice.equals("d") || choice.equals("director")) {
            System.out.println("Enter their name: ");
            String name = in.nextLine();
            searchDirector(Conn, name);
        } else if (choice.equals("d") || choice.equals("director")) {
            System.out.println("Enter the library card number: ");
            String lib_card_No = in.nextLine();
            searchPatron(Conn, lib_card_No);
        } else {
            System.out.println("Invalid entry - Try again!");
        }

    }

    private static void orderRecords(Scanner in, Connection Conn,
            int Max_Item_No) throws SQLException {

        System.out.println(
                "Which media type would you like to order? (A - Album, B - Book, M - Movie): ");
        String choice = in.nextLine();
        choice = choice.toLowerCase();
        int Item_No = Max_Item_No;
        System.out.println();

        if (choice.equals("a") || choice.equals("album")) {

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
            System.out.println("Enter the price: ");
            int price = Integer.parseInt(in.nextLine());

            if (!checkArtist(Conn, Artist_Name)) {
                System.out.println("Is the artist still active? (Y/N)");
                String active = in.nextLine();
                boolean activeStatus = false;
                if (active.equals("Y")) {
                    activeStatus = true;
                }
                insertArtist(Conn, Artist_Name, activeStatus);
            }

            insertAlbum(Conn, Item_No, Name, Num_Songs, Artist_Name);
            orderMedia(Conn, Item_No, year, genre, price);
        } else if (choice.equals("b") || choice.equals("book")) {
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
            System.out.println("Enter the price: ");
            int price = Integer.parseInt(in.nextLine());

            System.out.println("Enter the authors name: ");
            String name = in.nextLine();
            if (!checkAuthor(Conn, name)) {
                insertAuthor(Conn, name, genre);
            }

            orderMedia(Conn, Item_No, year, genre, price);
            insertBook(Conn, Item_No, Title, Length, Chapters);
            insertWrites(Conn, name, Item_No);
        } else if (choice.equals("m") || choice.equals("movie")) {

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
            System.out.println("Enter the price: ");
            int price = Integer.parseInt(in.nextLine());

            if (!checkDirector(Conn, dName)) {
                insertDirector(Conn, dName, genre);
            }

            if (!checkActor(Conn, aName)) {
                System.out.println("Lead Actor's Birthdate (1/1/1990)");
                String bdate = in.nextLine();
                insertActor(Conn, aName, bdate);
            }

            orderMedia(Conn, Item_No, year, genre, price);
            insertMovie(Conn, Item_No, Title, Length, dName, aName);

        } else {
            System.out.println("Invalid entry - Try again!");
        }

    }

    private static void checkOut(Scanner in, Connection Conn)
            throws SQLException {
        System.out.println(
                "Enter the item number of the item you would like to check out: ");
        int Item_No = Integer.parseInt(in.nextLine());
        System.out.println("Enter your library card number: ");
        String lib_card_No = in.nextLine();

        int available = findAvailable(Conn, Item_No);
        if (available > 0) {
            insertCheckOut(Conn, lib_card_No, Item_No);
            incrementCheckedOut(Conn, Item_No);
        } else {
            System.out.println("This item is not available.");
        }
    }

    private static void checkIn(Scanner in, Connection Conn)
            throws SQLException {
        System.out.println("Enter your library card number: ");
        String lib_card_No = in.nextLine();
        System.out.println(
                "Enter the item number of the item you would like to check in: ");
        int Item_No = Integer.parseInt(in.nextLine());

        deleteCheckOut(Conn, lib_card_No, Item_No);
        decrementCheckedOut(Conn, Item_No);

    }

    private static void insertCheckOut(Connection Conn, String lib_card_No,
            int Item_No) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryChecksOut = " INSERT into Checks_Out (lib_card_No, Item_No, Checkout_Date)"
                    + " values (?, ?, ?)";
            stmt = Conn.prepareStatement(queryChecksOut);

            stmt.setString(1, lib_card_No);
            stmt.setInt(2, Item_No);
            stmt.execute();
            System.out.println("Successful Entry");

        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static void deleteCheckOut(Connection Conn, String lib_card_No,
            int Item_No) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryChecksOut = " DELETE from Checks_Out WHERE lib_card_No = ? AND Item_No = ?";
            stmt = Conn.prepareStatement(queryChecksOut);

            stmt.setString(1, lib_card_No);
            stmt.setInt(2, Item_No);
            stmt.execute();
            System.out.println("Successful Deletion");

        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static void incrementCheckedOut(Connection Conn, int Item_No)
            throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryChecksOut = " UPDATE Media SET Num_times_checked_out = Num_times_checked_out + 1 WHERE Item_No = ?";
            stmt = Conn.prepareStatement(queryChecksOut);

            stmt.setInt(1, Item_No);
            stmt.execute();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static void decrementCheckedOut(Connection Conn, int Item_No)
            throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryChecksOut = " UPDATE Media SET Num_times_checked_out = Num_times_checked_out - 1 WHERE Item_No = ?";
            stmt = Conn.prepareStatement(queryChecksOut);

            stmt.setInt(1, Item_No);
            stmt.execute();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static int findAvailable(Connection Conn, int Item_No)
            throws SQLException {
        PreparedStatement stmt = null;
        int numAvailable = 0;
        try {
            String query = "SELECT Num_Copies, Num_times_checked_out FROM Media WHERE Item_No = ?";
            stmt = Conn.prepareStatement(query);
            stmt.setInt(1, Item_No);
            ResultSet set = stmt.executeQuery();
            numAvailable = set.getInt(1) - set.getInt(2);
            System.out.println("Sucessfully searched album records.");

        } catch (SQLException e) {
            printSQLException(e);
        }
        return numAvailable;
    }

    private static String menu(Scanner in) {
        System.out.println(
                "(a) Add new records (movies, audiobooks, albums, ..)");
        System.out.println(
                "(b) Edit/Delete records (movies, audiobooks, albums, ..)");
        System.out.println("(c) Search (movies, audiobooks, albums, ..)");
        System.out.println("(d) Order items (movies, audiobooks, albums, ..)");
        System.out
                .println("(e) Check out items (movies, audiobooks, albums,..)");
        System.out
                .println("(f) Check in items (movies, audiobooks, albums,..)");
        System.out.println(
                "(g) Add ordered items to the records (movies, audiobooks, albums,..)");
        System.out.println("(h) Generate reports");
        System.out.println("(x) to Exit Program");
        String input = in.nextLine();
        input = input.toLowerCase();
        return input;
    }

    private static void generateReports(Scanner in, Connection conn)
            throws SQLException {
        System.out.println();
        System.out.println(
                "(a) Find the total number of albums, movies and audiobooks checked out by a single patron ");
        System.out.println("(b) Find the most popular actor in the database ");
        System.out.println(
                "(c) Find the most listened to artist in the database ");
        System.out.println(
                "(d) Find the most listened to author in the database ");
        System.out.println(
                "(e) Find the patron who has checked out the most videos and the total number of videos they have checked out ");
        System.out.println(
                "(f) Find the titles of all tracks by ARTIST released before YEAR. ");
        String input = in.nextLine();
        input = input.toLowerCase();

        if (input.equals("a")) {
            System.out.println("Enter the library card number: ");
            String lib_card_No = in.nextLine();
            report1(conn, lib_card_No);
        } else if (input.equals("b")) {
            report2(conn);
        } else if (input.equals("c")) {
            report3(conn);
        } else if (input.equals("d")) {
            report4(conn);
        } else if (input.equals("e")) {
            report5(conn);
        } else if (input.equals("f")) {
            System.out.println("Enter the name of the artist: ");
            String artist_Name = in.nextLine();
            System.out.println("Enter the year");
            int year = Integer.parseInt(in.nextLine());
            report6(conn, artist_Name, year);
        }

    }

    private static void report1(Connection conn, String lib_card_No)
            throws SQLException {
        PreparedStatement stmt1 = null;
        PreparedStatement stmt2 = null;
        PreparedStatement stmt3 = null;
        try {
            String query1 = "SELECT count(Checks_Out.Item_No) FROM Customer, Album, Checks_Out "
                    + "WHERE Album.Item_No = Checks_Out.Item_No AND Customer.lib_card_No = ? AND Customer.lib_card_No = Checks_out.lib_card_No";
            stmt1 = conn.prepareStatement(query1);
            stmt1.setString(1, lib_card_No);
            ResultSet rSet1 = stmt1.executeQuery();

            String query2 = "SELECT count(Checks_Out.Item_No) FROM Customer, Audiobook, Checks_Out "
                    + "WHERE Audiobook.Item_No = Checks_Out.Item_No AND Customer.lib_card_No = ? AND Customer.lib_card_No = Checks_out.lib_card_No";
            stmt2 = conn.prepareStatement(query2);
            stmt2.setString(1, lib_card_No);
            ResultSet rSet2 = stmt2.executeQuery();

            String query3 = "SELECT count(Checks_Out.Item_No) FROM Customer, Movie, Checks_Out "
                    + "WHERE Movie.Item_No = Checks_Out.Item_No AND Customer.lib_card_No = ? AND Customer.lib_card_No = Checks_out.lib_card_No";
            stmt3 = conn.prepareStatement(query3);
            stmt3.setString(1, lib_card_No);
            ResultSet rSet3 = stmt3.executeQuery();

            int total = rSet1.getInt(1) + rSet2.getInt(1) + rSet3.getInt(1);
            System.out.println(
                    "The total number of movies, audiobooks, and albums checked out is "
                            + total);

        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static void report2(Connection conn) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String query = "SELECT Actor_Name FROM Movie, Media WHERE Movie.Item_No = Media.Item_No GROUP BY Actor_Name ORDER BY Media.Num_times_checked_out DESC LIMIT 1;";
            stmt = conn.prepareStatement(query);
            ResultSet set = stmt.executeQuery();

            System.out
                    .println("The most popular actor is: " + set.getString(1));
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static void report3(Connection conn) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String query = "SELECT Artist_Name, SUM(Album_Length)* Media.Num_times_checked_out AS \"Total_Listening_Time_sec\" "
                    + "FROM Album, Media WHERE Album.Item_No = Media.Item_No GROUP BY Artist_Name Order By Total_Listening_Time_sec "
                    + "DESC LIMIT 1;";
            stmt = conn.prepareStatement(query);
            ResultSet set = stmt.executeQuery();

            System.out
                    .println("The most popular artist is: " + set.getString(1));
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static void report4(Connection conn) {
        PreparedStatement stmt = null;
        try {
            String query = "SELECT Author.Name, SUM(Length)* Media.Num_times_checked_out AS \"Total_Listening_Time_sec\" "
                    + "FROM Author, Audiobook, Writes, Media WHERE Audiobook.Item_No = Media.Item_No "
                    + "AND Author.Name = Writes.Name AND Writes.Item_No = Audiobook.Item_No "
                    + "GROUP BY Author.Name ORDER BY Total_Listening_Time_sec "
                    + "DESC LIMIT 1;";
            stmt = conn.prepareStatement(query);
            ResultSet set = stmt.executeQuery();

            System.out
                    .println("The most popular author is: " + set.getString(1));
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static void report5(Connection conn) {

        PreparedStatement stmt = null;
        try {
            String query = "SELECT lib_card_No, MAX(No_Movies_Checked_Out) FROM No_Movies_Checked; ";
            stmt = conn.prepareStatement(query);
            ResultSet set = stmt.executeQuery();

            System.out.println(
                    "The patron who has checked out the most videos is: "
                            + set.getString(1));
            System.out.println(
                    "They have checked out " + set.getInt(2) + " movies.");
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static void report6(Connection conn, String artist_Name, int year) {
        PreparedStatement stmt = null;
        try {
            String query = "SELECT Title FROM Album, Track, Media WHERE Media.Item_No = Album.Item_No "
                    + "AND Track.Album_Name = Album.Name AND Media.Year < ? AND Album.Artist_Name = ?;";
            stmt = conn.prepareStatement(query);
            stmt.setInt(1, year);
            stmt.setString(2, artist_Name);
            ResultSet set = stmt.executeQuery();

            System.out.println(set.getString(1));
            while (set.next()) {
                System.out.println(set.getString(1));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private static void insertPatron(Connection conn, String lib_card_No,
            String F_Name, String L_Name, String Email, String Address)
            throws SQLException {
        PreparedStatement stmt = null;
        try {

            String queryCust = " INSERT into Customer (lib_card_No, Email, Address, F_Name, L_Name)"
                    + " values (?, ?, ?, ?)";

            stmt = conn.prepareStatement(queryCust);

            stmt.setString(1, lib_card_No);
            stmt.setString(2, Email);
            stmt.setString(3, Address);
            stmt.setString(4, F_Name);
            stmt.setString(5, L_Name);

            stmt.execute();
            System.out.println("Successful Entry");
        } catch (SQLException e) {
            printSQLException(e);
            System.out.println("ERROR when adding to Customer");
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }

    }

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
            int price) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryMedia = " INSERT into Media(Item_No, Year, Genre, Location, Type, Num_Copies, Price, Num_times_checked_out)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(queryMedia);

            stmt.setInt(1, item_No);
            stmt.setInt(2, year);
            stmt.setString(3, genre);
            stmt.setString(4, location);
            stmt.setString(5, type);
            stmt.setInt(6, numCopies);
            stmt.setInt(7, price);
            stmt.setInt(8, 0);

            stmt.execute();
        } catch (SQLException e) {
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
            e.printStackTrace();
            System.out.println("ERROR when adding to Artist");
        }
    }

    private static void insertWrites(Connection conn, String author, int itemNo)
            throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryWrites = " INSERT into Writes(Name, Item_No)"
                    + " values (?, ?)";
            stmt = conn.prepareStatement(queryWrites);

            stmt.setString(1, author);
            stmt.setInt(2, itemNo);

            stmt.execute();
        } catch (SQLException e) {
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
                int Item_No = rSet.getInt("Item_No");
                String Title = rSet.getString("Name");
                int Length = rSet.getInt("Album_Length");
                int numSongs = rSet.getInt("Num_Songs");
                String ArtistName = rSet.getString("Artist_Name");
                System.out.println("Item Number: " + Item_No);
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
                int Item_No = rSet.getInt("Item_No");
                String Title = rSet.getString("Title");
                int Length = rSet.getInt("Length");
                int Chapters = rSet.getInt("Chapters");
                System.out.println("Item Number: " + Item_No);
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
                int Item_No = rSet.getInt("Item_No");
                String Title = rSet.getString("Title");
                int Length = rSet.getInt("Length");
                String DirectorName = rSet.getString("Director_Name");
                String ActorName = rSet.getString("Actor_Name");
                System.out.println("Item Number: " + Item_No);
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

    private static void searchAuthor(Connection conn, String name)
            throws SQLException {
        PreparedStatement stmt = null;
        ResultSet rSet = null;
        try {
            String query = "SELECT * FROM Author, Writes, Audiobook WHERE Author.Name = Writes.Name"
                    + "AND Audiobook.Item_No = Writes.Item_No AND Author.Name LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            rSet = stmt.executeQuery();
            while (rSet.next()) {
                int Item_No = rSet.getInt("Item_No");
                String Title = rSet.getString("Title");
                int Length = rSet.getInt("Length");
                int Chapters = rSet.getInt("Chapters");
                System.out.println("Item Number: " + Item_No);
                System.out.println("Name: " + Title);
                System.out.println("Length: " + Length);
                System.out.println("Chapters: " + Chapters);
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

    private static void searchActor(Connection conn, String name)
            throws SQLException {
        PreparedStatement stmt = null;
        ResultSet rSet = null;
        try {
            String query = "SELECT * FROM Movie WHERE Actor_Name LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            rSet = stmt.executeQuery();
            while (rSet.next()) {
                int Item_No = rSet.getInt("Item_No");
                String Title = rSet.getString("Title");
                int Length = rSet.getInt("Length");
                String DirectorName = rSet.getString("Director_Name");
                String ActorName = rSet.getString("Actor_Name");
                System.out.println("Item Number: " + Item_No);
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

    private static void searchDirector(Connection conn, String name)
            throws SQLException {
        PreparedStatement stmt = null;
        ResultSet rSet = null;
        try {
            String query = "SELECT * FROM Movie WHERE Director_Name LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            rSet = stmt.executeQuery();
            while (rSet.next()) {
                int Item_No = rSet.getInt("Item_No");
                String Title = rSet.getString("Title");
                int Length = rSet.getInt("Length");
                String DirectorName = rSet.getString("Director_Name");
                String ActorName = rSet.getString("Actor_Name");
                System.out.println("Item Number: " + Item_No);
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

    private static void searchArtist(Connection conn, String name)
            throws SQLException {
        PreparedStatement stmt = null;
        ResultSet rSet = null;
        try {
            String query = "SELECT * FROM Album WHERE Artist_Name LIKE ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            rSet = stmt.executeQuery();
            while (rSet.next()) {
                int Item_No = rSet.getInt("Item_No");
                String Title = rSet.getString("Name");
                int Length = rSet.getInt("Album_Length");
                int numSongs = rSet.getInt("Num_Songs");
                String ArtistName = rSet.getString("Artist_Name");
                System.out.println("Item Number: " + Item_No);
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

    private static void searchPatron(Connection conn, String lib_card_No)
            throws SQLException {
        PreparedStatement stmt = null;
        ResultSet rSet = null;
        try {
            String query = "SELECT * FROM Customer WHERE lib_card_No = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, lib_card_No);
            rSet = stmt.executeQuery();
            while (rSet.next()) {
                String Email = rSet.getString("Email");
                String F_Name = rSet.getString("F_Name");
                String L_Name = rSet.getString("L_Name");
                String Address = rSet.getString("Address");
                System.out.println("Library Card Number: " + lib_card_No);
                System.out.println("Name: " + F_Name + " " + L_Name);
                System.out.println("Email: " + Email);
                System.out.println("Address: " + Address);
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

    //Checks if artistName is already and author in the database
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

    private static void orderMedia(Connection conn, int item_No, int year,
            String genre, int price) throws SQLException {
        PreparedStatement stmt = null;
        try {
            String queryMedia = " INSERT into Media(Item_No, Year, Genre, Location, Type, Num_Copies, Price, Num_times_checked_out)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(queryMedia);

            stmt.setInt(1, item_No);
            stmt.setInt(2, year);
            stmt.setString(3, genre);
            stmt.setString(4, "Unavailable");
            stmt.setString(5, "Unavailable");
            stmt.setInt(6, 0);
            stmt.setInt(7, price);
            stmt.setInt(8, 0);

            stmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("ERROR when adding to Media");
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
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

    private static void updateOrder(Scanner in, Connection conn) {
        System.out.println(
                "Enter the item number of the order you wish to add to the collection: ");
        int Item_No = Integer.parseInt(in.nextLine());
        System.out.println("Enter the number of copies: ");
        int copies = Integer.parseInt(in.nextLine());
        System.out.println("Enter the new location: ");
        String location = in.nextLine();
        System.out.println("Enter the type: ");
        String type = in.nextLine();

        updateOrderMedia(conn, Item_No, copies, location, type);
    }

    private static void updateOrderMedia(Connection conn, int Item_No,
            int copies, String location, String type) {
        PreparedStatement stmt = null;
        try {
            String queryChecksOut = " UPDATE Media SET Location = ?, Type = ?, Num_Copies = ? WHERE Item_No = ?";
            stmt = conn.prepareStatement(queryChecksOut);

            stmt.setString(1, location);
            stmt.setString(2, type);
            stmt.setInt(3, Item_No);
            stmt.execute();
        } catch (SQLException e) {
            printSQLException(e);
        }
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
                Max_Item_No++;
                addRecords(in, conn, Max_Item_No);
            } else if (input.equals("b")) { //delete record
                deleteRecords(in, conn);
            } else if (input.equals("c")) { //Search for record
                searchRecords(in, conn);
            } else if (input.equals("d")) { //order items
                Max_Item_No++;
                orderRecords(in, conn, Max_Item_No);
            } else if (input.equals("e")) {
                checkOut(in, conn);
            } else if (input.equals("f")) {
                checkIn(in, conn);
            } else if (input.equals("g")) {
                updateOrder(in, conn);
            } else if (input.equals("h")) {
                generateReports(in, conn);
            }
            System.out.println();
            input = menu(in);
        }

        if (conn != null) {
            conn.close();
        }
    }
}
