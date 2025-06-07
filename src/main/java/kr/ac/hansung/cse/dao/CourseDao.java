package kr.ac.hansung.cse.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import kr.ac.hansung.cse.model.Course;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CourseDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void save(Course course) {
        entityManager.persist(course);
    }

    public List<Course> getAllCourses() {
        return entityManager.createQuery("SELECT c FROM Course c WHERE c.finished = true", Course.class)
                .getResultList();
    }

    public List<Course> findByYearAndSemester(int year, int semester) {
        return entityManager.createQuery(
                        "SELECT c FROM Course c WHERE c.year = :year AND c.semester = :semester", Course.class)
                .setParameter("year", year)
                .setParameter("semester", semester)
                .getResultList();
    }
    public int getTotalCreditsByYearAndSemester(int year, int semester) {
        Integer sum = entityManager.createQuery(
                        "SELECT SUM(c.credit) FROM Course c WHERE c.year = :year AND c.semester = :semester AND c.finished = false", Integer.class)
                .setParameter("year", year)
                .setParameter("semester", semester)
                .getSingleResult();
        return sum != null ? sum : 0;
    }

    public List<Object[]> getGroupedCredits() {
        return entityManager.createQuery(
                        "SELECT c.year, c.semester, SUM(c.credit) " +
                                "FROM Course c WHERE c.finished = false " +
                                "GROUP BY c.year, c.semester", Object[].class)
                .getResultList();
    }

    public List<Course> getRegisteredCourses2025_2() {
        return entityManager.createQuery("FROM Course WHERE year = 2025 AND semester = 2 AND finished = true", Course.class)
                .getResultList();
    }

    public List<Course> getCompletedCourses() {
        return entityManager.createQuery("FROM Course c WHERE c.finished = false", Course.class)
                .getResultList();
    }
}
