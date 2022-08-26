global class VCQueueable implements Queueable {
	VCCTIHttpHandler ctiHandler; 
    VCECIHttpHandler eciHandler;

    public VCQueueable(String ctiName){
        ctiHandler = new VCCTIHttpHandler(ctiName);
    }        
    
    global void execute(QueueableContext qc){
		List<VCCall> vcCallList = ctiHandler.ctiHandler();
        eciHandler.eciHandler(vcCallList);
    }
}