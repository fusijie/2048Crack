.class Lcom/inmobi/re/container/IMWebView$f;
.super Landroid/os/Handler;
.source "IMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/IMWebView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2060
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2061
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$f;->a:Ljava/lang/ref/WeakReference;

    .line 2062
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$f;->b:Ljava/lang/ref/WeakReference;

    .line 2063
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$f;->d:Ljava/lang/ref/WeakReference;

    .line 2064
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$f;->e:Ljava/lang/ref/WeakReference;

    .line 2066
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$f;->f:Ljava/lang/ref/WeakReference;

    .line 2068
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$f;->c:Ljava/lang/ref/WeakReference;

    .line 2069
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    .line 2075
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/IMWebView;

    .line 2076
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    .line 2077
    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    .line 2079
    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView$f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    .line 2082
    iget-object v4, p0, Lcom/inmobi/re/container/IMWebView$f;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    .line 2084
    iget-object v5, p0, Lcom/inmobi/re/container/IMWebView$f;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    .line 2086
    if-eqz v0, :cond_0

    .line 2088
    const-string v6, "[InMobi]-[RE]-4.1.1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMWebView->handleMessage: msg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 2091
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2419
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2424
    :goto_1
    return-void

    .line 2093
    :pswitch_1
    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v1, :cond_0

    .line 2094
    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onResizeClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2420
    :catch_0
    move-exception v0

    .line 2421
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Webview Handle Message Exception "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2098
    :pswitch_2
    :try_start_1
    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v1, :cond_0

    .line 2099
    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onExpandClose()V

    goto :goto_0

    .line 2103
    :pswitch_3
    sget-object v1, Lcom/inmobi/re/container/IMWebView$a;->a:[I

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView$ViewState;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_1

    .line 2120
    iget-boolean v1, v0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v1, :cond_1

    .line 2121
    invoke-virtual {v4}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->resetContentsForInterstitials()V

    goto :goto_0

    .line 2107
    :pswitch_4
    invoke-virtual {v3}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->closeResized()V

    goto :goto_0

    .line 2112
    :pswitch_5
    invoke-virtual {v2}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->closeExpanded()V

    .line 2113
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    goto :goto_0

    .line 2124
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->hide()V

    goto :goto_0

    .line 2131
    :pswitch_6
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    .line 2132
    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    goto :goto_0

    .line 2136
    :pswitch_7
    const-string v1, "window.mraidview.fireChangeEvent({ state: \'default\' });"

    .line 2137
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    goto :goto_0

    .line 2145
    :pswitch_8
    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 2146
    invoke-virtual {v3, v6}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->doResize(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2153
    :pswitch_9
    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 2154
    invoke-virtual {v2, v6}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->doExpand(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2159
    :pswitch_a
    :try_start_2
    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->h(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->playAudioImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2161
    :catch_1
    move-exception v0

    .line 2162
    :try_start_3
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Play audio failed "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2170
    :pswitch_b
    :try_start_4
    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->h(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->playVideoImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2172
    :catch_2
    move-exception v0

    .line 2173
    :try_start_5
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Play video failed "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2179
    :pswitch_c
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    const-string v1, "aplayerref"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2181
    if-eqz v0, :cond_0

    .line 2182
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->pause()V

    goto/16 :goto_0

    .line 2188
    :pswitch_d
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    const-string v1, "aplayerref"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2190
    if-eqz v0, :cond_0

    .line 2191
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->mute()V

    goto/16 :goto_0

    .line 2197
    :pswitch_e
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    const-string v1, "aplayerref"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2199
    if-eqz v0, :cond_0

    .line 2200
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->unMute()V

    goto/16 :goto_0

    .line 2206
    :pswitch_f
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    const-string v1, "aplayerref"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2208
    if-eqz v0, :cond_0

    .line 2209
    const-string v1, "vol"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setVolume(I)V

    goto/16 :goto_0

    .line 2215
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2216
    const-string v1, "seekaudio"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->seekPlayer(I)V

    goto/16 :goto_0

    .line 2222
    :pswitch_11
    const-string v1, "pid"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2223
    invoke-virtual {v5, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v1

    .line 2228
    if-nez v1, :cond_2

    .line 2229
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid property ID\", \"pauseVideo\")"

    .line 2252
    :goto_2
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2234
    :cond_2
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v2

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v2, v3, :cond_4

    .line 2235
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v2

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v2, v3, :cond_3

    .line 2236
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2237
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setAutoPlay(Z)V

    goto/16 :goto_0

    .line 2241
    :cond_3
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid player state\", \"pauseVideo\")"

    goto :goto_2

    .line 2248
    :cond_4
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->pause()V

    goto/16 :goto_1

    .line 2256
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2257
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    goto/16 :goto_0

    .line 2262
    :pswitch_13
    const-string v1, "pid"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2263
    invoke-virtual {v5, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v2

    .line 2267
    if-nez v2, :cond_5

    .line 2268
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid property ID\", \"hideVideo\")"

    .line 2299
    :goto_3
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2273
    :cond_5
    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v3

    sget-object v4, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v3, v4, :cond_6

    .line 2274
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid player state\", \"hideVideo\")"

    goto :goto_3

    .line 2280
    :cond_6
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->hide()V

    goto/16 :goto_1

    .line 2303
    :pswitch_14
    const-string v1, "pid"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2304
    invoke-virtual {v5, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v2

    .line 2308
    if-nez v2, :cond_7

    .line 2309
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid property ID\", \"showVideo\")"

    .line 2339
    :goto_4
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2314
    :cond_7
    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v3

    sget-object v4, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v3, v4, :cond_8

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v3

    sget-object v4, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v3, v4, :cond_8

    .line 2316
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid player state\", \"showVideo\")"

    goto :goto_4

    .line 2321
    :cond_8
    iget-object v3, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v3, :cond_9

    iget-object v3, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2325
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Show failed. There is already a video playing\", \"showVideo\")"

    goto :goto_4

    .line 2332
    :cond_9
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    iput-object v2, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2334
    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->show()V

    goto/16 :goto_1

    .line 2343
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2344
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->mute()V

    goto/16 :goto_0

    .line 2349
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2350
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->unMute()V

    goto/16 :goto_0

    .line 2355
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2356
    const-string v1, "seek"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->seekPlayer(I)V

    goto/16 :goto_0

    .line 2361
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2362
    const-string v1, "volume"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setVolume(I)V

    goto/16 :goto_0

    .line 2367
    :pswitch_19
    const-string v1, "message"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2368
    const-string v2, "action"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "window.mraid.broadcastEvent(\'error\',\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\", \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2371
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2374
    :pswitch_1a
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->setCloseButton()V

    goto/16 :goto_0

    .line 2377
    :pswitch_1b
    invoke-virtual {v5}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->hidePlayers()V

    goto/16 :goto_0

    .line 2380
    :pswitch_1c
    const-string v0, "expand_url"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->open(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2383
    :pswitch_1d
    const-string v1, "injectMessage"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2384
    if-eqz v1, :cond_0

    .line 2385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2388
    :pswitch_1e
    invoke-virtual {v4}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->handleOrientationForInterstitial()V

    goto/16 :goto_0

    .line 2392
    :pswitch_1f
    iget-boolean v0, v0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_0

    .line 2397
    invoke-virtual {v3}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->onOrientationChange()V

    goto/16 :goto_0

    .line 2401
    :pswitch_20
    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v1, :cond_0

    .line 2402
    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onDismissAdScreen()V

    goto/16 :goto_0

    .line 2405
    :pswitch_21
    invoke-virtual {v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->getCurrentPosition()V

    goto/16 :goto_0

    .line 2408
    :pswitch_22
    invoke-virtual {v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->getDefaultPosition()V

    goto/16 :goto_0

    .line 2413
    :pswitch_23
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "map"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2414
    iget-object v2, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v2, :cond_0

    .line 2415
    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0, v1}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onUserInteraction(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 2091
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_19
        :pswitch_1a
        :pswitch_c
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_8
        :pswitch_1
        :pswitch_22
        :pswitch_23
    .end packed-switch

    .line 2103
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
