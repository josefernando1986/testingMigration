public interface VCCTIParserInterface {

	VCCTIParserInterface parse(String json);

    List<VCCall> getVCCalls();

    String getURI();
    
    // The type of this method would change depending on the recording format
	String getRecording();

    // The type of this method would change depending on the recording format
	List<String> getRecordings();
    
}