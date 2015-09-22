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
    
    func getWeatherData(shortUrl : String, completion :((AnyObject) -> Void))  {
    
        var urlString = "http://" + accessCode
        let session = NSURLSession.sharedSession()
        let weatherUrl = NSURL(string: urlString)
        
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