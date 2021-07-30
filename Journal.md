# [2021-07-30] `Transform` 的 `transform` 所設定的 Matrix4
1. 它的操作竟然是依矩陣的方式相乘的想法，而非操作的順序來想，所以，
會整個排列相反。小心。 (這是以X(-90)Z(-90)Y(90)來看，最後，再利用透視投影到XY平面上，就可以了。所以，才會將此操作排在第一個。即
``` dart
    ..setEntry(3, 2, 0.001)
```

2. `alignment:` 可以將它視野設定在中心點。Q: 我可以設定到任意點嗎？ 
)


# [2021-07-28] `AbsorbPointer` 可以吸收掉Pointer's events

# [2021-07-27] `LayoutBuilder` 可以得知目前widget所在位置最大可能性，再來決定要如何安排該 Widget

# [2021-07-22] 試了 `Tooltip` 與 `FittedBox`
有興趣的是gradient。
還是會動的用rive?

# [2021-07-20] 試用了 `CustomPaint` 與 `Animation`
1. 請 follow [此文](https://blog.codemagic.io/flutter-custom-painter/)，簡單易懂。
2. 動畫的產生需要
   1. `StatefulWidget` with `TickerProviderStateMixin`，這樣，就可以省掉許多程式碼 for `Tween`
   2. `Tween` 給定了去時間單位化的 時間 -> 數值  的轉換。所以 `Tween<double>` 意思就是轉換後的數值為 double的情形。
   3. 而時間單位則由 `AnimationController` 來決定，而它就像駕駛一般，可以forward, reverse, stop, repeat... 它需要 `Ticker`，所以才說，省麻煩就用上述的寫法。
   4. `controller.drive(tween)` 出來的就是 `Animation` ，藉由 `listener` 與 `statusListener` 可以告知 `StatefulWidget` 有更動與決定是否需要再重新動畫等。
   5. 最後，記得停止`animation` 的 listens，並且 dispose 你的 `controller`。雖然小程式未必會因此而掛掉，但，還是養成好習慣好了。

# [2021-07-14] Getx 化本測試，也試用了 `ClipRRect`
1. 還蠻順利的。不過，記得 `pubspec.yaml` 要宣告 assets
2. 此外，沒有試用 `ClipPath`，但，我累了，今天就到此吧。
3. 多國語中。   

# [2021-07-13] 混用了 `getx`, `InheritedModel`，結果...沒打架 (也與Bloc 相容) 

# [2021-07-09] 試著將 `string_accuracy` 變成 package
1. 透過加上 ~library~ 使它變成 library，這樣，就可以隱藏內部函數等
2. 為了方便以後容易看出誰是 library，所以，乾脆將它寫成一般library 的樣子，
    順便加上一個名叫 [package.md] 的檔案，這樣，我只要用 Ctrl-P 就可以看到哪些目錄有這個檔，就知道它就是一個library
3. 進一步為了不讓主體看起來骯髒，所以，盡量將其 IN 的 function 部分放到外部檔案，這樣，可能會乾淨一些

# [2021-07-08] 試用了 N14_StreamBuilder，如範例的時鐘，可以運作，另外，也試用了animatedContainer
1. `animatedContainer` 裡若有用到 stream 與別人共用 (比方，我與 `StreamBuilder` 共用)，會出現錯誤，修改法是
```dart
_clockStream = stream.asBroadcastStream();
```
這樣，就可以共用了。
2. 之前`string_accuracy`的動畫無法運作是因為我多事給它 `ValueKey` ，它因此認定它是不同的，那當然就不會套用動畫了，所以，還是可以用 `StatelessWidget` 來玩。
# [2021-07-08] 已經寫出簡易的string_accuracy實例了，也跑得正常，
不過，
a. 沒有優化
b. 無法動畫轉變，看起來是BloC會重新渲染造成，如 [此篇](https://github.com/felangel/bloc/issues/528)所述，明天將其改成Stateful 來玩看看吧。

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