package entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

import java.time.LocalDate;

@Entity
public class SuccessReport {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "report_id", nullable = false)
    private Integer id;

    @Size(max = 50)
    @NotNull
    @Column(name = "student_name", nullable = false, length = 50)
    private String studentName;

    @Size(max = 50)
    @NotNull
    @Column(name = "student_patronymic", nullable = false, length = 50)
    private String studentPatronymic;

    @NotNull
    @Column(name = "report_date", nullable = false)
    private LocalDate reportDate = LocalDate.now();

    @NotNull
    @Column(name = "grade", nullable = false)
    private Float grade;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentPatronymic() {
        return studentPatronymic;
    }

    public void setStudentPatronymic(String studentPatronymic) {
        this.studentPatronymic = studentPatronymic;
    }

    public LocalDate getReportDate() {
        return reportDate;
    }

    public void setReportDate(LocalDate reportDate) {
        this.reportDate = reportDate;
    }

    public Float getGrade() {
        return grade;
    }

    public void setGrade(Float grade) {
        this.grade = grade;
    }

}