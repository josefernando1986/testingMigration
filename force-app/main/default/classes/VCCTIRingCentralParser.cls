public class VCCTIRingCentralParser implements VCCTIParserInterface{
	public String uri;	//https://platform.devtest.ringcentral.com/restapi/v1.0/account/736671005/extension/736671005/call-log?view=Simple&showBlocked=true&withRecording=false&dateFrom=2022-08-22T22:23:00.000Z&showDeleted=false&page=1&perPage=100
	public cls_records[] records;
	public cls_paging paging;
	public cls_navigation navigation;
	class cls_records {
		public String uri;	//https://platform.devtest.ringcentral.com/restapi/v1.0/account/736671005/extension/736671005/call-log/AVNxDDkKwk8TDUA?view=Simple
		public String id;	//AVNxDDkKwk8TDUA
		public String sessionId;	//16029676005
		public String startTime;	//2022-08-23T20:48:40.684Z
		public Integer duration;	//0
		public String type;	//Voice
		public String internalType;	//International
		public String direction;	//Outbound
		public String action;	//RingOut Web
		public String result;	//Not Allowed
		public cls_to to;
		public cls_from fromPhone;
		public cls_extension extension;
		public String reason;	//International Restricted
		public String reasonDescription;	//The country and/or area you attempted to call has been prohibited by your administrator.
		public String telephonySessionId;	//s-a1d1479212665z182cc76e608z99f2f0000
	}
	class cls_to {
		public String phoneNumber;	//+573234429464
	}
	class cls_from {
		public String name;	//Carlos Gonzalez
		public String phoneNumber;	//+14242604623
		public String extensionId;	//736671005
	}
	class cls_extension {
		public String uri;	//https://platform.devtest.ringcentral.com/restapi/v1.0/account/736671005/extension/736671005
		public Integer id;	//736671005
	}
	class cls_paging {
		public Integer page;	//1
		public Integer perPage;	//100
		public Integer pageStart;	//0
		public Integer pageEnd;	//2
	}
	class cls_navigation {
		public cls_firstPage firstPage;
	}
	class cls_firstPage {
		public String uri;	//https://platform.devtest.ringcentral.com/restapi/v1.0/account/736671005/extension/736671005/call-log?view=Simple&showBlocked=true&withRecording=false&dateFrom=2022-08-22T22:23:00.000Z&showDeleted=false&page=1&perPage=100
	}

    public VCCTIParserInterface parse(String json){
        return (VCCTIParserInterface)System.JSON.deserialize(json, VCCTIRingCentralParser.class);
    }
    
    public List<VCCall> getVCCalls(){
        List<VCCall> vcCallList = new List<VCCall>();
        //TODO: To iterate records to send back list of VCCalls
        return vcCallList;
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
        return this.uri;
    }    
    
}