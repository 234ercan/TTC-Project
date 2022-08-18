trigger AccountTrigger5 on Account ( after insert, after update) {
   
    if(Trigger.isAfter)
        if(Trigger.isInsert || Trigger.isUpdate){
        AccountTriggerHandler5.createOpportunity(Trigger.New);}
        
 
}