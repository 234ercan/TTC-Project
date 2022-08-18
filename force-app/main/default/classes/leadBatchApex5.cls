public class leadBatchApex5 implements Database.Batchable <sObject>,Schedulable{
    public Database.QueryLocator start(Database.BatchableContext bc){
        //List<lead> LeadSource =[Select Id, LeadSource From Lead Where LeadSource=null];
       return Database.getQueryLocator([Select Id, LeadSource From Lead Where LeadSource=null]);
    }
    
    public void execute (Database.BatchableContext bc, List<lead> leadList){
        for( Lead Ld:leadList ){
          Ld.leadsource='Manual';
        }
        update leadList;
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('Class is working');
        
    }
    
   public void execute(SchedulableContext sc) {
      leadBatchApex5 Lub=new leadBatchApex5 ();
      Database.executeBatch(Lub);
   }// we can also define the size while execute the batch
}   // Database.executeBatch(Lub,200);