# [2022-04-06] Trying `SafeArea`

# [2022-03-22] Add a search bar for home page

# [2022-03-15] `FloatingActionButton`
試用了它在 `Scaffold` 中用的 floatingActionButtonLocation 來設定其位置

# [2022-02-17] `animations_pkg`, `Baseline`, `GetIt package`
`GetIt` 與 `GetX` 有點像，但精簡許多，易用。

# [2022-02-15] `slidable` package 很好用，我會用到。

# [2022-02-15] `RotatedBox` 
只能90度旋轉，不過，會重新計算Size。

# [2022-02-11] `ExpansionPanel`
`ExpansionPanelList` 一定得在無限高的 widget 裡，如`SingleChildScrollView`
範例請見[此文](https://www.woolha.com/tutorials/flutter-using-expansionpanellist-widget-examples)。

# [2022-02-10] `connectivity_plus` 與 `Scrollbar`
IMPORTANT:  `Scrollbar` 若沒有與 `ListView` 共用 controller 時會反應

*The Scrollbar's ScrollController has no ScrollPosition attached.*

# [2022-01-21] 放到GitHub 上，且能自動部署
1. [放到github上的教學](https://powerupwebdev.medium.com/deploy-your-projects-on-github-using-visual-studio-code-and-git-5f7221b272ca)
2. [此篇](https://zonble.medium.com/use-github-pages-to-host-your-flutter-web-app-as-an-example-of-your-flutter-package-cb7b5b726eb1) 講到如何利用 `workflow.yml` 檔案來自動布置所要的 `GitHub Pages`

# [2022-01-20] `sensors_plus_pkg`, `MouseRegion` & `AnimatedTextKit`
嗯，有用，尤其 `AnimatedTextKit` 很快就可以用到。
# [2022-01-13] `package:html` 與 `HeroMode`
看來，`Hero`要怎麼飛還得學習，不過，確定可以利用
`Get.to()` 與 `Get.back()` 來簡易達成。 

# [2022-01-11] `Flow`, `Font_Awesome package` 與 `RefreshIndicator`
而RefreshIndicator 用在 Web 上時，得自己設定 scrollController
有人建議若要能夠由bottom觸發更新的話（它只能由 top 觸發），那麼，請使用 `ScrollController` 來監測與自己寫吧。

# [2022-01-04] `TabPageSelector`
嗯，還好。

# [2021-12-30] `Theme`
原來，`Theme` 也像 `GetX`，或說 `Provider` 那樣是一層一層的往下傳遞Data。

# [2021-12-29] `CachedNetworkImage` 可以用在 Web 上

# [2021-12-28] 試了 `path_provider`（給非Web來取得常用目錄）和 `freezed` (自動產生toString等方法的 boilplate 產生器) 兩個 packages 還有 `GestureDetector` (用來取得各樣的觸控)

# [2021-12-21] 歐，好多，已經到n84 `url_launcher` package 了

# [2021-12-02] `CupertinoActivityIndicator`
Cupertino version of progress indicator.

# [2021-12-01] `IgnorePointer`
此Widget 可以讓我們忽略包在其下的所有Pointer(手指) 動作

# [2021-11-30] `ProgressIndicator` 與 `Divider`

# [2021-11-23] `Builder` 能確保父項的 widget tree 建構完成後才取其 context

# [2021-11-18] `ShaderMask` and `NotificationListener`
1. 關於 `ImageShader` 的用法，請參見 [此文](https://stackoverflow.com/questions/61966819/how-to-create-imageshader-in-flutter).

2. 關於自定義的 `Notification` 則只要設定初始化時給定的值，到時，`dispatch` 就會將它連同該值推送到 `NotificationListener<MyNotification>` 了。

# [2021-11-16] `ListWheelScrollView` 有趣

# [2021-11-11] `SnackBar`
等一下想試試利用 `ScaffoldMessenger` 來達成。
實驗的結果是可以的。只要將 `Scaffold` 當作 `ScaffoldMessenger` 的 child，再傳入相應的 `key` 即可。

# [2021-11-10] `Drawer`
讓 Drawer 很容易建構到頁面中。

歐，記得使用GlobalKey來調用 Scaffold 的 state
``` dart
_sKey.currentState?.openEndDrawer()
```

# [2021-11-09] `DefaultTabController`, `Tab`, `TabBar` & `TabBarView`
嗯，很好用。

# [2021-11-04] `Image` 
測試 `progress` 但，不曉得如何運作。

# [2021-11-03] `TweenAnimationBuilder` 可以免去使用 controller
不過，小心， `ColorTween` 允許 null 值, 所以要用 <Color?>

# [2021-11-02] `CupertinoActionSheet` 能做出 iOS 的下方彈出列表來。

# [2021-10-28] `ToggleButtons` 很棒，也可搭配 `ToolTip`

# [2021-10-27] `DraggableScrollableSheet` 與 `ColorFiltered`
根據 [此篇FAQ](https://github.com/flutter/flutter/issues/88866)，直到目前為止[2021-10-27]， `ColorFiltered` 在Web上依然
無法正常運作。
它會將 `Scaffold` 整個 `body` 連同它自己都套用，可是，卻讓其他的 widgets 都看不見。
Android 上是正常的。

# [2021-10-21] `AnimatedCrossFade`
用 layoutBuilder 來控制顯現方式(如果不滿意預設的話)

# [2021-10-20] `Slider` 與 `AlertDialog`
也看了 `CupertinoAlertDialog` ，果然是 iOS型的

# [2021-10-16] `DataTable` 的 sort 不會真的排序，排序還是要靠自己。

# [2021-10-13] `Container` & `SelectableText`
`Container` 給內文加添許多有用的變化，而 `SelectableText` 則可以讓文字可選、可複製等。

# [2021-10-05] `FractionallySizedBox`
若將它包在 `Flexible` 裏頭，為其本該有的大小再乘以該值。

# [2021-09-30] `AnimatedOpacity`
試驗結果：`Container` 的 `color` 部分，設定 `padding` 並不會改變其大小，要使用 `margin`才行。

# [2021-09-29] `Stack` 
還是很傷腦筋於Grid 或說 Flex 中有Flex的情形，感覺很碰運氣，不是真懂。
[參考此文](https://stackoverflow.com/questions/49943272/flutter-gridview-in-column-whats-solution)

# [2021-09-28] `ConstrainedBox`
能給予約束條件，嗯，有可能可以透過 controller 來設定 `Column` 等 widgets 的約束，
但，直接binding 到某個 widget 的寬與高，幾乎都會遇到conflict。用async 可以嗎？
依據[此篇](https://stackoverflow.com/questions/61222544/how-to-detect-overflow-in-widgets) 也不好。
裏頭有講到overflow 的解決法。

# [2021-09-24] 怪怪的 `Semantics`，但對於視障者應該很重要
它好像沒作用，但如果在 `MaterialApp` 裡宣告
``` dart
      showSemanticsDebugger: true,
```
就可以作用了，感覺很像windows 在使用 narrator 時的樣子。

# [2021-09-22] `AnimatedPadding` 與 `IndexedStack` 
嗯，可以簡化許多動作。

# [2021-09-17] `AnimatedSwitcher` 與 `AnimatedPositioned`
以後可以使用。

# [2021-09-15] `RichText` 與 `ReorderableListView` 都很好用。
不過， `ReorderableListView` 在 Web 版 不能利用長按來移動。(目前Flutter 2.2.3)。

# [2021-09-09] `Placeholder`
這是用來設定Layout時暫代用的widget，也有可能用在東西還載不下來時使用吧？

# [2021-09-08] `AspectRatio` 與 `LimitedBox`
`AspectRatio` 其父項不可強制要求size，否則無效。
而 `LimitedBox` 則在父項對其子項無界時才會啟用，很多錯誤都得靠它來幫忙了。但，這 `maxWidth` 怎麼定才好呢？

# [2021-09-02] `AnimatedIcon` 
`GridView.count` 只能設 `childAspectRatio`，就這樣。
[如此篇所述](https://stackoverflow.com/questions/48405123/how-to-set-custom-height-for-widget-in-gridview-in-flutter)。

# [2021-09-01] `InheritedWidget` 使用
記得，它的值是 final，所以，每次改值，就是重新build 一個它。
也因此，它下面的子代可以是 `StatelessWidget` 了。

# [2021-08-31] `Spacer` 可以用來自訂Column 與 Row 間的 Space 大小

# [2021-08-26] `MediaQuery` 好玩，
不過，若要監看 widget's size changed，可能要用
[此篇StackOverflow](https://stackoverflow.com/questions/49996166/how-to-listen-for-resize-events-in-a-flutter-animatedsize-widget) 講的辦法。
1. 把要監看對象當作 `SizeChangedLayoutNotifier` 的 child
2. 把整個 `SizeChangedLayoutNotifier` 當作 `NotificationListener` 的 child
3. 再透過它的 `onNotification` callback 來搞定大小。
# [2021-08-25] 試用了 `ResizableWidget` + `Flexible`
好用，但有個缺點：
1. separator 用滑鼠才容易點到，可能需要再加一些東西幫忙容易抓到
2. 它裏頭的 `Flexible` loose 工作得怪怪的？

# [2021-08-24] `AnimatedList` 配合 `Dismissible`
雖然看得出動畫，但是，還搞不大清楚怎麼讓動畫更生動。~~~~~

# [2021-08-19] `Draggable` 很好用，
看來 Obx 與 Builder 盡量不要混用，它已經 handle state 變化了。

# [2021-08-18] `ValueListenableBuilder` 搭配 `animation` 很好用，但是，此例子我遇到了一個問題
此問題就是明明我Route切換過去的頁面有 `Scaffold`，可是由它的 `Body` 引進的 `StatefulWidget` 卻不見該 `Scaffold`?
且如 [此篇所說](https://github.com/flutter/flutter/issues/18399)，Parent 的 constraint 贏過了 `SizedBox` 的？
只好用 `Align` 包起來來解決。
好怪，還不知道原因。

# [2021-08-17] `SizedBox` 雖然好，但`double.infinity`未必能工作

這時，可能要改為 `Flexible` 或 `Expanded`，如 [此篇StackOverflow所說](https://stackoverflow.com/questions/52442724/boxconstraints-forces-an-infinite-width)。

# [2021-08-11] 使用 `Dismissible`
1. 若有宣告`background`，它的 `child`就不能只是 `Text` 了，得是別的物件，如 `ListTile`才行。
2. `onDismissed` 裏頭一定要將該item 給移除掉，不然會報錯。

# [2021-08-10] 使用 `CurveTween` 與 `AnimatedBuilder` ，順便試用了 `InkWell`來給 `Text`加上 onTap 事件
如標題。

# [2021-08-05] 使用 `Positioned` inside `Stack` ，外加 `.obs`
Stack的大小由非 Positioned 的 widget決定？ 嗯，這也合理。
# [2021-08-04] 試玩了 `Align`，`Slider` 與 `.obs`
用 `.obs` 搭配 `Obx` 就可以大致取代 `StatefulWidget` 的 state 了。
當然，不含動畫。

# [2021-08-03] `BackdropFilter` 試用
1. Android 得將assets圖片的 `assets/` 也寫上才可以
2. `BackdropFilter` 得包在 `ClipRect` 才可以改變套用filter的位置與大小

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