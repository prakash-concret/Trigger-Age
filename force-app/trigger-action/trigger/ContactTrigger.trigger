/**
 * @description       : 
 * @author            : Prakash
 * @group             : 
 * @last modified on  : 10-10-2024
 * @last modified by  : Prakash
**/
trigger ContactTrigger on Contact (
    before insert,
    after insert,
    before update,
    after update,
    before delete,
    after delete,
    after undelete
) {
    new MetadataTriggerHandler().run();
}
