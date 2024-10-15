/**
 * @description       : Handler apex class for account trigger
 * @author            : Prakash
 * @group             :
 * @last modified on  : 10-14-2024
 * @last modified by  : Prakash
 **/
public with sharing class AccountTriggerHandler {
    private boolean isTriggerExecuting = false;
    private integer batchSize = 0;

    public AccountTriggerHandler(boolean isExecuting, integer size) {
        isTriggerExecuting = isExecuting;
        batchSize = size;
    }

    public void onBeforeInsert(List<Account> newAccount) {
        system.debug('Account Trigger On Before Insert');
    }
    public void onAfterInsert(List<Account> newAccount) {
        system.debug('Account Trigger On After Insert');
    }
    public void onAfterUpdate(List<Account> newAccount, List<Account> oldAccount) {
        system.debug('Account Trigger On After Update ');
        AccountActions.updateContact(newAccount);
    }
    public void onBeforeUpdate(List<Account> newAccount, List<Account> oldAccount) {
        system.debug('Account Trigger On Before Update ');
    }

    @future
    public static void onAfterUpdateAsync(Set<ID> newAccountIDs) {
    }
    public boolean isTriggerContext {
        get {
            return isTriggerExecuting;
        }
    }

    public boolean isVisualforcePageContext {
        get {
            return !isTriggerContext;
        }
    }

    public boolean isWebServiceContext {
        get {
            return !isTriggerContext;
        }
    }

    public boolean isExecuteAnonymousContext {
        get {
            return !isTriggerContext;
        }
    }
}
