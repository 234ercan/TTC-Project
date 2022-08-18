trigger caseTrigger5 on Case (after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            caseTriggerHandler5.updateCaseWithParentId(Trigger.New);
        }
    }
}