//
//  ViewController.swift
//  WeatherSwift1
//
//  Created by F T on 16/09/2015.
//  Copyright (c) 2015 FT. All rights reserved.
//
import Foundation
import UIKit


class ViewController: UIViewController {

   
    
    @IBOutlet var dateLabel: UILabel!
    
    
    @IBOutlet var tempLabel: UILabel!
    
    
    @IBOutlet var humidityLabel: UILabel!
    
    
    @IBOutlet var windSpeedLabel: UILabel!
    
    @IBOutlet var weatherForCityLabel: UILabel!
    
    @IBAction func cityTextField(cityEntered: UITextField) {
        
        weatherForCityLabel.text = " Weather for \(cityEntered.text)"
 //       getCityWeatherAsynch()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let weatherNow = WeatherApi()
        weatherNow.getWeatherData(nil,completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


/*
    
    func  swiftGet () {
        
        
 let urlPath  = "http://api.openweathermap.org/data/2.5/weather?q=%@,&units=metric&mode=json"
        
        
    var request = NSURLRequest(URL: urlPath)
        let dataTask = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) in
            // Handle response
        
            
    }
    
    
    
    
  */  
    
    
    
    
    
    
    func getCityWeatherAsynch() {
    }
    //    let internetURL = NSURL(string:"http://www.example.org")
        
/*
        let urlPath: String = "http://api.openweathermap.org/data/2.5/weather?q=%@,&units=metric&mode=json"
        
        let url: NSURL = NSURL(string: urlPath)!
      //  let request: NSMutableURLRequest = NSMutableURLRequest(URL: url)
        
        
        
        
        
         //  var url = NSURL(string : urlPath)
    let request1: NSURLRequest = NSURLRequest(URL: url)
    var error:AutoreleasingUnsafeMutablePointer<NSError?> = nil
        let  dataVal: NSData =  try! NSURLConnection.sendSynchronousRequest(request1, queue: NSOperationalQueue(),completionhandler: { (response:NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            var error: AutoreleasingUnsafeMutablePointer<NSError?> = nil , returningResponse: error)
    let _: NSError
    print(response)
            
        
    let jsonResult: NSDictionary = try! NSJSONSerialization.JSONObjectWithData(dataVal, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
        
    _ = (try? NSJSONSerialization.JSONObjectWithData(dataVal, options: [])) as? NSDictionary
        
    print("Synchronous\(jsonResult)")
    }
    
/*
-(void) getCityWeather {
    
     The Open Weathermap JSON responder
      When city called with ','  gives just 1 answer closest to location
      let *urlString  : NSString  = [NSString stringWithFormat: "http://api.openweathermap.org/data/2.5/weather?q=%@,&units=metric&mode=json",CITYNAME.text];
    
    NSURL *url            = [[NSURL alloc]initWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLResponse *response;
    NSData *GETReply      = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    NSDictionary *res     = [NSJSONSerialization JSONObjectWithData:GETReply options:NSJSONReadingMutableLeaves| NSJSONReadingMutableContainers error:nil];
    
    // Set Up Variables From Data For Screen
    NSDictionary *dict2 = [res objectForKey:@"main"];
    tempLabel.text = [NSString stringWithFormat:@"%@",[dict2 objectForKey:@"temp" ]];
    humidityLabel.text = [NSString stringWithFormat:@"%@",[dict2 objectForKey:@"humidity" ]];
    NSDictionary *dict3 = [res objectForKey:@"wind" ];
    windSpeedLabel.text = [NSString stringWithFormat:@"%@",[dict3 objectForKey:@"speed" ]];
    
  //  NSDictionary *dict4 = res[@"weather"][0];
  //  CITYWDESC.text = [NSString stringWithFormat:@"%@",[dict4 objectForKey:@"description" ]];
    
    
    // Save ICON strng to retrieve Weather Graphic
  //  CITYICON = [NSString stringWithFormat:@"%@",[dict4 objectForKey:@"icon" ]];
    
    }
*/
  
*/


//#pragma mark Get   icon for weather conditions
/*
    - (void) getIconPicture {
    NSString *icon = CITYICON;
    
    NSString *urlString2   = [NSString stringWithFormat:@"http://openweathermap.org/img/w/%@",icon];
    NSURL *url2            = [[NSURL alloc]initWithString:urlString2];
    NSURLRequest *request2 = [NSURLRequest requestWithURL:url2];
    NSURLResponse *response2;
    NSData *GETReply2      = [NSURLConnection sendSynchronousRequest:request2 returningResponse:&response2 error:nil];
    NSDictionary *res2     = [NSJSONSerialization JSONObjectWithData:GETReply2 options:NSJSONReadingMutableLeaves| NSJSONReadingMutableContainers error:nil];
    
    
    
    NSData *imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:url2]];
    UIImage *image = [[UIImage alloc] initWithData:imageData];
    
    //_iconViewButton setImage:image forState:UIControlStateNormal];
    
    //_iconView=image;
    
    }
    
*/
    

    
    
    
    
    
    
    

}

