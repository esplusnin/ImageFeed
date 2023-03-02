import UIKit


final class SingleImageViewController: UIViewController {
    
    var image: UIImage!
    
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func didTapBackButton() {
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
}
