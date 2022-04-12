//
//  HomeViewController.swift
//  InstaLoginTask
//
//  Created by Macservis on 11/04/22.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
   
    //MARK: Data server
    
    //var serverData: [User] = []
    var serverDataTask: [UserTAsk] = []
    
    

    //MARK: Outlets
    
    @IBOutlet weak var nmTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunc()
    }

    
    
 //MARK: Methods
    
    func startFunc() {
        view.backgroundColor = UIColor.white
        
        nmTableView.backgroundColor = UIColor.white
        
        nmTableView.delegate = self
        nmTableView.dataSource = self
        
        startServerDataAPpend()
        startNavigation()
    }
    
    
    func startNavigation(){
        title  = "Instagram"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_camera"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(tappedCamera))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_send"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(tappedSend))
        
    }
    
    func startServerDataAPpend() {
//        serverData.append(User(fullName: "Samandar", profileImg: "im_person1", time: "05/05/05", contentImg: "im_person2", content: "Assalomu alekum hammaga"))
//        serverData.append(User(fullName: "Sardorbek", profileImg: "im_person2", time: "05/05/05", contentImg: "im_person3", content: "Assalomu alekum hammaga"))
//        serverData.append(User(fullName: "Akbarjon", profileImg: "im_person3", time: "05/05/05", contentImg: "im_person4", content: "Assalomu alekum hammaga"))
//        serverData.append(User(fullName: "Rustambek", profileImg: "im_person4", time: "05/05/05", contentImg: "im_person5", content: "Assalomu alekum hammaga"))
//        serverData.append(User(fullName: "Samandar", profileImg: "im_person1", time: "05/05/05", contentImg: "im_person2", content: "Assalomu alekum hammaga"))
//        serverData.append(User(fullName: "Sardorbek", profileImg: "im_person2", time: "05/05/05", contentImg: "im_person3", content: "Assalomu alekum hammaga"))
//        serverData.append(User(fullName: "Akbarjon", profileImg: "im_person3", time: "05/05/05", contentImg: "im_person4", content: "Assalomu alekum hammaga"))
//        serverData.append(User(fullName: "Rustambek", profileImg: "im_person4", time: "05/05/05", contentImg: "im_person5", content: "Assalomu alekum hammaga"))
        
      
        serverDataTask.append(UserTAsk(fullName: "Samandar", profileImg: "im_person1", contentImgs: ["im_person2","im_person3"]))
        serverDataTask.append(UserTAsk(fullName: "Samandar", profileImg: "im_person2", contentImgs: ["im_person4","im_person5"]))
        serverDataTask.append(UserTAsk(fullName: "Samandar", profileImg: "im_person1", contentImgs: ["im_person2","im_person3"]))
        serverDataTask.append(UserTAsk(fullName: "Samandar", profileImg: "im_person2", contentImgs: ["im_person4","im_person5"]))
        
        
    }
    

    //MARK: objc methods
    
    @objc func tappedCamera() {
        print(#function)
    }
    
    
    
    @objc func tappedSend() {
        print(#function)
    }
    
    
    
    
    //MARK: Table View Functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return serverData.count
        return serverDataTask.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let item = serverData[indexPath.row]
//        let cell = Bundle.main.loadNibNamed("UserTableViewCell", owner: self, options: nil)?.first as! UserTableViewCell
//        cell.nmFullName.text = item.fullName
//        cell.nmProfileImageView.image = UIImage(named: item.profileImg!)
//        cell.nmContentLAbel.text = item.content
//        cell.nmContentImageView.image = UIImage(named: item.contentImg!)
//        cell.nmtimeLabel.text = item.time
//        return cell
        
        let item  = serverDataTask[indexPath.row]
        let cellTask = Bundle.main.loadNibNamed("UserTAskTableViewCell", owner: self, options: nil)?.first as! UserTAskTableViewCell
        cellTask.nmFullName.text = item.fullName
        cellTask.nmProfileImg.image = UIImage(named: item.profileImg!)
        cellTask.nmImgView1.image = UIImage(named: item.contentImgs[0]!)
        cellTask.nmImgView2.image = UIImage(named: item.contentImgs[1]!)
        
        return cellTask
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height / 2
        //return CGFloat(indexPath.row * 300)
    }
}
