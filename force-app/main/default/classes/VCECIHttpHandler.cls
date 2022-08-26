public class VCECIHttpHandler {

    VCECIParser eciParser;
    
    public VCECIHttpHandler(){
        // TODO
        eciParser = new VCECIParser();
    }
    
    public void eciHandler(List<VCCall> vcCallList){
        String json = eciParser.parseToJSON(vcCallList);
        sendMediaHttpRequest(json);
        
        // TODO
        // 1. Execute both API calls
        // 2. Check if the response of the API was a success
        // 2.1. If so, update the VCCall__c.VCProcessedByECI__c = true
        // 2.2. If error, we need to retry to call the API one more time
        // 2.3. If the error persists, then update VCCall__c.VCProcessedByECI__c = false
        // 3.Log the error/sucess message into the VCLog__c table 
    }
    
    // TODO
    // Sending media to the ECI requires 2 API calls
    // Please refer to the API doc
    public String sendMediaHttpRequest(String json){
        HttpRequest req = new HttpRequest();
        String url = 'TODO';
        req.setEndpoint('TODO');
        req.setMethod('POST');
        req.setBody(json);
        Http http = new Http();
        HTTPResponse res = http.send(req);        
        return res.getBody();
    }    
        
}