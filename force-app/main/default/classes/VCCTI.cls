public class VCCTI {
    public class VCCTIException extends Exception{}
    
    public static final Map<String, VCCTIInterface> ctiMap;
    private VCCTIInterface ctiProject;
    
    static{
        List<String> ctiNames = Label.VCCTIs.split(',');
        ctiMap = new Map<String, VCCTIInterface>();
        for(String name : ctiNames){
            try {
                ctiMap.put(name, (VCCTIInterface)Type.forName('VCCTI' + name + 'Strategy').newInstance());
            } catch (Exception e) {
                System.debug(e.getMessage());
            }
        }
    }

    public VCCTI(String ctiDevName) {
        if(!ctiMap.containsKey(ctiDevName)){
            throw new VCCTIException(ctiDevName);
        }
        cti = ctiMap.get(ctiDevName);
    }

    public Boolean isActive(){
        return cti.isActive();
    }

    public Boolean areMultiple(){
        return cti.isMultiple();
    }
    
    public String getName(){
        return cti.getName();
    }

    public String getNames(){
        return cti.getName();
    }

    public String getDevName(){
        return cti.getName();
    }

    public String getDescription(){
        return cti.getDescription();
    }

    public String getURI(){
        return cti.getName();
    }

    public List<String> getExcludedPhones(){
        return cti.getExcludedPhones();
    }

    public Integer getMinCallDurationFilter(){
        return cti.getMinCallDurationFilter();
    }

    public String getAuthenticationType(){
        return cti.getAuthenticationType();
    }
    
    public String getCallsAPIEndpoint(){
        return cti.getCallsAPIEndpoint();
    }
    
    public String getFilter(){
        return cti.getFilter();
    }
    
    public String getNamedCredentials(){
        return cti.getNamedCredentials();
    }
    
    public Boolean allowMultipleCallsWhenGettingMedia(){
        return cti.allowMultipleCallsWhenGettingMedia();
    }
}