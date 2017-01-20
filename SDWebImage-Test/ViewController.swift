//
//  ViewController.swift
//  SDWebImage-Test
//
//  Created by Artem on 1/20/17.
//  Copyright © 2017 ApiqA. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var imgURL = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imgURL = ["https://mir-s3-cdn-cf.behance.net/project_modules/1400/aec97846804035.5864c16659d0f.png", "https://mir-s3-cdn-cf.behance.net/project_modules/1400/4957d346804035.5864be282455c.png", "https://mir-s3-cdn-cf.behance.net/project_modules/1400/aec97846804035.5864c16659d0f.png", "https://mir-s3-cdn-cf.behance.net/project_modules/1400/4957d346804035.5864be282455c.png", "https://mir-s3-cdn-cf.behance.net/project_modules/1400/aec97846804035.5864c16659d0f.png", "https://mir-s3-cdn-cf.behance.net/project_modules/1400/4957d346804035.5864be282455c.png", "https://mir-s3-cdn-cf.behance.net/project_modules/1400/aec97846804035.5864c16659d0f.png", "https://mir-s3-cdn-cf.behance.net/project_modules/1400/4957d346804035.5864be282455c.png", "https://mir-s3-cdn-cf.behance.net/project_modules/1400/aec97846804035.5864c16659d0f.png", "https://mir-s3-cdn-cf.behance.net/project_modules/1400/4957d346804035.5864be282455c.png"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.imgURL.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        let imageView = cell?.viewWithTag(1) as! UIImageView
        
        imageView.sd_setImage(with: URL(string: self.imgURL[indexPath.row]), placeholderImage: #imageLiteral(resourceName: "Screen Shot 2017-01-20 at 11.31.30"), options: [.avoidAutoSetImage, .progressiveDownload])
        //imageView.image = UIImage(named:self.imgURL[indexPath.row])
        
        return cell!
    }

    
    
}

