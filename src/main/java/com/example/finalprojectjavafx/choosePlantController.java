package com.example.finalprojectjavafx;

import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class choosePlantController implements Initializable {

    public void Back(ActionEvent event) throws IOException {

        page p = new page();
        p.Page(event, "Login.fxml");

    }

    public void Cotton(ActionEvent event) throws IOException {

        dataSingleton dataSingleton = new dataSingleton();
        dataSingleton.setData("cotton");
        page p = new page();
        p.Page(event, "QuestionsPage.fxml");

    }

    public void Potato(ActionEvent event) throws IOException {

        dataSingleton dataSingleton = new dataSingleton();
        dataSingleton.setData("potato");
        page p = new page();
        p.Page(event, "QuestionsPage.fxml");
    }

    public void Corn(ActionEvent event) throws IOException {

        dataSingleton dataSingleton = new dataSingleton();
        dataSingleton.setData("corn");
        page p = new page();
        p.Page(event, "QuestionsPage.fxml");
    }

    public void Tomato(ActionEvent event) throws IOException {

        dataSingleton dataSingleton = new dataSingleton();
        dataSingleton.setData("tomato");
        page p = new page();
        p.Page(event, "QuestionsPage.fxml");
    }


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
