trigger ContactTrigger5 on Contact (before insert,  before update, before delete, after update, after insert, after delete, after undelete){
    if(Trigger.isUpdate ||Trigger.isInsert ||Trigger.isUndelete)
    {ContactTriggerHelper5.aggregateNumOfContactsOnAccount5(Trigger.New);}
    else if(Trigger.isDelete ){ContactTriggerHelper5.aggregateNumOfContactsOnAccount5(Trigger.Old);}


}