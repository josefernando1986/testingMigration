public class VCCTIDialPadParser implements VCCTIParserInterface{

    //TODO 
    //Generate all the classes needed to support the JSON/JSONs DialPad uses
    //Important info to know
 	//JSON to APEX
	// - https://json2apex.salesforcecody.com/ 
	// - https://json2apex.github.io/ 
	// - https://json2apex.herokuapp.com/ 
	// - https://www.adminbooster.com/tool/json2apex  
    
    public VCCTIParserInterface parse(String json){
        return (VCCTIParserInterface)System.JSON.deserialize(json, VCCTIRingCentralParser.class);
    }
    
    public List<VCCall> getVCCalls(){
        List<VCCall> vcCallList = new List<VCCall>();
        //TODO: To iterate records to send back list of VCCalls
        return vcCallList;
    }

    // The type of this method would change depending on the recording format
    public String getMedia(){
        String recording = 'Recording';
        //TODO: get Recording in the right format / update the interface
        return recording;
    }

    // The type of this method would change depending on the recording format
    public String getRecording(){
        String recording = 'Recording';
        //TODO: get Recording in the right format / update the interface
        return recording;
    }

    // The type of this method would change depending on the recording format    
    public List<String> getRecordings(){
        List<String> recordings = new List<String>();
        //TODO: get Recording in the right format / update the interface
        return recordings;
    }

    public String getURI(){
        return 'URI';
    }     
}