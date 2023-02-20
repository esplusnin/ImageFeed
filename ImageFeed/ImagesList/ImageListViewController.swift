import UIKit

class ImageListViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle { .lightContent }
    
    @IBOutlet private var tableView: UITableView!
    

    
    private let photosName: [String] = Array(0..<20).map{ "\($0)" }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsets(top: 12,
                                              left: 0,
                                              bottom: 12,
                                              right: 0)
    }
    
    func configCell(for cell: ImagesListCell, with indexPath: IndexPath) {
        let photoIndex = photosName[indexPath.row]
        let image = UIImage(named: String(photoIndex))
        
        guard let photo = image else { return }
        cell.cellImage.image = photo
        cell.cellLabel.text = Date().currentDate
        
        if indexPath.row % 2 == 0 {
            cell.likeButton.imageView?.image = UIImage(named: "Active")
        } else {
            cell.likeButton.imageView?.image = UIImage(named: "No Active")
        }
    }
    
}

extension ImageListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        photosName.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let image = UIImage(named: photosName[indexPath.row]) else {
            return 0
        }
        let imageInsets = UIEdgeInsets(top: 4, left: 16, bottom: 4, right: 16)
        let imageViewWidth = tableView.bounds.width - imageInsets.left - imageInsets.right
        let imageWidth = image.size.width
        let scale = imageViewWidth / imageWidth
        let cellHeight = image.size.height * scale + imageInsets.top + imageInsets.bottom
        return cellHeight
    }
}

    
extension ImageListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ImagesListCell.reuseIdentifier, for: indexPath)
        guard let imageListCell = cell as? ImagesListCell else {
            print("Ошибка формирования типа ячейки")
            return UITableViewCell()
        }
        
        configCell(for: imageListCell, with: indexPath)
    
        return imageListCell
    }
}
    
    
