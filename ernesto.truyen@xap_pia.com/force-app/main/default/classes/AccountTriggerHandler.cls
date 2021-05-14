public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> cuentas){
        
        for(Account cuenta : cuentas){
            cuenta.ShippingState  = cuenta.BillingState;
        }
    }
}