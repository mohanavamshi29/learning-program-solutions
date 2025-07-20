package com.example.demo.repository;

import com.example.demo.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    List<Employee> findByNameContaining(String keyword);
    List<Employee> findAllByOrderBySalaryDesc();
    List<Employee> findByDepartmentStartingWith(String prefix);
    List<Employee> findByJoinedDateBetween(LocalDate from, LocalDate to);
    List<Employee> findBySalaryGreaterThan(Double salary);
    List<Employee> findBySalaryLessThan(Double salary);
    List<Employee> findTop3ByOrderBySalaryDesc();
}
