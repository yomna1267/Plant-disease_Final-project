package com.example.finalprojectjavafx;

import java.util.regex.Pattern;

public class Validation {
    public static boolean Register(String username, String email, String password) {
        if (username.equals("")) return false;
        if (email.equals("")) return false;
        return !password.equals("");
    }
    public static boolean emailValidation(String emailAddress) {
        return Pattern.compile("^(.+)@(\\S+)$").matcher(emailAddress).matches();
    }
    public static boolean Login(String username,String password) {
        if (username.equals("")) return false;
        return !password.equals("");
    }

}
