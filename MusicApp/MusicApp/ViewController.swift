//
//  ViewController.swift
//  MusicApp
//
//  Created by Fawaz Alzamel on 28/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        let albumCoverImageView = UIImageView()
        let songNameLabel = UILabel()
        let artistLabel = UILabel()
        let slider = UISlider()
        let startTimeLabel = UILabel()
        let remainingTimeLabel = UILabel()
        let nextButton = UIButton()
        let playButton = UIButton()
        let previousButton = UIButton()

        override func viewDidLoad() {
            super.viewDidLoad()
            setupUI()
            setupConstraints()
        }

        func setupUI() {
           
            backgroundPicture()
            setupAlbumImageView()
            setupLabels()
            setupProgressBar()
            setupControlButtons()
        }

        func backgroundPicture() {
            view.addSubview(backgroundImageView)
            backgroundImageView.contentMode = .scaleAspectFill
            backgroundImageView.image = UIImage(named: "GOTbackground")
            
            backgroundImageView.addSubview(blurEffectView)
            blurEffectView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
        }

        func setupAlbumImageView() {
            view.addSubview(albumCoverImageView)
            albumCoverImageView.contentMode = .scaleAspectFill
            albumCoverImageView.image = UIImage(named: "throne")
        }

        func setupLabels() {
            view.addSubview(songNameLabel)
            songNameLabel.text = "Game of thrones theme song"
            songNameLabel.textAlignment = .center
            songNameLabel.font = UIFont.boldSystemFont(ofSize: 24)

            view.addSubview(artistLabel)
            artistLabel.text = "Ramin Djawadi"
            artistLabel.textAlignment = .center
            artistLabel.font = UIFont.systemFont(ofSize: 18)
        }

        func setupProgressBar() {
            view.addSubview(slider)
            slider.snp.makeConstraints { make in
                make.top.equalTo(artistLabel.snp.bottom).offset(20)
                make.left.right.equalToSuperview().inset(20)
            }

            view.addSubview(startTimeLabel)
            startTimeLabel.text = "0:00"

            view.addSubview(remainingTimeLabel)
            remainingTimeLabel.text = "-1:45"
        }

        func setupControlButtons() {
            view.addSubview(nextButton)
            nextButton.setImage(UIImage(systemName: "forward.circle"), for: .normal)
            
            view.addSubview(playButton)
                        playButton.setImage(UIImage(systemName: "play.rectangle"), for: .normal)
            
            view.addSubview(previousButton)
            previousButton.setImage(UIImage(systemName: "backward.circle"), for: .normal)
        }

        func setupConstraints() {
            backgroundImageView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }

            albumCoverImageView.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview().offset(-100)
                make.width.equalToSuperview().multipliedBy(0.5)
                make.height.equalTo(albumCoverImageView.snp.width)
            }

            songNameLabel.snp.makeConstraints { make in
                make.top.equalTo(albumCoverImageView.snp.bottom).offset(30)
                make.centerX.equalToSuperview()
                make.left.right.equalToSuperview().inset(20)
            }

            artistLabel.snp.makeConstraints { make in
                make.top.equalTo(songNameLabel.snp.bottom).offset(30)
                make.centerX.equalToSuperview()
                make.left.right.equalToSuperview().inset(20)
            }

            slider.snp.makeConstraints { make in
                make.top.equalTo(artistLabel.snp.bottom).offset(20)
                make.left.right.equalToSuperview().inset(20)
            }

            startTimeLabel.snp.makeConstraints { make in
                make.top.equalTo(slider.snp.bottom).offset(10)
                make.left.equalTo(slider.snp.left)
            }

            remainingTimeLabel.snp.makeConstraints { make in
                make.top.equalTo(slider.snp.bottom).offset(10)
                make.right.equalTo(slider.snp.right)
            }

            playButton.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(startTimeLabel.snp.bottom).offset(30)
            }

            nextButton.snp.makeConstraints { make in
                make.centerY.equalTo(playButton.snp.centerY)
                make.left.equalTo(playButton.snp.right).offset(40)
            }

            previousButton.snp.makeConstraints { make in
                make.centerY.equalTo(playButton.snp.centerY)
                make.right.equalTo(playButton.snp.left).offset(-40)
            }
        }
    }
