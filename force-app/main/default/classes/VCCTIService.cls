@RestResource(urlMapping='/VCCTIService/*')
global with sharing class VCCTIService {
    
    // TODO
    // 1. Identify how we are going to receive the params 
	// 2. Check for no dduplicates
    // 3. Create the VCCall
    // 4. Send the VCCall to the VCECIHttpHandler for it to process it
 	@HttpPost
    global static void doPost(String externalId,String callId) {
	    VCECIHttpHandler eciHandler = new VCECIHttpHandler();
        //TODO
        // 1. Identify how we are going to receive the params 
        // 2. Check for no dduplicates
        // 3. Create the VCCall
        // 4. Send the VCCall to the VCECIHttpHandler for it to process it
        List<VCCall> vcCallList = new List<VCCall>();
        eciHandler.eciHandler(vcCallList);        
    }
    
}