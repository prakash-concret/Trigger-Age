/**
 * @description       : Contact trigger handler
 * @author            : Prakash
 * @group             : 
 * @last modified on  : 10-10-2024
 * @last modified by  : Prakash
**/
public with sharing class ContactTriggerHandler implements TriggerAction.BeforeInsert, TriggerAction.BeforeUpdate {
    public void beforeInsert(List<SObject> newList) {
        System.debug(newList);
    }

    public void beforeUpdate(List<SObject> newList, List<SObject> oldList) {
        System.debug(newList);
        System.debug(oldList);
    }
}