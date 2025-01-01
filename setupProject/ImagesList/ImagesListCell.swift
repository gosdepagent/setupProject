//
//  ImagesListCell.swift
//  setupProject
//
//  Created by Yanye Velikanova on 12/23/24.
//
import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    
    private let gradientLayer = CAGradientLayer()
        
        override func awakeFromNib() {
            super.awakeFromNib()
            setupGradientLayer()
        }
        
        private func setupGradientLayer() {
            
            gradientLayer.colors = [
                UIColor.clear.cgColor,
                UIColor.black.withAlphaComponent(0.7).cgColor
            ]
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
            cellImage.layer.addSublayer(gradientLayer)
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            
        
            let gradientHeight: CGFloat = 50
            gradientLayer.frame = CGRect(
                x: 0,
                y: cellImage.bounds.height - gradientHeight,
                width: cellImage.bounds.width,
                height: gradientHeight
            )
            
            cellImage.bringSubviewToFront(dateLabel)
        }
    }
    

