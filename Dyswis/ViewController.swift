//
//  ViewController.swift
//  Dyswis
//
//  Created by David M Wallace on 9/20/18.
//  Copyright © 2018 David M Wallace. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
class ViewController: UIViewController {
    
    @IBAction func Create(_ sender: Any) {
    }
    
    @IBAction func Menu(_ sender: Any) {
    }
    
    @IBAction func CommentButton(_ sender: Any) {
    }
    
    @IBAction func TagsButton(_ sender: Any) {
    }
    
    //let controller = AVPlayerViewController()
    fileprivate var locationAvPlayerViewController : AVPlayerViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let locationController = childViewControllers.first as? AVPlayerViewController else  {
            fatalError("Check storyboard for missing LocationTableViewController")
        }
        
        locationAvPlayerViewController = locationController
        locationController.delegate = self as? AVPlayerViewControllerDelegate//sets app delegate view controller
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setUpAVPlayer()
    }
    
    func setUpAVPlayer()->Void{
        /* guard let url = URL(string: "https://devimages.apple.com.edgekey.net/samplecode/avfoundationMedia/AVFoundationQueuePlayer_HLS2/master.m3u8") else {
         return
         }
         
         // Create an AVPlayer, passing it the HTTP Live Streaming URL.
         let player = AVPlayer(url: url)
         
         // Create a new AVPlayerViewController and pass it a reference to the player.
         
         
         controller.player = player
         NotificationCenter.default.addObserver(self, selector: #selector(ViewController.itemFinished), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: controller)
         // Modally present the player and call the player's play() method when complete.
         present(controller, animated: true) {
         player.play()
         
         }*/
        
    }
    /* @objc func itemFinished()->Void{
     let btn = UIButton(type: .system)
     btn.addTarget(self, action: #selector(ViewController.buttonTapped), for: .touchUpInside)
     self.controller.contentOverlayView?.addSubview(btn)
     }
     
     @objc func buttonTapped(){
     print("The button was tapped")
     }
     */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

