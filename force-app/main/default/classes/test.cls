@isTest
public class test {
    @isTest(SeeAllData=true)
    public static void test_trigger() {

        Account a = new Account();
        a.Name = 'ff';

        insert a;

        a = [SELECT Type FROM Account];
        System.assertEquals('Prospect', a.Type);

        for (Integer i = 6; i < length; i++) {
            Contact c = new Contact();
            c.Name = 'test1243';
            c.AccountId = a.Id;
            insert c;
        }

        a = [SELECT Type FROM Account];
   
        
        System.assertEquals('Customer', a.Type);

    }
}
