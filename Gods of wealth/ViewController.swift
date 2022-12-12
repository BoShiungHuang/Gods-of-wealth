//
//  ViewController.swift
//  Gods of wealth
//
//  Created by Bo-Shiung Huang on 2022/12/3.
//
//北西中南東

import UIKit

class ViewController: UIViewController {
    
    let godspic = ["north","west","center","south","east" ]
    
    let stories = [
        
"""
利市仙官姚少司，是民間的一位小財神，在《封神演義》中記戴為趙公明的徒弟，名姚少司，早年就拜趙公明為師，及後跟隨師傅下山出戰，後來就被封為財神。利市，指買賣所得利潤，所以在四方財神中，北路財神利市仙官是最受商人歡迎的。古時候每到新年，都會利市仙官貼在門上，以節求生意興隆。
""",
        
"""
納珍天尊曹寶，西路財神，也是《封神演義》小說中人。故事中曹寶在與蕭升聯手對抗趙公明失敗後，竟拜趙公明為師繼續修道，但後來卻賭氣下山，參加伐商的戰爭，最後敗於「十絕陣」的「紅水陣」陣亡。曹寶在最後封神榜上，被封為五路財神中的納珍天尊。因為他本身不似蕭升般有「落寶金錢」這件法器，所以他就左手捧珊瑚、右手捧珍珠，喻意吉祥如意。
""",
        
"""
玄壇真君趙公明，名朗，字公明，主要法寶二十四顆定海神珠。傳說中，周武王伐紂時，他因保護商朝而陣亡。也有人稱其為「趙玄壇」，「玄壇」是指道教的齋壇，也有護法之意。但民間相傳趙公明為「武財神」，並以虎為座騎。傳說舊曆正月初五，是玄壇真君下凡視察人間之日，故商家常在此日開始營業，結束春節的假期。元明間的《三教源流搜神大全》說趙公明終南山人氏，秦時避世在山中，虔誠修道。漢朝張道陵天師在鶴鳴山精修時，收他為徒。且讓他騎黑虎，守護丹室。張天師煉丹功成後，分丹給趙公明吃之。趙公明神異多能，變化無窮，能夠驅雷役電，喚雨呼風，保命解災。在《封神演義》中，姜子牙封趙公明為「金龍如意正一龍虎玄壇真君」，統帥「招寶天尊蕭昇」、「納珍天尊曹寶」、「招財使者陳九公」、「利市仙官姚少司」四位神仙專司迎祥納福、商賈買賣。也因為趙公明部下為四名與負責財富的神，其分別是「招寶」、「納珍」、「招財」和「利市」，因而成為中路財神。合稱五路財神，希望祂們可以為信徒帶來東方、南方、西方、北方與中央五個方位的財運。
""",
        
"""
招財使者陳九公，南路財神，本是峨眉山羅浮洞附近人，後拜在趙公明坐下成為弟子，與姚少司是同門師兄弟。《封神榜》中說，趙公明受下山參戰，陳九公也隨師下山，使雙劍在陣前出力不少。後來陸壓道人出山以釘頭七箭書暗算趙公明，陳九公與姚少司為救師傅前往周營搶書，卻被楊戩、哪吒追上，最後陳九公被楊戩殺死，後來封神榜上被封為「招財使者」。
""",
        
"""
招寶天尊蕭升，東路財神，本是《封神演義》小說中的一個人物，與納珍天尊曹寶都是在武夷山修仙的散仙，皆因偶遇趙公明追逐燃燈道人，於是鬥起法來。曹寶、蕭升二位道人用寶劍迎擊，趙公明就用縛龍索想把二人綁起來。蕭升一見此索，笑曰：「來得好！」從豹皮囊取出一個金錢，名曰「落寶金錢」，也祭起空中。只見縛龍索跟着金錢落在地上，曹寶就將縛龍索收了。趙公明又取定海珠祭起於空中，想以瑞彩千團把兩人打下。那知蕭升又用落寶金錢，把定海珠拿下。趙公明於是拿出殺手兵器，以神鞭攻擊。蕭升又想用金錢把神鞭落下，那知神鞭乃兵器，不怕「落寶金錢」！於是一鞭就打中蕭升頂門，蕭升就此身亡！後來封神榜上，就把蕭升封為「招寶天尊」。
"""
        
        ]
    
    
    
    var index = 2
    
    @IBOutlet weak var godsSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var godsImageView: UIImageView!
    
    @IBOutlet weak var godsPageControl: UIPageControl!
    
    @IBOutlet weak var godsStories: UITextView!

    func update() {
        
        godsImageView.image=UIImage(named: godspic[index])
        godsStories.text=stories[index]
        godsSegmentControl.selectedSegmentIndex=index
        godsPageControl.currentPage=index
        

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func selectGod(_ sender: Any) {
        index=godsSegmentControl.selectedSegmentIndex
        update()
    }
    
    
    @IBAction func storypage(_ sender: Any) {
        index=godsPageControl.currentPage
        update()
    }
    
    
    @IBAction func right(_ sender: Any) {
        index = (index + godspic.count + 1) % godspic.count
        update()
    }
    
    
    @IBAction func left(_ sender: Any) {
        index = (index + godspic.count - 1) % godspic.count
        update()
    }
    
    @IBAction func swipeLeft(_ sender: Any) {
    }
    
    
    
    @IBAction func swipeRight(_ sender: Any) {
    }
    
}
    

