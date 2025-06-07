package kr.ac.hansung.cse.controller;

import jakarta.validation.Valid;
import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.model.SemesterCreditSummary;
import kr.ac.hansung.cse.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    @GetMapping("/credits")
    public String showCreditsSummary(Model model) {
        List<SemesterCreditSummary> summaries = courseService.getCreditSummaries();
        int total = courseService.getTotalFinishedCredits();

        model.addAttribute("creditSummaries", summaries);
        model.addAttribute("totalCredits", total);
        return "creditsSummary";
    }

    @GetMapping("/credits/details")
    public String showCreditsDetail(@RequestParam("year") int year,
                                    @RequestParam("semester") int semester,
                                    Model model) {
        model.addAttribute("courses", courseService.getCoursesBySemester(year, semester));
        model.addAttribute("year", year);
        model.addAttribute("semester", semester);
        return "creditsDetail";
    }

    @GetMapping("/register")
    public String showCourseForm(Model model) {
        model.addAttribute("course", new Course());
        return "registerCourse";
    }

    @PostMapping("/register")
    public String submitCourse(@ModelAttribute("course") @Valid Course course,
                               BindingResult result) {
        if (result.hasErrors()) return "registerCourse";
        courseService.registerCourse(course);
        return "redirect:/mycourses";
    }

    @GetMapping("/mycourses")
    public String showRegisteredCourses(Model model) {
        model.addAttribute("registeredCourses", courseService.getRegisteredCourses2025_2());
        return "registeredCourses";
    }
}
