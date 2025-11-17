public class Bloodaccountcreation {
    public static Blood_Coordination__c bloodRelation (string bdname,string str, string bGroup, string Brname, string atname){
        Blood_Donor__c bd = new  Blood_Donor__c();  
        bd.Donor_Name__c = bdname;
        bd.DOB__c = date.parse(str); 
        bd.Blood_Group__c = bGroup;
        insert bd;
        
        Blood_Request__c br = new Blood_Request__c();
        br.Patient_Name__c = brname;
        br.Attender_Name__c = atname;
        insert br;
        
        Blood_Coordination__c bc = new Blood_Coordination__c();
        bc.Name = bdname + brname;
        bc.Donor__c = bd.id;
        bc.Patient__c = br.id;
        insert bc;
        return bc;
    }
    
}