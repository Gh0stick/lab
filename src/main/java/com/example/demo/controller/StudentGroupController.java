package com.example.demo.controller;

import com.example.demo.dao.StudentGroupJdbc;
import com.example.demo.model.Student;
import com.example.demo.model.StudentGroup;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class StudentGroupController {

    private final StudentGroupJdbc studentGroupJdbc;

    public StudentGroupController(StudentGroupJdbc studentGroupJdbc) {
        this.studentGroupJdbc = studentGroupJdbc;
    }

    @GetMapping("/group/all")
    public List<StudentGroup> getAllGroup(){
        return studentGroupJdbc.getAll();
    }

    @GetMapping("/group/{id}")
    public StudentGroup getGroup(@PathVariable int id){
        return studentGroupJdbc.get(id);
    }

    @PostMapping("/group")
    int newStudent(@RequestBody StudentGroup newGroup) {
        try{
            return studentGroupJdbc.CreateStudentGroup(newGroup);
        }
        catch (Exception e){
            return -1;
        }
    }

    @PutMapping("/group")
    int updStudent(@RequestBody StudentGroup newGroup) {
        try{
            return studentGroupJdbc.UpdateStudentGroup(newGroup);
        }
        catch (Exception e){
            return -1;
        }
    }

    @DeleteMapping("/group/{id}")
    public int deleteStudent(@PathVariable int id){
        studentGroupJdbc.delete(id);
        return 1;
    }
}
