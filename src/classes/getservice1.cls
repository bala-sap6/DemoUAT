@RestResource(urlMapping='/GetService/*')  
global with sharing class getservice1
{  
    @HttpGet
    global static String getRestMethod() 
    {  
        RestResponse res = RestContext.response;
        RestRequest req = RestContext.request;

        String name = req.params.get('name');
        return 'Hello '+name+', this message is generated through custom REST API callout' ;
    }
}