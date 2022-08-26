global class VCSchedule implements Schedulable{
    global void execute(SchedulableContext sc){
        System.enqueueJob(new VCQueueable('RingCentral'));
    }
}