package kr.ac.hansung.cse.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.*;
import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Data
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotNull(message = "수강년도는 필수입니다.")
    private Integer year;

    @NotNull(message = "학기는 필수입니다.")
    private Integer semester;

    @NotBlank(message = "교과코드는 필수입니다.")
    @Size(min = 7, max = 7, message = "교과코드는 정확히 7자리여야 합니다.")
    @Pattern(regexp = "^[A-Za-z0-9]{7}$", message = "교과코드는 영어와 숫자로만 구성되어야 합니다.")
    private String code;

    @NotBlank(message = "교과목명은 필수입니다.")
    private String name;

    @NotBlank(message = "교과구분을 선택하세요.")
    private String division;

    @NotBlank(message = "담당교수를 입력하세요.")
    private String professor;

    @Min(value = 1, message = "학점은 최소 1 이상이어야 합니다.")
    @Max(value = 3, message = "학점은 최대 3 이하이어야 합니다.")
    private Integer credit;

    private boolean finished; // true면 수강신청한 과목
}

