public class VCCTIDialPadStrategy implements VCCTIInterface{
    public Boolean isActive(){
        return true;
    }

    public String getNames(){
        return 'DialPad';
    }

    public List<String> getExcludedPhones(){
        List<String> numbers = new List<String>{'3052242424','3213232323','3000000011'};
        return numbers;
    }

    public Integer getMinCallDurationFilter(){
        return 15;
    }

    public String getAuthenticationType(){
        return 'Token';
    }

    public String getCallsAPIEndpoint(){
        //Replace with Dialpad restapi
        return 'restapi/v1.0/account/~/extension/~/call-log?';
    }

    public String getFilter(){
        //Replace with Dialpad filters
        return 'showBlocked=true&view=Simple&withRecording=false&page=1&perPage=100&showDeleted=false';
    }

    public String getNamedCredentials(){
        return 'DialPad';
    }
    
    public Boolean allowMultipleCallsWhenGettingMedia(){
        return false;
    }
    
}