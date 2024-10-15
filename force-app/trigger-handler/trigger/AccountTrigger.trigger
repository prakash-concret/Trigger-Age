/**
 * @description       : Trigger on Account object to handle insert and update events.
 * @author            : Prakash
 * @group             : 
 * @last modified on  : 10-10-2024
 * @last modified by  : Prakash
**/
trigger AccountTrigger on Account( after insert, after update, before insert, before update) {
    
    AccountTriggerHandler accountHandler = new AccountTriggerHandler(Trigger.isExecuting, Trigger.size);
    
    if( Trigger.isInsert ){
        if(Trigger.isBefore) {
            accountHandler.OnBeforeInsert(trigger.New);
        }
        else {
            accountHandler.OnAfterInsert(trigger.New);
        }
    }
    else if ( Trigger.isUpdate ) {
        if(Trigger.isBefore){
            accountHandler.OnBeforeUpdate(trigger.New ,trigger.Old);
        }
        else{
            accountHandler.OnAfterUpdate(trigger.New ,trigger.Old);
        }
    }
}