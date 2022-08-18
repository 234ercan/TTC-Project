public class AccountTriggerHandler5 {
     public static void createOpportunity (List<Account> acc){
   List<Opportunity> oppList= new List<Opportunity>();
     for(Account ac:[Select Id, Name From Account where Id in:Trigger.new and Id not in(select AccountId from Opportunity)]){
          oppList.add(new opportunity( Name=ac.Name,
                                      StageName='Prospecting',
                                      CloseDate=System.today().addMonths(2),
                                      AccountId=ac.Id));
    }

    insert oppList;
    }
}