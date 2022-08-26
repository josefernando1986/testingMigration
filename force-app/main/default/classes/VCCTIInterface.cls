public interface VCCTIInterface {
    Boolean isActive();
    String getName();
    List<String> getExcludedPhones();
    Integer getMinCallDurationFilter();
    String getNamedCredentials();
    String getAuthenticationType();
    String getCallsAPIEndpoint();
    String getFilter();
    Boolean allowMultipleCallsWhenGettingMedia();
}