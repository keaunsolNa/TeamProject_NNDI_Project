package com.nndi.common.login;
import java.util.Date;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
public class SchedulerJob implements Job {
    @Override
    public void execute(JobExecutionContext arg0) throws JobExecutionException {
    	
    	System.out.println("SchedulerJob execute 시작");
    	MemberLoginService MemberUpdate = new MemberLoginService();
    	
    	/* 마지막 로그인으로부터 60일 이상 지난 고객 휴면 회원 처리 */
    	int result = MemberUpdate.updateRestMember();
    	
    	if(result > 0) {
    		System.out.println(result + "명의 고객 휴면 상태 전환 ");
    	} else {
    		System.out.println("휴면 상태 전환 없음");
    	}
    	
    	/* 탈퇴로부터 1년 이상 지난 고객 폐기 처리 */
    	
    	int result2 = MemberUpdate.deleteOutMember();
    	if(result2 > 0) {
    		System.out.println(result2 + "명의 고객 정보 폐기");
    		System.out.println("Job Executed [" + new Date(System.currentTimeMillis()) + "]");
    	} else {
    		System.out.println("폐기 전환 없음");
    		System.out.println("Job Executed [" + new Date(System.currentTimeMillis()) + "]");
    	}
    	
    	
    }
}