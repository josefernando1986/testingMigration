public class VCCall {
    // TODO: 
    // 1. Add all the fields related to the VCCall__c
    public String startTime{get;set;}
    public String externalId{get;set;}


    public VCCall(String Id, String startTime){
        // TODO: 
        // 1. Add all the data related to the VCCall__c
        // 2. Generate exceptions if any        
        this.externalId = Id;
    }
    
    public static void insertVCCall(VCCall vcCall){//vcCall
        // TODO: 
        // 1. Verify if the VCCall__c exists before creating it
        // 2. Add all the data related to the VCCall__c
        // 3. Generate exceptions if any
        VCCall__c vcCallObj = new VCCall__c();
        vcCallObj.VCExternalID__c = vcCall.externalId;//vcCall
        insert vcCallObj;
    }
    
    public static void insertVCCallList(List<VCCall> vcCallList){
        // TODO: 
        // 1. Verify if the VCCall__c exists before creating it
        // 2. Add all the data related to the VCCall__c
        // 3. Generate exceptions if any
        List<VCCall__c> vcCallObjList = new List<VCCall__c>();
        for(VCCall vcCall : vcCallList){//vcCall
            VCCall__c vcCallObj = new VCCall__c();
            vcCallObj.VCExternalID__c = vcCall.externalId;//vcCall
            vcCallObjList.add(vcCallObj);
        }
        insert vcCallObjList;          
    }
    
    public static void insertMedia(String callId, String media){
        // TODO:
        // 1. To store the file within the notes and attanchments section that
        // belongs to the file
    }
}