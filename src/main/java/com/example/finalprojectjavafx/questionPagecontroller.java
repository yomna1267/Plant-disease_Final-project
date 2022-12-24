package com.example.finalprojectjavafx;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.RadioButton;
import javafx.scene.control.ToggleGroup;
import javax.swing.*;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.TreeMap;

public class questionPagecontroller implements Initializable {
    @FXML
    private Label q1;

    @FXML
    private Label q2;

    @FXML
    private Label q3;

    @FXML
    private RadioButton r1;

    @FXML
    private RadioButton r2;

    @FXML
    private RadioButton r3;

    @FXML
    private RadioButton r4;

    @FXML
    private RadioButton r5;

    @FXML
    private RadioButton r6;

    @FXML
    ToggleGroup q1G;

    @FXML
    ToggleGroup q2G;

    @FXML
    ToggleGroup q3G;


    public void Submit(ActionEvent event) throws IOException, SQLException {

        System.out.println("Submit button clicked");
        String ans1 = null;
        String ans2 = null;
        String ans3 = null;

        RadioButton selected1 = (RadioButton) q1G.getSelectedToggle();
        RadioButton selected2 = (RadioButton) q2G.getSelectedToggle();
        RadioButton selected3 = (RadioButton) q3G.getSelectedToggle();
       if(selected1 == null || selected2 == null || selected3 == null){
           JOptionPane.showMessageDialog(null, "Please answer all the questions");
        }
       else{
            ans1 = selected1.getText();
            ans2 = selected2.getText();
            ans3 = selected3.getText();
            Connection con = jdbcConnection.getConnection();
            Statement statement = con.createStatement();
            ResultSet resultSet1 = statement.executeQuery("SELECT * FROM javafx.disease where symptom1 = '" + ans1 + "' ;");
            resultSet1.next();
            ans1 = resultSet1.getString(5);
            ResultSet resultSet2 = statement.executeQuery("SELECT * FROM javafx.disease where symptom2 = '" + ans2 + "' ;");
            resultSet2.next();
            ans2 = resultSet2.getString(5);
            ResultSet resultSet3 = statement.executeQuery("SELECT * FROM javafx.disease where symptom3 = '" + ans3 + "' ;");
            resultSet3.next();
            ans3 = resultSet3.getString(5);
            Map<String, Integer> map = new TreeMap<>();
            map.put(ans1, 1);
            if(map.containsKey(ans2)){
                map.put(ans2, map.get(ans2)+1);
            }
            else{
                map.put(ans2, 1);
            }
            if(map.containsKey(ans3)){
                map.put(ans3, map.get(ans3)+1);
            }
            else{
                map.put(ans3, 1);
            }
            String disease = null;
            for(Map.Entry<String, Integer> mp : map.entrySet()){
                if(mp.getValue() > 1){
                    disease = mp.getKey();
                }
            }
            dataSingleton obj = dataSingleton.getInstance();
            obj.setData(disease);
            System.out.println(obj.getData());
            page p = new page();
            p.Page(event, "lastpage.fxml");

        }

    }

    public void Back(ActionEvent event) throws IOException {

        page p = new page();
        p.Page(event, "ChoosePlant.fxml");

    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

        dataSingleton obj = dataSingleton.getInstance();
        String plantName = obj.getData();
        System.out.println(plantName);
        Connection con = jdbcConnection.getConnection();
        try {

            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM javafx.plant where name = '" + plantName + "';");
            String Q1 = null;
            String Q2 = null;
            String Q3 = null;
            while (resultSet.next()) {
                Q1 = resultSet.getString(3);
                Q2 = resultSet.getString(4);
                Q3 = resultSet.getString(5);
            }
            q1.setText(Q1);
            q2.setText(Q2);
            q3.setText(Q3);
            resultSet = statement.executeQuery("SELECT * FROM javafx.question1 where q1 = '" + Q1 + "';");
            String ans1 = null;
            String ans2 = null;
            while (resultSet.next()) {
                ans1 = resultSet.getString(3);
                ans2 = resultSet.getString(4);

            }
            r1.setText(ans1);
            r2.setText(ans2);

            resultSet = statement.executeQuery("SELECT * FROM javafx.question2 where q2 = '" + Q2 + "';");
            while (resultSet.next()) {
                ans1 = resultSet.getString(3);
                ans2 = resultSet.getString(4);

            }
            r3.setText(ans1);
            r4.setText(ans2);

            resultSet = statement.executeQuery("SELECT * FROM javafx.question3 where q3 = '" + Q3 + "';");
            while (resultSet.next()) {
                ans1 = resultSet.getString(3);
                ans2 = resultSet.getString(4);

            }
            r5.setText(ans1);
            r6.setText(ans2);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
