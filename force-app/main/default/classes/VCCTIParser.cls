public class VCCTIParser {
    public class VCCTIException extends Exception{}
    
    public static final Map<String, VCCTIParserInterface> ctiParserMap;
    private VCCTIParserInterface ctiParser;

    static{
        List<String> ctiNames = Label.VCCTIs.split(',');
        ctiParserMap = new Map<String, VCCTIParserInterface>();
        for(String name : ctiNames){
            try {
                ctiParserMap.put(name, (VCCTIParserInterface)Type.forName('VCCTI' + name + 'Parser').newInstance());
            } catch (Exception e) {
                System.debug(e.getMessage());
            }
        }
    }

    public VCCTIParser(String ctiDevName) {
        if(!ctiParserMap.containsKey(ctiDevName)){
            throw new VCCTIException(ctiDevName);
        }
        ctiParser = ctiParserMap.get(ctiDevName);
    }

    public void parse(String json){
        ctiParser = ctiParser.parse(json);
    }

    public String getURI(){
        return ctiParser.getURI();
    }
    
    public List<VCCall> getVCCalls(){
        return ctiParser.getVCCalls();
    }

    public String getRecording(String callId){
        return ctiParser.getRecording();
    }

    public List<String> getRecordings(List<String> callIdList){
        return ctiParser.getRecordings();
    }

    
    
}