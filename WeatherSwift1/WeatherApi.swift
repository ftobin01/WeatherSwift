//
//  WeatherApi.swift
//  WeatherSwift1
//
//  Created by F T on 22/09/2015.
//  Copyright © 2015 FT. All rights reserved.
//

import Foundation

class WeatherApi {
    
    var accessCode = ""
    
    func getWeatherData(shortUrl : String!, completion :((AnyObject) -> Void)!)  {
/*
    rawUrlStr = @"http://maps.google.com/maps/api/geocode/json?address=6th+and+pine&bounds=37.331689,-122.030731|37.331689,-122.030731&sensor=false";
        NSString *urlStr = [rawUrlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSURL *searchURL = [NSURL URLWithString:urlStr];
        
        
        var urlStr = strLink!.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
        
        if var url = NSURL(string: urlStr!){
            print(self.strLink!)
            
            self.webView!.loadRequest(NSURLRequest(URL: url))
 */
        
        let rawUrlString = "http://api.openweathermap.org/data/2.5/weather?q=%@,&units=metric&mode=json" + accessCode
            
            
            var urlString = rawUrlString.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
        
        if var url = NSURL(string: urlString){
                print(urlString)
            }
            
        
        let session = NSURLSession.sharedSession()
        let weatherUrl = NSURL(string: urlString)
        print("urlstring= \(urlString)")
        print("\(weatherUrl)")
        
        var task = session.dataTaskWithURL(weatherUrl!){
        ( data,response, error) -> Void in
        
            if error != nil {
                print(error!.localizedDescription)
            } else {
                
            }
        }
     task.resume()
    }
}