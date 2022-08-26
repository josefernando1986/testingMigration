public class VCCTIHttpHandler {
    String ctiName;
    public VCCTI vccti;
    public VCCTIParser vcCtiParser;
    
    
    public VCCTIHttpHandler(String ctiName){
        this.vccti = new VCCTI(ctiName);
        this.vcCtiParser = new VCCTIParser(ctiName);
        this.ctiName = ctiName;
    }
    
    // This method handles all the VCCTIHandler responsabilities
    public List<VCCall> ctiHandler(){
        String json;
        List<VCCall> vcCallList;
        List<VCCall> filteredCallList;
        
        // Map: callid, recording
        Map<Id,String> recordingsMap;
        
        json = getCallsHttpRequest();
        vcCtiParser.parse(json);
        vcCallList = vcCtiParser.getVCCalls();
        filteredCallList = filterCalls(vcCallList);
        VCCall.insertVCCallList(vcCallList);
        
        List<String> recordingList = new List<String>();
        if(vccti.allowMultipleCallsWhenGettingMedia()){
	        recordingsMap = getRecordingsHttpRequest(filteredCallList);
        } else {            
	        recordingsMap = getRecordingHttpRequest(filteredCallList);
        }        
        
        for(String callId: recordingsMap.keySet()){
            // Method to save the file into the call
            VCCall.insertMedia(callId, recordingsMap.get(callId));
        }
        
        return filteredCallList;        
     }
    
    public String getCallsHttpRequest(){
        HttpRequest req = new HttpRequest();
        String url = vccti.getCallsAPIEndpoint()+vccti.getFilter();
        req.setEndpoint('callout:'+vccti.getNamedCredentials()+'/' + url);
        req.setMethod('GET');
        Http http = new Http();
        HTTPResponse res = http.send(req);        
        return res.getBody();
    }

    // TODO: To define the return type depending of the file
    // Map: callid, recording
    public Map<Id,String> getRecordingHttpRequest(List<VCCall> filteredCallList){
        // TODO:
        // To implement when the API only allows to be called recording by recording
        Map<Id,String> recordingMap = new Map<Id,String>();
        return recordingMap;
    }

    // TODO: To define the return type depending of the file
    // Map: callid, recording
    public Map<Id,String> getRecordingsHttpRequest(List<VCCall> filteredCallList){
        // TODO:
        // To implement when the API allows to call multiple recordings at once
        Map<Id,String> recordingsMap = new Map<Id,String>();
        return recordingsMap;
    }
    
    public List<VCCall> filterCalls(List<VCCall> vcCallList){
        // To apply the following filters to the incomming list of VC calls (vcCallList)
        // before asking for the recordings/media related to those calls:
        // 1. Check Duration filter 
        // 2. Check if the VCCall__c already has a File
        // 3. Verify if VCCall__c.VCProcessedByECI__c is true
		List<VCCall> filteredCallList = new List<VCCall>();
        return filteredCallList;
    }
	
}