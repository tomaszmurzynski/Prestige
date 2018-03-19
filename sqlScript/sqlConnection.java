package pl.eco;

import java.sql.*;



public class ConnectionWithSql {

    /**
     * Tutaj należy zdefiniować użytkownika, hasło, adres oraz
     * sterownik do bazy danych z którą zamierzamy się połączyć.
     */
    private final static String DBURL = "jdbc:mysql://127.0.0.1:3306/blog";
    private final static String DBUSER = "root";
    private final static String DBPASS = "****";
    private final static String DBDRIVER = "com.mysql.jdbc.Driver";

    //obiekt tworzący połączenie z bazą danych.
    private Connection connection;
    //obiekt pozwalający tworzyć nowe wyrażenia SQL
    private Statement statement;
    //zapytanie SQL
    private String query;




    public  static void main(String [] args){
        try{
            // 1. Get a connection to database

            // 2. Create a statement

            // 3. Execute SQL query

            // 4. Process the result set

        }
        catch (Exception exc){

        }
    }
}
