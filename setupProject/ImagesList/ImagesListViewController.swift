//
//  ViewController.swift
//  setupProject
//
//  Created by Yanye Velikanova on 12/20/24.
//

import UIKit


final class ImagesListViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        
        tableView.register(
            ImagesListCell.self,
            forCellReuseIdentifier: ImagesListCell.reuseIdentifier
        )
        tableView.rowHeight = 200
        
        super.viewDidLoad()
    }
}

extension ImagesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ImagesListCell.reuseIdentifier, for: indexPath)

        guard let imageListCell = cell as? ImagesListCell else {
            return UITableViewCell()
        }

        configCell(for: imageListCell)

        return imageListCell
    }
}

extension ImagesListViewController {
    func configCell(for cell: ImagesListCell) { }
}

extension ImagesListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {}
}
