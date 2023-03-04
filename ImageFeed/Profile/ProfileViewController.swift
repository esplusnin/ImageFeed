import UIKit

class ProfileViewController: UIViewController {
            
    private var accauntAvatarImage: UIImageView?
    private var accauntFullNameLabel: UILabel?
    private var userLabel: UILabel?
    private var accauntDescription: UILabel?
    private var accauntLogoutButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAccauntImage()
        getAccauntFullNameLabel()
        getUserLabel()
        getAccauntDescription()
        getAccauntLogoutButton()
    }
    
    private func getAccauntImage() {
        let baseImage = UIImage(named: "Photo")
        let accauntImage = UIImageView(image: baseImage)
        
        accauntImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(accauntImage)
        setAccauntAvatarConstraints(image: accauntImage)
        
        self.accauntAvatarImage = accauntImage
    }
    
    private func getAccauntFullNameLabel() {
        let label = UILabel()
        setAccauntFullNameLabel(label: label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        setAccauntFullNameConstraints(label: label)
        
        self.accauntFullNameLabel = label
    }
    
    private func getUserLabel() {
        let label = UILabel()
        setUserLabel(label: label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        setUserLabelConstraints(label: label)
        
        self.userLabel = label
    }
    
    private func getAccauntDescription() {
        let label = UILabel()
        setAccauntDescription(label: label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        setAccauntDescriptionConstraints(label: label)
        
        self.accauntDescription = label
    }
    
    private func getAccauntLogoutButton() {
        let button = UIButton()
        setAccauntLogoutButton(button: button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        setAccauntLogoutButtonConstraints(button: button)
        
        self.accauntLogoutButton = button
    }
    
    private func setAccauntFullNameLabel(label: UILabel) {
        label.text = "Екатерина Новикова"
        label.textColor = UIColor.ypWhiteIOS
        label.font = UIFont(name: "SF-Pro-Text-Bold", size: 23)
    }
    
    private func setUserLabel(label: UILabel) {
        label.text = "@ekaterina_nov"
        label.textColor = UIColor.ypGray
        label.font = UIFont(name: "SF-Pro-Text-Regular" , size: 13)
    }
    
    private func setAccauntDescription(label: UILabel) {
        label.text = "Hello, world!"
        label.textColor = UIColor.ypWhite
        label.font = UIFont(name: "SF-Pro-Text-Regular", size: 13)
    }
    
    private  func setAccauntLogoutButton(button: UIButton) {
        guard let image = UIImage(named: "ipad.and.arrow.forward") else { return }
        
        button.setImage(image, for: .normal)
    }
    
    private func setAccauntAvatarConstraints(image: UIImageView) {
        NSLayoutConstraint.activate([
            image.widthAnchor.constraint(equalToConstant: 70),
            image.heightAnchor.constraint(equalToConstant: 70),
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
    }
    
    private func setAccauntFullNameConstraints(label: UILabel) {
        guard let accauntImage = accauntAvatarImage else { return }
        NSLayoutConstraint.activate([
        label.topAnchor.constraint(equalTo: accauntImage.bottomAnchor, constant: 8),
        label.leadingAnchor.constraint(equalTo: accauntImage.leadingAnchor)
        ])
    }
    
    private func setUserLabelConstraints(label: UILabel) {
        guard let accauntFullNameLabel = accauntFullNameLabel else { return }
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: accauntFullNameLabel.bottomAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: accauntFullNameLabel.leadingAnchor)
        ])
    }
    
    private func setAccauntDescriptionConstraints(label: UILabel) {
        guard let userLabel = userLabel else { return }
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 8),
            label.leadingAnchor.constraint(equalTo: userLabel.leadingAnchor)
        ])
    }
    
    private func setAccauntLogoutButtonConstraints(button: UIButton) {
        guard let accauntAvatarImage = accauntAvatarImage else { return }
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 20),
            button.heightAnchor.constraint(equalToConstant: 22),
            button.centerYAnchor.constraint(equalTo: accauntAvatarImage.centerYAnchor),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26)
        ])
    }
}
