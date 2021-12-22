/**
 * @Author             : Navin Soni
 * @Date               : 07-Oct-2021
 * @File Name          : ExceptionHandler.cls
 * @Description        : It basically preserve the record of all exception related messages.
*/

public without sharing class ExceptionHandler {
    public static void LogError(String className, String errorMessage, String objectName, String recordID, String ComponentName){
        //Intantiating Customer Error object
        Custom_Error__c customObj = new Custom_Error__c(Error_source__c=className,
                                                        Record_ID__c=recordID,
                                                        Error_Message__c=errorMessage,
                                                        Object_Name__c=objectName,
                                                        User__c=UserInfo.getUserId(),
                                                        Component_Name__c=ComponentName!=null ? componentName : null);
        // Inserting the record of Exception
        insert customObj; // Removed IsCreatable check as Error Logs were not getting created.
    }
    
    // how to use it.
    //ExceptionHandler.LogError('Class Name','Error Message', 'Account/Opportunity/Custom__c', 'RecordId' , 'Method Name/Component Name');
    
}