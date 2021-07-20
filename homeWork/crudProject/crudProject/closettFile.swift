//
//  closetFile.swift
//  crudProject
//
//  Created by GSM07 on 2021/07/17.
//
import Foundation
import UIKit

class closetFile: UICollectionViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    var imageView = UIImageView()
  
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.navigationBar.barTintColor = .orange
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.navigationItem.title = "내 옷장"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title:"사진추가", style: .plain, target: self, action: #selector(uploadphoto))
        self.collectionView!.register(CollectionViewCell.self, forCellWithReuseIdentifier: "closetCell")
        setFlowLayout()
        
    }
    @objc func uploadphoto(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true)

        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "closetCell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = UIImage(named: "photo.png")
        
        return cell
    }
    
    func setFlowLayout(){
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 1
        flowLayout.minimumInteritemSpacing = 1
        let myWidth: CGFloat = self.collectionView.frame.width / 3 - 1
        flowLayout.itemSize = CGSize(width: myWidth, height: myWidth)
        self.collectionView.backgroundColor = .white
        self.collectionView.collectionViewLayout = flowLayout
        
    }
   
    
}

extension closetFile {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.contentMode = .scaleAspectFit
            imageView.image = pickedImage
        }
        dismiss(animated: true, completion: nil)
    }
        
    
}



