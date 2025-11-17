trigger AccountTrigger on Account (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    
  switch on trigger.operationType
  {
      when AFTER_UNDELETE  // Select Id.Name from account ALL_Rows -- Deleted records SoQL
      {
         system.debug('Inside Undelete event trigger');
         system.debug(trigger.newmap);
          
      }
  }
}