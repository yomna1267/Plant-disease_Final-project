package com.example.finalprojectjavafx;

public class Validation {
    public static boolean Register(String username, String email, String password) {
        if (username.equals("")) return false;
        if (email.equals("")) return false;
        return !password.equals("");
    }

    public static boolean Login(String username,String password) {
        if (username.equals("")) return false;
        return !password.equals("");
    }

}
