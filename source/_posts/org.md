# 建立
```
hexo init FOLDER
cd FOLDER
hexo g
```
* ```hexo init test```
    * 新增 test 目錄，並 clone hexo 所需檔案至其中
* ```cd test```
* ```hexo g```
    * g = generate
    * 在 test 目錄中建立 public 目錄，即為所求網站

# 啟動（run on server）
```
hexo s
```
* s = server
* 在 localhost 上跑網站

# 開始寫作（Writing）
## 1. 選定佈局（layout）
### 新增文章（post）
```
hexo new "title"
```
* ```hexo new "org"```
    * 在 ```source\_posts``` 目錄中新建 ```org.md```
        * 文章的內文

### 新增草稿（draft）
```
hexo new draft "title"
```
* ```hexo new "ino"```
    * 在 ```source\_drafts``` 目錄中新建 ```ino.md```
    * 不生成文章，不被渲染，但可預覽

### 新增純頁面（page）
```
hexo new page "title"
```
* ```hexo new "phy"```
    * 在 ```source\``` 目錄中新建 ```phy.md```
    * ??

## 2. 建立並啟動
```
hexo g
hexo s
```
* ```hexo g```
    * 建立網頁
* ```hexo s```
    * run at server
    
# 資源（~ Android res）
## 布局模板（scaffolds）
* 使用 Nunjucks 腳本語言
    * https://mozilla.github.io/nunjucks/
* 
    | layout |         path         |
    |:------:|:--------------------:|
    |  post  |  ```source\_posts``` |
    |  draft | ```source\_drafts``` |
    |  page  |     ```source\```    |