trigger ClosedOpportunityTrigger5 on Opportunity (after insert, after update) {
      if(Trigger.isAfter){
        if(Trigger.isInsert||Trigger.isUpdate){
            OpportunityHandler5.TaskForClosedWon(Trigger.new);
        }
    }
}