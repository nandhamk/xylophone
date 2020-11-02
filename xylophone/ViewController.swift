//
//  ViewController.swift
//  xylophone
//
//  Created by Nandhakumar M K on 01/11/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        playSound(resourceName: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {  sender.alpha = 1
        }
    }
    
    func playSound(resourceName : String){
        let url = Bundle.main.url(forResource: resourceName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

