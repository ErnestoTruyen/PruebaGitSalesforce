public class testCalloutController {
    
    public String image {
        
        get {
            HttpRequest req = new HttpRequest();
            req.setEndpoint('https://donmario--devxappia.my.salesforce.com/services/data/v51.0/sobjects/Attachment/00P1k000009ixfsEAA/Body');
            req.setMethod('GET');
            
            req.setHeader('Authorization', 'Bearer 00D1k00000052wp!ARIAQL8osVopWGeJZTl3LZyuEVJLI6T9RIKsafC0R0S2UAQqewcvc9_WgnwOaqMFHhW_bYOr_IqhMZaiMWDJS7VYAumRGQL.');
            
            Http http = new Http();
            HTTPResponse res = http.send(req);
            System.debug(res.getBody());
            System.debug(res.getBodyAsBlob());
            
            return EncodingUtil.Base64Encode(res.getBodyAsBlob());
            
        }
        
    }
}