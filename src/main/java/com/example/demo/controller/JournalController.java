package com.example.demo.controller;

import com.example.demo.dao.JournalJdbc;
import com.example.demo.model.Journal;
import com.example.demo.model.Student;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class JournalController {

    private final JournalJdbc journalJdbc;

    public JournalController(JournalJdbc journalJdbc) {
        this.journalJdbc = journalJdbc;
    }

    @GetMapping("/journal/{id}")
    public Journal getJournal(@PathVariable int id){
        return journalJdbc.get(id);
    }

    @GetMapping("/journal/student/{id}")
    public Journal getJournalStudent(@PathVariable int id){
        return journalJdbc.getByStudent(id);
    }

    @GetMapping("/journal/group/{id}")
    public List<Journal> getJournalGroup(@PathVariable int id){
        return journalJdbc.getBy(id);
    }

    @PutMapping("/journal")
    int updJournal(@RequestBody Journal newJournal) {
        try{
            return journalJdbc.UpdateStudent(newJournal);
        }
        catch (Exception e){
            return -1;
        }
    }

}
