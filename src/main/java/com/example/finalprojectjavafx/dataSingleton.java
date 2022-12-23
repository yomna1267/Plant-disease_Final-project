package com.example.finalprojectjavafx;

public class dataSingleton {
    private static String data = null;
    public String getData(){
        return data;
    }
    public void setData(String data){
        this.data  = data;
    }
}
