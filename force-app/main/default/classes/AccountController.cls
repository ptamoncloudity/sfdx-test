public with sharing class AccountController {
 @AuraEnabled
    // change 1
 public static List<Account> findAll() {
     // change 1
 return [SELECT Id, Name, Location__Latitude__s, Location__Longitude__s
   FROM Account
   WHERE Location__Latitude__s != NULL AND Location__Longitude__s !=
          NULL
   LIMIT 50];
  }
}