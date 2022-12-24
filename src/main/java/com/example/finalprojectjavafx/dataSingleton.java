package com.example.finalprojectjavafx;

public class dataSingleton {
    private static String data = null;
    private static dataSingleton dataSingleton = null;
    private dataSingleton(){}
    public static dataSingleton getInstance()
    {
        if (dataSingleton==null)
            dataSingleton = new dataSingleton();
        return dataSingleton;
    }
    public String getData(){
        return data;
    }
    public void setData(String data){
        this.data  = data;
    }
}
