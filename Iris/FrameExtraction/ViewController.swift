//
//  ViewController.swift
//  Created by Bobo on 29/12/2016.
//

import UIKit

class ViewController: UIViewController, FrameExtractorDelegate {
    
    @objc var frameExtractor: FrameExtractor!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func flipButton(_ sender: UIButton) {
        frameExtractor.flipCamera()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frameExtractor = FrameExtractor()
        frameExtractor.delegate = self
    }
    
    @objc func captured(image: UIImage) {
        imageView.image = image
    }
    
}

