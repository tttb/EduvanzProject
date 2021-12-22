/*
@Author : Navin Soni
@CreatedDate : 14th Nov 2021
@Description : Account Object Trigger.
*/
trigger AccountTrigger on Account(before insert, after insert, before update, after update, before delete, after delete, after unDelete) {
    TriggerDispatcher.run(new AccountTriggerHandler(), 'AccountTrigger');
}