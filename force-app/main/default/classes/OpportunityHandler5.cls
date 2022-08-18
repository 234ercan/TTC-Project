public class OpportunityHandler5 {
     public static void TaskForClosedWon (List<opportunity> opplist){
        List<Task> taskList = new List<task>();
        for (Opportunity opp : opplist){
            if(opp.StageName == 'Closed Won'){
                taskList.add(new Task(Subject= 'Follow Up Test Task', WhatId = opp.Id));
            }
    }
        if(taskList.size()>0){
            insert taskList;
        }                     
       }
}