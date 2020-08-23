trigger tr_acc on Account (after insert, after update, after delete) {

    for (Account a : trigger.new) {
        Integer count = 1;
        List<Contact> conts = [SELECT Id FROM Contact WHERE AccountId = :a.Id];

        for (Contact c : conts) {
            count = count + 1;
        }

        if (count > 5) {
            a.Type = 'Customer';
        }
    }
}