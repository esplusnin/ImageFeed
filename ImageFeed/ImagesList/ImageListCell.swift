import UIKit

final class ImagesListCell: UITableViewCell {
    
    static let reuseIdentifier = "ImagesListCell"
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet var cellLabel: UILabel!
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var gradientImageView: UIImageView!
    
    
        override func layoutSubviews() {
            gradientImageView.layer.sublayers = nil
            setupGradient()
        }
        
        override func prepareForReuse() {
            gradientImageView.layer.sublayers = nil
        }
        
        func setupGradient() {
            let height = cellLabel.bounds.height
            let widht = gradientImageView.bounds.width
            
            let colorTop = UIColor.imageStartGradient.cgColor
            let colorBot = UIColor.imageEndGradient.cgColor
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame  = CGRect(x: 1, y: height, width: widht, height: height)
            gradientLayer.colors = [colorTop, colorBot]
            gradientImageView.layer.insertSublayer(gradientLayer, at: 0)
        }
}
