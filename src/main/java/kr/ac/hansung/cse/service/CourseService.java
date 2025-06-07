package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.CourseDao;
import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.model.SemesterCreditSummary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class CourseService {

    @Autowired
    private CourseDao courseDao;

    public List<Course> getAllCourses() {
        return courseDao.getAllCourses();
    }

    public List<SemesterCreditSummary> getCreditSummaries() {
        List<Course> allCourses = courseDao.getAllCourses();

        Map<String, List<Course>> grouped = allCourses.stream()
                .filter(Course::isFinished)
                .collect(Collectors.groupingBy(c -> c.getYear() + "-" + c.getSemester()));

        List<SemesterCreditSummary> summaries = new ArrayList<>();
        for (Map.Entry<String, List<Course>> entry : grouped.entrySet()) {
            String[] key = entry.getKey().split("-");
            int year = Integer.parseInt(key[0]);
            int semester = Integer.parseInt(key[1]);
            int sum = entry.getValue().stream().mapToInt(Course::getCredit).sum();
            summaries.add(new SemesterCreditSummary(year, semester, sum));
        }

        // 연도 오름차순, 학기 오름차순 정렬
        summaries.sort(Comparator.comparing(SemesterCreditSummary::getYear)
                .thenComparing(SemesterCreditSummary::getSemester));
        return summaries;
    }

    public int getTotalFinishedCredits() {
        return getCreditSummaries().stream().mapToInt(SemesterCreditSummary::getTotalCredits).sum();
    }

    public List<Course> getCoursesBySemester(int year, int semester) {
        return courseDao.findByYearAndSemester(year, semester);
    }

    public void registerCourse(Course course) {
        course.setFinished(true);
        courseDao.save(course);
    }

    public List<Course> getRegisteredCourses2025_2() {
        return courseDao.getRegisteredCourses2025_2();
    }
}
