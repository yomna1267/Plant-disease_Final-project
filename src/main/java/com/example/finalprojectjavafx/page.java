package com.example.finalprojectjavafx;

import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

import java.io.IOException;

public class page {
    public void Page(ActionEvent event, String pageName) throws IOException{
        Parent myRoot = FXMLLoader.load(getClass().getResource(pageName));
        Stage stage = (Stage)((Node)event.getSource()).getScene().getWindow();
        Scene scene = new Scene(myRoot);
        stage.setScene(scene);
        stage.setTitle("Garden Guardian");
        stage.getIcons().add(new Image("C:\\Users\\mo\\IdeaProjects\\finalProject-JavaFX\\src\\main\\resources\\com\\example\\finalprojectjavafx\\plant.png"));
        stage.setResizable(false);
        stage.show();
    }
}
