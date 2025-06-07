package kr.ac.hansung.cse.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//학기별 이수 학점 요약 정보를 담는 DTO. creditsSummary.jsp에서 사용됨.
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SemesterCreditSummary {
    private int year;           // 수강 연도
    private int semester;       // 학기
    private int totalCredits;   // 총 학점
}
