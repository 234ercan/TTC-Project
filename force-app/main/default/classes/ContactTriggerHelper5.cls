public class ContactTriggerHelper5 {

    public static void aggregateNumOfContactsOnAccount5(List<Contact> contactList) {
       
        Set<Id> conIds =new  Set<Id>();
       
        for(Contact con:contactList ){
           
            conIds.add(con.AccountId);
        }
       
        List<Account> acUpdateList = new List<Account>();
        For(Account ac : [SELECT id, ActiveContact5__c,(SELECT id FROM Contacts WHERE isActive5__c=True) FROM Account WHERE id =: conIds]){
        ac.ActiveContact5__c = ac.Contacts.size();
        acUpdateList.add(ac);
    }
       
        update acUpdateList;
       
    } 

}