# [2021-07-06] 完成 route 的動作
在使用VSCode 與 Android Studio 上出現(至少)Debug mode 下會有不同的行為的問題。
1. 原本我在VSCode 下能無錯誤地執行，但自從我引入 `testWidget` 後，它編譯後在Chrome上的執行就變得怪怪的。
2. Route 行為好像無法直接使用 `await tester.pump(duration)` 來解決，這使我後來難以無錯誤地編譯成功且執行。就算讓 Chrome 刪除整個cache也無大用。
3. 在VSCode 上，`page_retriever_cubit` 的 `stream.listener` 每次 `emit` 會被觸發三次，設法讓其中兩次不產生通知 `notifyListeners` 還會出錯。然而，在 Android Studio 上跑卻只觸發一次，一切正常。搞不清楚問題出在哪。

# [2021-07-02] 完成測試 my_page 與 pages_retriever_cubit
這兩個的創造是為了router 的，試跑看看。

由於 Navigator 2.0 的 router 感覺上很像是用 Provider 的概念，顯然與 flutter-bloc 有些相衝突，所以，現在試著讓 router 來觸發 state，而cubit 則用來通知改變出現。