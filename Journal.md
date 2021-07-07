# [2021-07-07] 寫了 string_accuracy 的 cubit 與 test ，順便放上 Flutter Widget of the Week 的例子
1. 已經寫了 string_accuracy 的邏輯部分，正在想如何實現在UI上，已經用 //TODO 標示，這樣，在 PROBLEMS 裡就會看到它了。
2. 試用了 [Flutter Widget of the Week](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG) 的 第十三個示範： `FadeInImage`，嗯，有必要用到。

# [2021-07-06] 試玩 SliverAppBar, SliverList 與 SliverGrid，而 檢查文字精確度的部分還在寫
1. 寫了檢查文字精確度的 data部分大致發想完成，接著就是cubit要負起它邏輯判斷的部分。
2. 試玩了 `CustomScrollView`，還蠻好玩的，寫了，但還沒變自己的想法。
取自： [此網站](https://medium.com/flutter/slivers-demystified-6ff68ab0296f)

# [2021-07-06] 完成 route 的動作
在使用VSCode 與 Android Studio 上出現(至少)Debug mode 下會有不同的行為的問題。
1. 原本我在VSCode 下能無錯誤地執行，但自從我引入 `testWidget` 後，它編譯後在Chrome上的執行就變得怪怪的。
2. Route 行為好像無法直接使用 `await tester.pump(duration)` 來解決，這使我後來難以無錯誤地編譯成功且執行。就算讓 Chrome 刪除整個cache也無大用。
3. 在VSCode 上，`page_retriever_cubit` 的 `stream.listener` 每次 `emit` 會被觸發三次，設法讓其中兩次不產生通知 `notifyListeners` 還會出錯。然而，在 Android Studio 上跑卻只觸發一次，一切正常。搞不清楚問題出在哪。

# [2021-07-02] 完成測試 my_page 與 pages_retriever_cubit
這兩個的創造是為了router 的，試跑看看。

由於 Navigator 2.0 的 router 感覺上很像是用 Provider 的概念，顯然與 flutter-bloc 有些相衝突，所以，現在試著讓 router 來觸發 state，而cubit 則用來通知改變出現。