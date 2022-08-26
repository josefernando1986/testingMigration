public class VCCTIRingCentralStrategy implements VCCTIInterface {
    public Boolean isActive(){
        return true;
    }

    public String getName(){
        return 'RingCentral';
    }

    public List<String> getExcludedPhones(){
        
        List<String> numbers = new List<String>();
        numbers.add('3234443322');
        numbers.add('3103333321');
        numbers.add('3122113344');
        return numbers;
    }

    public Integer getMinCallDurationFilter(){
        return 30;
    }

    public String getAuthenticationType(){
        return '0Auth';
    }
    
    public String getCallsAPIEndpoint(){
        return 'restapi/v1.0/account/~/extension/~/call-log?';
    }
    
    public String getFilter(){
        return 'showBlocked=true&view=Simple&withRecording=false&page=1&perPage=100&showDeleted=false';
    }
    
    public String getNamedCredentials(){
        return 'Ring_Central2';
    }

    public Boolean allowMultipleCallsWhenGettingMedia(){
        return false;
    }
    
}