.class public Lcom/mdotm/android/view/MdotMActivity;
.super Landroid/app/Activity;
.source "MdotMActivity.java"

# interfaces
.implements Lcom/mdotm/android/listener/MdotMAdActionListener;


# instance fields
.field private adClicked:Z

.field private adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

.field private clickWebView:Landroid/webkit/WebView;

.field private closeButton:Landroid/widget/RelativeLayout;

.field didDismissCalled:Z

.field handler:Landroid/os/Handler;

.field private imageView:Lcom/mdotm/android/view/InterstitialImageView;

.field private interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

.field private interstitialListenerId:J

.field private mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

.field private resourceIs:I

.field private style:I

.field videoAdSelectionInProgress:Z

.field private webView:Lcom/mdotm/android/view/HtmlView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    .line 54
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    .line 55
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity;->didDismissCalled:Z

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/view/MdotMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    return v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/view/MdotMActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    return-void
.end method

.method static synthetic access$4(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/model/MdotMAdResponse;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    return-object v0
.end method

.method private getCloseButtonView()Landroid/widget/RelativeLayout;
    .locals 10

    .prologue
    const/16 v9, 0x19

    const/16 v8, 0xb

    const/4 v7, -0x2

    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 371
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 372
    .local v2, closeLayout:Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 375
    .local v3, closeLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 376
    invoke-virtual {v3, v5, v6, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 377
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 378
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 381
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 385
    .local v1, close:Landroid/widget/ImageView;
    const-string v0, "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"

    .line 386
    .local v0, base64ImageString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->StringToBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 388
    invoke-direct {p0, v9}, Lcom/mdotm/android/view/MdotMActivity;->getPixels(I)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/mdotm/android/view/MdotMActivity;->getPixels(I)I

    move-result v6

    .line 387
    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 389
    .local v4, paramsClose:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 390
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    new-instance v5, Lcom/mdotm/android/view/MdotMActivity$3;

    invoke-direct {v5, p0}, Lcom/mdotm/android/view/MdotMActivity$3;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 404
    return-object v2
.end method

.method private getPixels(I)I
    .locals 4
    .parameter "dip"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 409
    .local v0, scale:F
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scale = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 411
    .local v1, value:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result px = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    return v1
.end method

.method private getVideoLayout()Landroid/widget/RelativeLayout;
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v7, -0x2

    .line 325
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 326
    .local v2, videoLayout:Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    .local v3, videoLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, videoClickLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    .local v1, videoClickLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x3

    const/16 v6, 0xb

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 337
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 339
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 340
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 342
    new-instance v5, Lcom/mdotm/android/view/MdotMActivity$2;

    invoke-direct {v5, p0}, Lcom/mdotm/android/view/MdotMActivity$2;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 357
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 360
    .local v4, videoParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 361
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v5, v4}, Lcom/mdotm/android/view/MdotMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 363
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 364
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 365
    return-object v2
.end method


# virtual methods
.method public StringToBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "encodedString"

    .prologue
    .line 424
    .line 425
    const/4 v3, 0x0

    .line 423
    :try_start_0
    invoke-static {p1, v3}, Lcom/mdotm/android/utils/MdotMBase64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 426
    .local v2, encodeByte:[B
    const/4 v3, 0x0

    .line 427
    array-length v4, v2

    .line 426
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 431
    .end local v2           #encodeByte:[B
    :goto_0
    return-object v0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 431
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adClicked()V
    .locals 2

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    .line 454
    const-string v0, "clicked on ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onClick()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMVideoView;->stopVideo(Landroid/os/Handler;)V

    .line 469
    :cond_1
    return-void
.end method

.method clicked()V
    .locals 2

    .prologue
    .line 523
    const-string v1, "  Selected to clicked  "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 527
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    if-nez v1, :cond_0

    .line 528
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    .line 529
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, clickedUrl:Ljava/lang/String;
    new-instance v1, Lcom/mdotm/android/view/MdotMActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/view/MdotMActivity$4;-><init>(Lcom/mdotm/android/view/MdotMActivity;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMActivity$4;->start()V

    .line 585
    .end local v0           #clickedUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 580
    :cond_0
    const-string v1, "ad selection under progress"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_1
    const-string v1, "selected ads landing url is null"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public leaveApplication()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onLeave()V

    .line 480
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 439
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 63
    const-string v3, "onCreate is called"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "style"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mdotm/android/view/MdotMActivity;->style:I

    .line 78
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    .line 79
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    .line 80
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/mdotm/android/view/MdotMActivity$1;

    invoke-direct {v4, p0}, Lcom/mdotm/android/view/MdotMActivity$1;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 174
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 175
    const-string v4, "response"

    .line 174
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/mdotm/android/model/MdotMAdResponse;

    iput-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 176
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 177
    const-string v4, "InterstitialActionListenerId"

    .line 176
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialListenerId:J

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "listener id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialListenerId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v3

    .line 180
    iget-wide v4, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialListenerId:J

    invoke-virtual {v3, v4, v5}, Lcom/mdotm/android/utils/MdotMUtils;->getInterstitialActionListener(J)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v3

    .line 179
    iput-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    .line 181
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    if-eqz v3, :cond_8

    .line 182
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ScreenOrientation"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 183
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/MdotMActivity;->setRequestedOrientation(I)V

    .line 187
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v3

    iput v3, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    .line 190
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, outerLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    const v3, -0xbbbbbc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 204
    iget v3, p0, Lcom/mdotm/android/view/MdotMActivity;->style:I

    if-ne v6, v3, :cond_1

    .line 205
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_1

    .line 206
    const v3, 0x3f666666

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 208
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resource type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget v3, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    sget v4, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    if-ne v3, v4, :cond_4

    .line 210
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v3

    sget v4, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    if-ne v3, v4, :cond_4

    .line 211
    new-instance v3, Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v4, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v3, p0, v4, p0}, Lcom/mdotm/android/view/InterstitialImageView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V

    iput-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->imageView:Lcom/mdotm/android/view/InterstitialImageView;

    .line 212
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->imageView:Lcom/mdotm/android/view/InterstitialImageView;

    iget-boolean v3, v3, Lcom/mdotm/android/view/InterstitialImageView;->adLoadSuccess:Z

    if-nez v3, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onLoadError()V

    .line 215
    const-string v3, "Failed to load interstitial banner ad"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->setContentView(Landroid/view/View;)V

    .line 276
    .end local v0           #outerLayout:Landroid/widget/RelativeLayout;
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    return-void

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ScreenOrientation"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 185
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/MdotMActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 218
    .restart local v0       #outerLayout:Landroid/widget/RelativeLayout;
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    .line 220
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->imageView:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 222
    const-string v3, "Call report impression imageresource"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v3

    .line 224
    iget-object v4, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v4}, Lcom/mdotm/android/model/MdotMAdResponse;->getImp_pixel()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {v3, v4, p0}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 229
    :cond_4
    iget v3, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    sget v4, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    if-eq v3, v4, :cond_5

    .line 230
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v3

    sget v4, Lcom/mdotm/android/http/MdotMNetworkManager;->gifImageResource:I

    if-eq v3, v4, :cond_5

    .line 231
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v3

    sget v4, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 232
    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v3

    sget v4, Lcom/mdotm/android/utils/MdotMUtils;->AD_ICON_WITH_TEXT_MESSAGE:I

    if-ne v3, v4, :cond_6

    .line 233
    :cond_5
    const-string v3, "loading html page"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v3, Lcom/mdotm/android/view/HtmlView;

    iget-object v4, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    iget v5, p0, Lcom/mdotm/android/view/MdotMActivity;->style:I

    invoke-direct {v3, p0, v4, p0, v5}, Lcom/mdotm/android/view/HtmlView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;I)V

    iput-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/HtmlView;

    .line 235
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/HtmlView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 236
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    .line 237
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 243
    :cond_6
    iget v3, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    sget v4, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    if-ne v3, v4, :cond_7

    .line 245
    new-instance v3, Lcom/mdotm/android/view/MdotMVideoView;

    iget-object v4, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v3, p0, v4, p0}, Lcom/mdotm/android/view/MdotMVideoView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V

    iput-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    .line 246
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getVideoLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 247
    .local v2, videoLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 254
    .end local v2           #videoLayout:Landroid/widget/RelativeLayout;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This format is not supported "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v4}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    goto/16 :goto_1

    .line 268
    .end local v0           #outerLayout:Landroid/widget/RelativeLayout;
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    const-string v3, "Ad response is null"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 315
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 316
    iget-wide v1, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialListenerId:J

    .line 315
    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/utils/MdotMUtils;->removeInterstitialActionListener(J)V

    .line 318
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMVideoView;->stopVideo(Landroid/os/Handler;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onDismissScreen()V
    .locals 1

    .prologue
    .line 484
    const-string v0, "onDismiss is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->didDismissCalled:Z

    .line 490
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onDismiss()V

    .line 497
    :goto_0
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->finish()V

    .line 498
    return-void

    .line 495
    :cond_0
    const-string v0, "InterstitialActionListener is null. So ignoring the interstitial dismiss callback"

    .line 494
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key down "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 448
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLoadError()V
    .locals 1

    .prologue
    .line 589
    const-string v0, "Error while loading the ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 596
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 301
    const-string v0, "onPause is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 303
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMVideoView;->PauseVideo()V

    .line 306
    :cond_0
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->didDismissCalled:Z

    if-nez v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 309
    :cond_1
    return-void
.end method

.method public onPlayError()V
    .locals 1

    .prologue
    .line 502
    const-string v0, "Error while palying video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onFailed()V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 512
    return-void
.end method

.method public onPlayStop()V
    .locals 1

    .prologue
    .line 516
    const-string v0, "completed palying video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 281
    const-string v0, "onResume is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    .line 294
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 296
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMVideoView;->isReadyToPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMVideoView;->playVideo()V

    goto :goto_0
.end method
