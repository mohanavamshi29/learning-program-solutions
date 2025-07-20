package com.example.demo.controller;

import com.example.demo.entity.Employee;
import com.example.demo.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/employees")
public class EmployeeController {

    @Autowired
    private EmployeeRepository repository;

    @GetMapping("/search")
    public List<Employee> searchByName(@RequestParam String keyword) {
        return repository.findByNameContaining(keyword);
    }

    @GetMapping("/sorted")
    public List<Employee> sortBySalaryDesc() {
        return repository.findAllByOrderBySalaryDesc();
    }

    @GetMapping("/department")
    public List<Employee> departmentStartsWith(@RequestParam String prefix) {
        return repository.findByDepartmentStartingWith(prefix);
    }

    @GetMapping("/joined")
    public List<Employee> joinedBetween(@RequestParam String from, @RequestParam String to) {
        return repository.findByJoinedDateBetween(LocalDate.parse(from), LocalDate.parse(to));
    }

    @GetMapping("/high-salary")
    public List<Employee> salaryGreaterThan(@RequestParam Double salary) {
        return repository.findBySalaryGreaterThan(salary);
    }

    @GetMapping("/low-salary")
    public List<Employee> salaryLessThan(@RequestParam Double salary) {
        return repository.findBySalaryLessThan(salary);
    }

    @GetMapping("/top3")
    public List<Employee> getTop3Paid() {
        return repository.findTop3ByOrderBySalaryDesc();
    }
}
