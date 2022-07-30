package com.nndi.common.filter;
import static org.quartz.CronScheduleBuilder.cronSchedule;
import static org.quartz.JobBuilder.newJob;
import static org.quartz.TriggerBuilder.newTrigger;

import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerFactory;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;

import com.nndi.common.login.SchedulerJob;
public class SchedulerForLogin {
    public static void main(String[] args) {
        SchedulerFactory schedulerFactory = new StdSchedulerFactory();
        
        try {
            Scheduler scheduler = schedulerFactory.getScheduler();
            
            JobDetail job = newJob(SchedulerJob.class)
                .withIdentity("accountJob", Scheduler.DEFAULT_GROUP)
                .build();
            
            Trigger trigger = newTrigger()
                .withIdentity("accountTrigger", Scheduler.DEFAULT_GROUP)
                .withSchedule(cronSchedule("* * * 1 * ?"))
                .build();
                        
            scheduler.scheduleJob(job, trigger);
            scheduler.start();
        } catch(Exception e) {
            e.printStackTrace();
        }        
    }
}