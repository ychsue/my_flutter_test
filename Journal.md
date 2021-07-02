# [2021-07-02] 完成測試 my_page 與 pages_retriever_cubit
這兩個的創造是為了router 的，試跑看看。

由於 Navigator 2.0 的 router 感覺上很像是用 Provider 的概念，顯然與 flutter-bloc 有些相衝突，所以，現在試著讓 router 來觸發 state，而cubit 則用來通知改變出現。