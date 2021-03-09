package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;

public class Student
{
    private int id;
    @NotNull
    private String surname;
    @NotNull
    private String name;
    @NotNull
    private String second_name;
    private int study_group_id;

    @JsonCreator
    public Student(
            @JsonProperty("id") int id,
            @JsonProperty("surname") String surname,
            @JsonProperty("name") String name,
            @JsonProperty("second_name") String second_name,
            @JsonProperty("study_group_id") int study_group_id
            )
    {
        this.id = id;
        this.surname = surname;
        this.name = name;
        this.second_name = second_name;
        this.study_group_id = study_group_id;
    }


    public Student(int id, String surname, String name, String second_name) {
        this.id = id;
        this.surname = surname;
        this.name = name;
        this.second_name = second_name;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }
    //
    public String getSurname()
    {
        return surname;
    }

    public void setSurname(String surname)
    {
        this.surname = surname;
    }
    //
    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }
    //
    public String getSecond_name()
    {
        return second_name;
    }

    public void setSecond_name(String second_name)
    {
        this.second_name = second_name;
    }
    //
    public int getStudy_group_id()
    {
        return study_group_id;
    }

    public void setStudy_group_id(int study_group_id)
    {
        this.study_group_id = study_group_id;
    }

    public String getSecondName() {
        return second_name;
    }
    public void setSecond_nameName(String second_name) {
        this.second_name = second_name;
    }

}
