---
title: ino
date: 2020-05-31 23:03:17
tags:
---
# CI by GitHub Actions
```
name: Deploy 🚀
uses: peaceiris/actions-gh-pages@v3
with:
    github_token: ${{ secrets.ACCESS_TOKEN }}
    publish_dir: ./public
    publish_branch: master
```
* `publish_dir: ./public`
    * 推送 public/ 的資料
* `publish_branch: master`
    * 推送到 master 分支

# 在別台電腦寫文章
```
// /root/
$ git clone --recurse-submodules <remote_path>
$ cd JzzzLab.github.io/

// /root/JzzzLab.github.io/
$ npm install
```
* `git clone --recurse-submodules git@github.com:JzzzLab/JzzzLab.github.io.git`
    * 在根目錄自動建立同名新資料夾 "JzzzLab.github.io"
    * 下載 source branch 到 JzzzLab.github.io
*  `npm install`
    * 在 JzzzLab.github.io 資料夾內執行
    * 先自動建立新資料夾 "node_modules"
    * 再根據package.json下載 npm 和 hexo 工具到node_modules資料夾
    * `hexo init` 時已隱含執行此命令，但 clone 時 git 忽略 node_modules/ 所以要手動執行此行
* 然後就可以開始寫文章了

# 換主題（theme）

## 新主題來源
* 到 https://github.com/ppoffice/hexo-theme-icarus Fork 一份到自己的 GitHub
    * 未來若想自行修改，則可保留修改到自己 Fork 的倉庫
* https://github.com/JzzzLab/hexo-theme-icarus
    * 子模組會引用此處

## 加入新主題
```
// /root/
$ git submodule add <theme_github_location> <theme_local_location>
```
* `git submodule add git@github.com:JzzzLab/hexo-theme-icarus.git themes/icarus`

## 相對應更新
1. _config.yml
    * theme: landscape
    * ↓改成↓
    * `theme: icarus`

2. main.yml
    * uses: actions/checkout@v2
    * with:
        * `submodules: true`
        * ↑增加↑

3. 安裝提示套件
```
// /root/
$ hexo server --open
$ npm install --save bulma-stylus@0.8.0 hexo-component-inferno@^0.3.0 hexo-renderer-inferno@^0.1.3 inferno@^7.3.3 inferno-create-element@^7.3.3
```
* `hexo server --open`
    * 會跳出錯誤訊息，執行下一行才算成功新增一主題
* `npm install --save`

## 提交
```
// /root/
$ git add -A
$ git commit -m "new: themes/icarus"
$ git push
```