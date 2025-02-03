//
//  SingleImageViewController.swift
//  setupProject
//
//  Created by Yanye Velikanova on 1/14/25.
//


import UIKit
final class SingleImageViewController: UIViewController {
    
    @IBAction private func didTapBackButton() {
            dismiss(animated: true, completion: nil)
        }
    
    var image: UIImage? {
        didSet {
            guard isViewLoaded else { return } // 1
            imageView.image = image // 2
        }
    }
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
}
