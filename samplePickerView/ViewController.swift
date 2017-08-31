//
//  ViewController.swift
//  samplePickerView
//
//  Created by Eriko Ichinohe on 2017/08/31.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

//1.プロトコル(手段、特定の部品を操る能力)を追加
class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var myPicker: UIPickerView!
    
    //データを配列で用意する(メンバ変数)
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        var number = 4（ローカル変数）
        
        //5.指示を出しているのはViewControllerだと知らせる設定
        // self :自分自身（ViewControllerのこと)
        // データソース (データを設定するところ)
        myPicker.dataSource = self
        
        // デリゲート（委任する、代理人(店長)）
        myPicker.delegate = self
    }
    
    // 2.ピッカービューの列数を決定する
    // -> Int 意味はInt型でデータを返す（戻り値のデータ型はIntだよ）
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1    // 1列に指定
    }
    
    // 3.ピッカービューの行数を決定する
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //配列の要素の個数と同じ数を設定
        return teaList.count
//        return number
    }
    
    
    // 4.ピッカービューに表示する文字の設定
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // teaList[0] -> ダージリンが表示される
//        return "選択肢\(row)"
        return teaList[row] //String型
        
    }
    
    // (6.) 選択された項目をデバッグエリアに表示
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //選択されてる行番号:row
        print(teaList[row])
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

