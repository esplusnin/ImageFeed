import UIKit

final class ImagesListCell: UITableViewCell {
    
    static let reuseIdentifier = "ImagesListCell"
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet var cellLabel: UILabel!
    @IBOutlet var cellImage: UIImageView!
    
    override func layoutSubviews() {
            cellImage.layer.sublayers = nil
            setupGradient()
        }
        
        override func prepareForReuse() {
            cellImage.layer.sublayers = nil
        }
        
        func setupGradient() {
            let height = bounds.height
            let width = bounds.width
            let heightGradient: CGFloat = 30
            
            let colorTop = UIColor.imageStartGradient.cgColor
            let colorBot = UIColor.imageEndGradient.cgColor
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = CGRect(x: 0, y: height - heightGradient, width: width, height: heightGradient)
            gradientLayer.colors = [colorTop, colorBot]
            cellImage.layer.insertSublayer(gradientLayer, at: 0)
        }
}
