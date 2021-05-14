@IsTest
public class AccountTriggerTest {
    @IsTest
    public static void test_strees(){
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA');
            accts.add(acct);
        }              
        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();
        // Verify that 200 new Accounts were inserted
        List<Account> verifyAccts = [SELECT Id,ShippingState FROM Account];
        System.assertEquals(200, verifyAccts.size());
        for(Account cuenta : verifyAccts){
            System.assertEquals('CA', cuenta.ShippingState);
        }
    }
}