//
//  ExerciseTableViewController.swift
//  tableview-demo
//
//  Created by jeanwei on 2020/4/11.
//  Copyright © 2020 jeanwei. All rights reserved.
//

import UIKit
import SafariServices

class ExerciseTableViewController: UITableViewController {
    
    var Songlist = [rule(Songtitle:"來自天堂的魔鬼 AWAY",singer: "鄧紫棋",songtitlephoto: "away.jpg",songtitlevideo: URL(string: "https://www.youtube.com/watch?v=FWtbGkpdoP4&list=PLChSKu6fwZb3dtIyYluJu4VqjYxMFVHZx&index=1")!),rule(Songtitle: "很久以後 Long After", singer: "鄧紫棋", songtitlephoto: "loang.jpg", songtitlevideo: URL(string: "https://www.youtube.com/watch?v=2BEFukvLZfI&list=PLChSKu6fwZb3dtIyYluJu4VqjYxMFVHZx&index=2")!),rule(Songtitle: "光年之外 LIGHT YEARS AWAY", singer: "鄧紫棋", songtitlephoto: "LIGHT YEARS AWAY", songtitlevideo: URL(string: "https://www.youtube.com/watch?v=T4SimnaiktU&list=PLChSKu6fwZb3dtIyYluJu4VqjYxMFVHZx&index=3")!),rule(Songtitle: "句號 Full Stop", singer: "鄧紫棋", songtitlephoto: "full", songtitlevideo: URL(string: "https://www.youtube.com/watch?v=7XlqcS6B7WA&list=PLChSKu6fwZb3dtIyYluJu4VqjYxMFVHZx&index=4")!),rule(Songtitle: "透明 Selfless", singer: "鄧紫棋", songtitlephoto: "selfless", songtitlevideo: URL(string: "https://www.youtube.com/watch?v=-CwoylxqVPA&list=PLChSKu6fwZb3dtIyYluJu4VqjYxMFVHZx&index=5")!),rule(Songtitle: "倒數 TIK TOK", singer: "鄧紫棋", songtitlephoto: "tik", songtitlevideo: URL(string: "https://www.youtube.com/watch?v=ma7r2HGqwXs&list=PLChSKu6fwZb3dtIyYluJu4VqjYxMFVHZx&index=8")!),rule(Songtitle: "再見 GOODBYE", singer: "鄧紫棋", songtitlephoto: "goodbye", songtitlevideo: URL(string: "https://www.youtube.com/watch?v=Lhel0tzHE08&list=PLChSKu6fwZb3dtIyYluJu4VqjYxMFVHZx&index=11")!)
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //調整左右欄位
        tableView.rowHeight = 180
        tableView.estimatedRowHeight = 0 
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Songlist.count
    }
    
    override func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "songcell", for: indexPath)as!ExerciseTableViewCell
        let song = Songlist[indexPath.row]
        cell.Exerciselabel.text = song.Songtitle
        cell.Exerciseintrolabel.text = song.singer
        cell.Exerciseimageview.image = UIImage(named: song.songtitlephoto)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let indexPath = self.tableView.indexPathForSelectedRow{
            let songvideo = Songlist[indexPath.row]
            let url = songvideo.songtitlevideo
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true,completion: nil)
        }
    }
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
