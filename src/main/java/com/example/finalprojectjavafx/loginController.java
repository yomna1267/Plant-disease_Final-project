package com.example.finalprojectjavafx;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Hyperlink;
import javafx.scene.control.TextField;
import javax.swing.JOptionPane;
import java.sql.*;

public class loginController implements Initializable {
    @FXML
    private Button loginBtn;
    @FXML
    private TextField passwordText;
    @FXML
    private TextField usernameText;
    @FXML
    private Hyperlink signupLink;

    @FXML
    public void login(ActionEvent event) throws SQLException, IOException {

        String Username = usernameText.getText();
        String Password = passwordText.getText();
        boolean isValidInputs = Validation.Login(Username, Password);
        if (!isValidInputs) {
            JOptionPane.showMessageDialog(null, "Please Enter all required data");
            return;
        }

        try {
            Connection con = jdbcConnection.getConnection();
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM javafx.login where username = '" + Username + "';");
            String pass = null;

            if(!resultSet.next()){
                resultSet = statement.executeQuery("SELECT * FROM javafx.login where email = '" + Username + "';");
                if(!resultSet.next()){
                    JOptionPane.showMessageDialog(null,"The username or password is incorrect");
                    return;
                }
                else {
                    pass = resultSet.getString(3);
                }
            }
            else{
                pass = resultSet.getString(3);
            }


            if (Password.equals(pass)) {
                page p = new page();
                p.Page(event, "ChoosePlant.fxml");
            }
            else{
                JOptionPane.showMessageDialog(null,"The username or password is incorrect");
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public void Back(ActionEvent event) throws IOException {

        System.out.println("Register Link Clicked!");
        page p = new page();
        p.Page(event, "Define.fxml");

    }


    public void goToRegister(ActionEvent event) throws IOException {
        System.out.println("Register Link Clicked!");

        page p = new page();
        p.Page(event, "Register.fxml");

    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        /*TODO*/
    }
}