.class Lcom/millennialmedia/android/MMWebView;
.super Landroid/webkit/WebView;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;,
        Lcom/millennialmedia/android/MMWebView$BannerGestureListener;,
        Lcom/millennialmedia/android/MMWebView$WebTouchListener;
    }
.end annotation


# static fields
.field static final JS_INTERFACE_NAME:Ljava/lang/String; = "interface"

.field static final PROPERTY_BANNER_TYPE:Ljava/lang/String; = "PROPERTY_BANNER_TYPE"

.field static final PROPERTY_EXPANDING:Ljava/lang/String; = "PROPERTY_EXPANDING"

.field static final PROPERTY_STATE:Ljava/lang/String; = "PROPERTY_STATE"

.field private static final TAG:Ljava/lang/String; = "MMWebView"


# instance fields
.field private _lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

.field creatorAdImplId:J

.field currentColor:I

.field currentUrl:Ljava/lang/String;

.field hadFirstRecordingCreation:Z

.field hadFirstSpeechKitCreation:Z

.field volatile isExpanding:Z

.field isSendingSize:Z

.field volatile isUserClosedResize:Z

.field volatile isVisible:Z

.field volatile mraidState:Ljava/lang/String;

.field oldHeight:I

.field oldWidth:I

.field volatile requiresPreAdSizeFix:Z

.field final tapDetector:Landroid/view/GestureDetector;

.field final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "internalId"

    .prologue
    const/16 v1, -0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v7, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 554
    iput v1, p0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    .line 555
    iput v1, p0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    .line 902
    iput-boolean v6, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    .line 1064
    iput-boolean v6, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    .line 1078
    iput-boolean v6, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    .line 74
    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMWebView;->setWillNotDraw(Z)V

    .line 75
    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 76
    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 77
    new-instance v1, Lcom/millennialmedia/android/MMWebView$WebTouchListener;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMWebView$WebTouchListener;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    const-string v1, "loading"

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 79
    iput-wide p2, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    .line 80
    const-string v1, "MMWebView"

    const-string v2, "Assigning WebView internal id: %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-wide/16 v1, 0x3ad7

    iget-wide v3, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->setId(I)V

    .line 86
    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-boolean v1, v1, Lcom/millennialmedia/android/HandShake;->hardwareAccelerationEnabled:Z

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->enableHardwareAcceleration()V

    .line 90
    :goto_0
    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMWebView;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 91
    new-instance v1, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 92
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 93
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->userAgent:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 96
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 98
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 101
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 103
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    .line 105
    return-void

    .line 89
    .end local v0           #webSettings:Landroid/webkit/WebSettings;
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->disableAllAcceleration()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMWebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->hasDefaultResizeParams()Z

    move-result v0

    return v0
.end method

.method private hasDefaultResizeParams()Z
    .locals 2

    .prologue
    const/16 v1, -0x32

    .line 507
    iget v0, p0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInterstitial()Z
    .locals 1

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getBanner()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needsSamsungJBOpenGlFixNoAcceleration()Z
    .locals 3

    .prologue
    .line 219
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, version:I
    const-string v1, "Nexus S"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "samsung"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 223
    :cond_0
    const/4 v1, 0x1

    .line 225
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method allowMicrophoneCreationCommands()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1085
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    if-eqz v1, :cond_1

    .line 1086
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->allowRecordingCommands()Z

    move-result v0

    .line 1089
    :cond_0
    :goto_0
    return v0

    .line 1088
    :cond_1
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    .line 1089
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->isInterstitial()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method allowRecordingCommands()Z
    .locals 1

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method allowSpeechCreationCommands()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1071
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    if-eqz v1, :cond_1

    .line 1072
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->allowRecordingCommands()Z

    move-result v0

    .line 1075
    :cond_0
    :goto_0
    return v0

    .line 1074
    :cond_1
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    .line 1075
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->isInterstitial()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 2
    .parameter "adImpl"

    .prologue
    .line 394
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/millennialmedia/android/MMWebView$3;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMWebView$3;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 415
    .local v0, future:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 417
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v1

    goto :goto_0

    .line 419
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method canScroll()Z
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    return v0
.end method

.method disableAllAcceleration()V
    .locals 7

    .prologue
    .line 203
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 205
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v2, "MMWebView"

    const-string v3, "Remove allAcceleration"

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MMWebView"

    const-string v3, "Problem calling setLayerType"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method enableHardwareAcceleration()V
    .locals 6

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->needsSamsungJBOpenGlFixNoAcceleration()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 249
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "MMWebView"

    const-string v2, "Enabled hardwareAcceleration"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method enableSendingSize()V
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 1105
    return-void
.end method

.method enableSoftwareAcceleration()V
    .locals 6

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->needsSamsungJBOpenGlFixNoAcceleration()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 234
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "MMWebView"

    const-string v2, "Enable softwareAcceleration"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method declared-synchronized getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 582
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 583
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 584
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v2, :cond_0

    .line 585
    check-cast v0, Lcom/millennialmedia/android/MMActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->acid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->acid:Ljava/lang/String;

    .line 1061
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DEFAULT_AD_ID"

    goto :goto_0
.end method

.method declared-synchronized getAdViewOverlayView()Lcom/millennialmedia/android/AdViewOverlayView;
    .locals 2

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 623
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v1, :cond_0

    .line 624
    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 622
    .end local v0           #parent:Landroid/view/ViewParent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getBanner()Lcom/millennialmedia/android/MMAdView;
    .locals 2

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 632
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v1, :cond_0

    .line 633
    check-cast v0, Lcom/millennialmedia/android/MMAdView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 631
    .end local v0           #parent:Landroid/view/ViewParent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getLastHeaders()Lcom/millennialmedia/android/HttpMMHeaders;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    return-object v0
.end method

.method getMMAdView()Lcom/millennialmedia/android/MMAdView;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 568
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMMLayout()Lcom/millennialmedia/android/MMLayout;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 575
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method isCurrentParent(J)Z
    .locals 7
    .parameter "internalId"

    .prologue
    const/4 v2, 0x0

    .line 1014
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1015
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_0

    .line 1019
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_0
    return v2

    .line 1017
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const-string v3, "MMWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Id check for parent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " versus "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v1, v0

    check-cast v1, Lcom/millennialmedia/android/MMLayout;

    iget-object v1, v1, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v5, v1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, v0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v3, v1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    cmp-long v1, p1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method isMraidResized()Z
    .locals 2

    .prologue
    .line 1032
    const-string v0, "resized"

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isOriginalUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isParentBannerAd()Z
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 441
    .local v0, viewGroup:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    .line 443
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    .line 336
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 597
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    .line 599
    :cond_1
    const-string v0, "MMWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl @@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    goto :goto_0

    .line 607
    :cond_2
    new-instance v0, Lcom/millennialmedia/android/MMWebView$6;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMWebView$6;-><init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x1

    .line 168
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 170
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 171
    .local v0, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 173
    .local v3, widthSize:I
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getMeasuredHeight()I

    move-result v1

    .line 174
    .local v1, measuredHeight:I
    if-nez v1, :cond_0

    .line 175
    move v1, v0

    .line 176
    :cond_0
    move v2, v3

    .line 180
    .local v2, measuredWidth:I
    iget-boolean v4, p0, Lcom/millennialmedia/android/MMWebView;->requiresPreAdSizeFix:Z

    if-eqz v4, :cond_1

    .line 181
    invoke-virtual {p0, v5, v5}, Lcom/millennialmedia/android/MMWebView;->setMeasuredDimension(II)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/millennialmedia/android/MMWebView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPauseWebView()V
    .locals 5

    .prologue
    .line 642
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 644
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "onPause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 645
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v1           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MMWebView"

    const-string v3, "No onPause()"

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResumeWebView()V
    .locals 6

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isParentBannerAd()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 665
    .local v0, adActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 672
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 676
    .end local v0           #adActivity:Landroid/app/Activity;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 678
    :try_start_0
    const-class v3, Landroid/webkit/WebView;

    const-string v4, "onResume"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 679
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v2           #m:Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v1

    .line 681
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MMWebView"

    const-string v4, "No onResume()"

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 963
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 964
    .local v3, location:[I
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMWebView;->getLocationInWindow([I)V

    .line 966
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/MMSDK;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 967
    .local v4, metrics:Landroid/util/DisplayMetrics;
    if-eqz v4, :cond_1

    .line 968
    const/4 v8, 0x0

    aget v8, v3, v8

    int-to-float v8, v8

    iget v9, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v6, v8

    .line 969
    .local v6, xLoc:I
    const/4 v8, 0x1

    aget v8, v3, v8

    int-to-float v8, v8

    iget v9, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v7, v8

    .line 970
    .local v7, yLoc:I
    int-to-float v8, p1

    iget v9, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v5, v8

    .line 971
    .local v5, width:I
    int-to-float v8, p2

    iget v9, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v2, v8

    .line 972
    .local v2, height:I
    new-instance v0, Lcom/millennialmedia/android/DTOAdViewLayout;

    invoke-direct {v0, v6, v7, v5, v2}, Lcom/millennialmedia/android/DTOAdViewLayout;-><init>(IIII)V

    .line 975
    .local v0, dtoLayout:Lcom/millennialmedia/android/DTOAdViewLayout;
    new-instance v8, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v8}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, gsonAdSize:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    if-eqz v8, :cond_2

    .line 977
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "javascript:MMJS.sdk.setAdSize("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ");"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 978
    const-string v8, "MMWebView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@@ SENDING IT!!!@@@@@  adSize ! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 988
    :cond_0
    new-instance v8, Lcom/millennialmedia/android/MMWebView$7;

    invoke-direct {v8, p0}, Lcom/millennialmedia/android/MMWebView$7;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    const-wide/16 v9, 0x320

    invoke-static {v8, v9, v10}, Lcom/millennialmedia/android/MMSDK;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 1002
    .end local v0           #dtoLayout:Lcom/millennialmedia/android/DTOAdViewLayout;
    .end local v1           #gsonAdSize:Ljava/lang/String;
    .end local v2           #height:I
    .end local v5           #width:I
    .end local v6           #xLoc:I
    .end local v7           #yLoc:I
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 1003
    return-void

    .line 999
    .restart local v0       #dtoLayout:Lcom/millennialmedia/android/DTOAdViewLayout;
    .restart local v1       #gsonAdSize:Ljava/lang/String;
    .restart local v2       #height:I
    .restart local v5       #width:I
    .restart local v6       #xLoc:I
    .restart local v7       #yLoc:I
    :cond_2
    const-string v8, "MMWebView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@@ Not sending adSize ! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->requestFocus()Z

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 266
    const-string v0, "MMWebView"

    const-string v1, "Ad clicked: action=%d x=%f y=%f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method removeFromParent()V
    .locals 2

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1026
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1028
    :cond_0
    return-void
.end method

.method resetSpeechKit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 387
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->releaseSpeechKit()Z

    .line 388
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    .line 389
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    .line 390
    return-void
.end method

.method setAdProperties(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "adProperties"

    .prologue
    .line 954
    if-eqz p1, :cond_0

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.setAdProperties("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 958
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 193
    iput p1, p0, Lcom/millennialmedia/android/MMWebView;->currentColor:I

    .line 194
    if-nez p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->enableSoftwareAcceleration()V

    .line 197
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 198
    return-void
.end method

.method setLastHeaders(Lcom/millennialmedia/android/HttpMMHeaders;)V
    .locals 0
    .parameter "lastHeaders"

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    .line 1049
    return-void
.end method

.method setMediaPlaybackRequiresUserGesture(Z)V
    .locals 7
    .parameter "requiresGesture"

    .prologue
    .line 157
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "setMediaPlaybackRequiresUserGesture"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 159
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MMWebView"

    const-string v3, "Can\'t call setMediaPlaybackRequiresUserGesture: "

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method setMraidDefault()V
    .locals 1

    .prologue
    .line 891
    const-string v0, "javascript:MMJS.sdk.setState(\'default\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 892
    const-string v0, "default"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 894
    return-void
.end method

.method setMraidExpanded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 937
    const-string v0, "javascript:MMJS.sdk.setState(\'expanded\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 938
    const-string v0, "expanded"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 939
    iput-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    .line 940
    iput-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 942
    return-void
.end method

.method setMraidHidden()V
    .locals 1

    .prologue
    .line 898
    const-string v0, "javascript:MMJS.sdk.setState(\'hidden\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 899
    const-string v0, "hidden"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 900
    return-void
.end method

.method setMraidPlacementTypeInline()V
    .locals 1

    .prologue
    .line 886
    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'inline\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 887
    return-void
.end method

.method setMraidPlacementTypeInterstitial()V
    .locals 1

    .prologue
    .line 881
    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'interstitial\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method setMraidReady()V
    .locals 1

    .prologue
    .line 949
    const-string v0, "javascript:MMJS.sdk.ready();"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method declared-synchronized setMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 4
    .parameter "resizeParams"

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getMMAdView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    .line 455
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isUserClosedResize:Z

    .line 456
    const-string v1, "MMWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New DTOResizeParameters = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    if-eqz v0, :cond_0

    .line 459
    new-instance v1, Lcom/millennialmedia/android/MMWebView$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/android/MMWebView$4;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .end local v0           #adView:Lcom/millennialmedia/android/MMAdView;
    :cond_0
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setMraidViewableHidden()V
    .locals 1

    .prologue
    .line 910
    const-string v0, "javascript:MMJS.sdk.setViewable(false)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    .line 912
    return-void
.end method

.method setMraidViewableVisible()V
    .locals 1

    .prologue
    .line 920
    const-string v0, "javascript:MMJS.sdk.setViewable(true)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    .line 922
    return-void
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .parameter "webContent"
    .parameter "baseUrl"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 343
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, finalBaseUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->resetSpeechKit()V

    .line 349
    move-object v0, p1

    .line 351
    .local v0, content:Ljava/lang/String;
    invoke-static {p3}, Lcom/millennialmedia/android/MRaid;->hasMraidLocally(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    invoke-static {p3, v0}, Lcom/millennialmedia/android/MRaid;->injectMraidJs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_1
    move-object v2, v0

    .line 358
    .local v2, finalContent:Ljava/lang/String;
    sget v3, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 359
    const-string v3, "MMWebView"

    const-string v4, "Received ad with base url %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v3, "MMWebView"

    invoke-static {v3, p1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_2
    new-instance v3, Lcom/millennialmedia/android/MMWebView$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/millennialmedia/android/MMWebView$2;-><init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 354
    .end local v2           #finalContent:Ljava/lang/String;
    :cond_3
    const-string v3, "MMWebView"

    const-string v4, "MMJS is not downloaded"

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 7
    .parameter "webContent"
    .parameter "adUrl"
    .parameter "adImpl"

    .prologue
    const/4 v6, 0x0

    .line 276
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 279
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->resetSpeechKit()V

    .line 280
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, baseUrl:Ljava/lang/String;
    sget v3, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 283
    const-string v3, "MMWebView"

    const-string v4, "Received ad with base url %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v3, "MMWebView"

    invoke-static {v3, p1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_2
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->isTransitionAnimated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/MMWebView;->animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 292
    :cond_3
    iget-boolean v3, p3, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    if-eqz v3, :cond_4

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, content:Ljava/lang/String;
    :goto_1
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MRaid;->hasMraidLocally(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 300
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/millennialmedia/android/MRaid;->injectMraidJs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    :goto_2
    move-object v2, v1

    .line 307
    .local v2, finalContent:Ljava/lang/String;
    new-instance v3, Lcom/millennialmedia/android/MMWebView$1;

    invoke-direct {v3, p0, p3, v0, v2}, Lcom/millennialmedia/android/MMWebView$1;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 296
    .end local v1           #content:Ljava/lang/String;
    .end local v2           #finalContent:Ljava/lang/String;
    :cond_4
    move-object v1, p1

    .restart local v1       #content:Ljava/lang/String;
    goto :goto_1

    .line 302
    :cond_5
    const-string v3, "MMWebView"

    const-string v4, "MMJS is not downloaded"

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method setmicrophoneAudioLevelChange(D)V
    .locals 2
    .parameter "level"

    .prologue
    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.microphoneAudioLevelChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 928
    return-void
.end method

.method setmicrophoneStateChange(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.microphoneStateChange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMWebView originally from("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") MRaidState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .parameter "adImpl"

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v1

    .line 518
    .local v1, ad:Lcom/millennialmedia/android/MMAd;
    instance-of v3, v1, Lcom/millennialmedia/android/MMAdView;

    if-eqz v3, :cond_0

    .line 519
    move-object v0, v1

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    move-object v2, v0

    .line 520
    .local v2, adView:Lcom/millennialmedia/android/MMAdView;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/millennialmedia/android/MMWebView;->isUserClosedResize:Z

    .line 521
    new-instance v3, Lcom/millennialmedia/android/MMWebView$5;

    invoke-direct {v3, p0, v2}, Lcom/millennialmedia/android/MMWebView$5;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    .end local v1           #ad:Lcom/millennialmedia/android/MMAd;
    .end local v2           #adView:Lcom/millennialmedia/android/MMAdView;
    :cond_0
    monitor-exit p0

    return-void

    .line 515
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method updateArgumentsWithSettings(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PROPERTY_BANNER_TYPE"

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isParentBannerAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v0, "PROPERTY_STATE"

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v0, "PROPERTY_EXPANDING"

    iget-wide v1, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    return-void

    .line 430
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
