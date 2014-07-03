.class Lcom/mdotm/android/view/InterstitialImageView;
.super Landroid/widget/RelativeLayout;
.source "InterstitialImageView.java"


# static fields
.field private static final HIGHLIGHT_BACKGROUND_COLOR:I = -0x1180d9

.field private static final HIGHLIGHT_COLOR:I = -0x4c00


# instance fields
.field private activityIndicator:Landroid/widget/ProgressBar;

.field private adLandingUrl:Ljava/lang/String;

.field public adLoadSuccess:Z

.field private adSelectedBackground:Landroid/graphics/drawable/Drawable;

.field private adSelectionInProgress:Z

.field private backgroundColor:I

.field private defaultBackground:Landroid/graphics/drawable/Drawable;

.field handler:Landroid/os/Handler;

.field imagrBitmap:Landroid/graphics/Bitmap;

.field private isAdClicked:Z

.field private launchType:I

.field private mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mdotm/android/view/InterstitialImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/high16 v0, -0x100

    iput v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->backgroundColor:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->webView:Landroid/webkit/WebView;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->isAdClicked:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V
    .locals 7
    .parameter "context"
    .parameter "adResponse"
    .parameter "listener"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/high16 v2, -0x100

    iput v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->backgroundColor:I

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->webView:Landroid/webkit/WebView;

    .line 65
    iput-boolean v4, p0, Lcom/mdotm/android/view/InterstitialImageView;->isAdClicked:Z

    .line 108
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->handler:Landroid/os/Handler;

    .line 109
    invoke-virtual {p2}, Lcom/mdotm/android/model/MdotMAdResponse;->getLaunchType()I

    move-result v2

    iput v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->launchType:I

    .line 110
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->webView:Landroid/webkit/WebView;

    .line 111
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 112
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/mdotm/android/view/InterstitialImageView$1;

    invoke-direct {v3, p0}, Lcom/mdotm/android/view/InterstitialImageView$1;-><init>(Lcom/mdotm/android/view/InterstitialImageView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 194
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iput-object p3, p0, Lcom/mdotm/android/view/InterstitialImageView;->mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 200
    invoke-virtual {p0, v5}, Lcom/mdotm/android/view/InterstitialImageView;->setFocusable(Z)V

    .line 202
    invoke-virtual {p0, v5}, Lcom/mdotm/android/view/InterstitialImageView;->setClickable(Z)V

    .line 203
    new-instance v2, Lcom/mdotm/android/view/InterstitialImageView$2;

    invoke-direct {v2, p0}, Lcom/mdotm/android/view/InterstitialImageView$2;-><init>(Lcom/mdotm/android/view/InterstitialImageView;)V

    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/InterstitialImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-direct {p0, v4}, Lcom/mdotm/android/view/InterstitialImageView;->setAdSelectionInProgress(Z)V

    .line 218
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/mdotm/android/view/InterstitialImageView;->initializeAdView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Exception initializing interstitial adview"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-boolean v4, p0, Lcom/mdotm/android/view/InterstitialImageView;->adLoadSuccess:Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/view/InterstitialImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->adNetworkCompleted()V

    return-void
.end method

.method static synthetic access$10(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/view/InterstitialImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->isAdSelectionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/view/InterstitialImageView;)Lcom/mdotm/android/listener/MdotMAdActionListener;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/view/InterstitialImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->isAdClicked:Z

    return v0
.end method

.method static synthetic access$5(Lcom/mdotm/android/view/InterstitialImageView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/mdotm/android/view/InterstitialImageView;->isAdClicked:Z

    return-void
.end method

.method static synthetic access$6(Lcom/mdotm/android/view/InterstitialImageView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/InterstitialImageView;->clicked(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7(Lcom/mdotm/android/view/InterstitialImageView;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    invoke-direct {p0, p1, p2}, Lcom/mdotm/android/view/InterstitialImageView;->fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/mdotm/android/view/InterstitialImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/mdotm/android/view/InterstitialImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->launchType:I

    return v0
.end method

.method private adNetworkCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 600
    const-string v0, "On ad network completed"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->setClickable(Z)V

    .line 602
    invoke-direct {p0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->setAdSelectionInProgress(Z)V

    .line 603
    iput-boolean v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->isAdClicked:Z

    .line 604
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->hideActivityIndicator()V

    .line 605
    return-void
.end method

.method private clicked(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 539
    const-string v1, "  Selected to clicked  "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->adLandingUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->isAdSelectionInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->adLandingUrl:Ljava/lang/String;

    .line 544
    .local v0, clickedUrl:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->setAdSelectionInProgress(Z)V

    .line 545
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->showActivityIndicator()V

    .line 546
    new-instance v1, Lcom/mdotm/android/view/InterstitialImageView$4;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/view/InterstitialImageView$4;-><init>(Lcom/mdotm/android/view/InterstitialImageView;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v1}, Lcom/mdotm/android/view/InterstitialImageView$4;->start()V

    .line 596
    .end local v0           #clickedUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 591
    :cond_0
    const-string v1, "ad selection under progress"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_1
    const-string v1, "selected ad is null"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createAdWithBannerView(Landroid/graphics/Bitmap;Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 8
    .parameter "icon"
    .parameter "adResponse"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x32

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 380
    if-eqz p1, :cond_0

    .line 381
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 382
    .local v0, bannerView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 388
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 391
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 393
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 395
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->addView(Landroid/view/View;)V

    .line 396
    iput-boolean v5, p0, Lcom/mdotm/android/view/InterstitialImageView;->adLoadSuccess:Z

    .line 413
    .end local v0           #bannerView:Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 398
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 400
    .local v1, errorView:Landroid/widget/TextView;
    const-string v3, "Oops! error while downloading Image. Click here to view detail."

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 405
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 407
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setId(I)V

    .line 408
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    const v3, -0x333334

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 410
    invoke-virtual {p0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->addView(Landroid/view/View;)V

    .line 411
    iput-boolean v5, p0, Lcom/mdotm/android/view/InterstitialImageView;->adLoadSuccess:Z

    goto :goto_0
.end method

.method private drawBackgroundView(Z)V
    .locals 2
    .parameter "isDefaultBackground"

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " drawBackgroundView   :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->adSelectedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 345
    const v0, -0x1180d9

    const/16 v1, -0x4c00

    .line 344
    invoke-static {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->populateDrawablwBackGround(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->adSelectedBackground:Landroid/graphics/drawable/Drawable;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->defaultBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 349
    const/high16 v0, -0x100

    .line 350
    iget v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->backgroundColor:I

    .line 349
    invoke-static {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->populateDrawablwBackGround(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 352
    :cond_1
    if-eqz p1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->defaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->adSelectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "imageURL"
    .parameter "useCaches"

    .prologue
    .line 424
    const/4 v3, 0x0

    .line 425
    .local v3, image:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    .line 426
    const/4 v4, 0x0

    .line 430
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 437
    .local v2, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    .line 438
    .local v6, timeoutConnection:I
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 444
    const/16 v7, 0x2710

    .line 446
    .local v7, timeoutSocket:I
    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 448
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 450
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 451
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 452
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 454
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 465
    :cond_0
    if-eqz v4, :cond_1

    .line 467
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 477
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #timeoutConnection:I
    .end local v7           #timeoutSocket:I
    :cond_1
    :goto_0
    return-object v3

    .line 460
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    const/4 v3, 0x0

    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Problem while fetchImage()  :  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    if-eqz v4, :cond_1

    .line 467
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 468
    :catch_1
    move-exception v8

    goto :goto_0

    .line 464
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 465
    if-eqz v4, :cond_2

    .line 467
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 473
    :cond_2
    :goto_1
    throw v8

    .line 475
    .end local v4           #is:Ljava/io/InputStream;
    :cond_3
    const-string v8, "Image url is null"

    invoke-static {p0, v8}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v9

    goto :goto_1

    .restart local v1       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v2       #httpParameters:Lorg/apache/http/params/HttpParams;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #timeoutConnection:I
    .restart local v7       #timeoutSocket:I
    :catch_3
    move-exception v8

    goto :goto_0
.end method

.method private getPixels(I)I
    .locals 4
    .parameter "dip"

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 637
    .local v0, scale:F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 638
    .local v1, value:I
    return v1
.end method

.method private hideActivityIndicator()V
    .locals 1

    .prologue
    .line 623
    new-instance v0, Lcom/mdotm/android/view/InterstitialImageView$6;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/InterstitialImageView$6;-><init>(Lcom/mdotm/android/view/InterstitialImageView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->post(Ljava/lang/Runnable;)Z

    .line 633
    return-void
.end method

.method private initializeAdView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/content/Context;)V
    .locals 8
    .parameter "adResponse"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1e

    const/16 v6, 0x19

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 229
    if-eqz p1, :cond_4

    .line 230
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    .line 231
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 232
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v6}, Lcom/mdotm/android/view/InterstitialImageView;->getPixels(I)I

    move-result v2

    .line 233
    invoke-direct {p0, v6}, Lcom/mdotm/android/view/InterstitialImageView;->getPixels(I)I

    move-result v3

    .line 232
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 234
    .local v0, activityParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 237
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 238
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 239
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setId(I)V

    .line 242
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->adLandingUrl:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, v4}, Lcom/mdotm/android/view/InterstitialImageView;->setFocusable(Z)V

    .line 250
    invoke-virtual {p0, v4}, Lcom/mdotm/android/view/InterstitialImageView;->setClickable(Z)V

    .line 253
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->isCachedLocally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 255
    iput-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    .line 268
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 271
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v2}, Lcom/mdotm/android/view/InterstitialImageView;->displayImageView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/graphics/Bitmap;)V

    .line 300
    :goto_1
    invoke-direct {p0, v4}, Lcom/mdotm/android/view/InterstitialImageView;->drawBackgroundView(Z)V

    .line 302
    #calls: Landroid/widget/RelativeLayout;->getVisibility()I
    invoke-static {p0}, Lcom/mdotm/android/view/InterstitialImageView;->access$8(Lcom/mdotm/android/view/InterstitialImageView;)I

    move-result v1

    .line 303
    .local v1, visibility:I
    invoke-virtual {p0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->setVisibility(I)V

    .line 310
    .end local v0           #activityParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #visibility:I
    :goto_2
    return-void

    .line 262
    .restart local v0       #activityParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/mdotm/android/view/InterstitialImageView;->fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 276
    :cond_2
    const-string v2, "Unable to create bitmap from cached file. Trying to download from remote"

    .line 275
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iput-boolean v4, p0, Lcom/mdotm/android/view/InterstitialImageView;->adLoadSuccess:Z

    .line 278
    new-instance v2, Lcom/mdotm/android/view/InterstitialImageView$3;

    invoke-direct {v2, p0, p1}, Lcom/mdotm/android/view/InterstitialImageView$3;-><init>(Lcom/mdotm/android/view/InterstitialImageView;Lcom/mdotm/android/model/MdotMAdResponse;)V

    .line 294
    invoke-virtual {v2}, Lcom/mdotm/android/view/InterstitialImageView$3;->start()V

    .line 295
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_3

    .line 296
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/InterstitialImageView;->addView(Landroid/view/View;)V

    .line 298
    :cond_3
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->showActivityIndicator()V

    goto :goto_1

    .line 306
    .end local v0           #activityParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iput-boolean v5, p0, Lcom/mdotm/android/view/InterstitialImageView;->adLoadSuccess:Z

    goto :goto_2
.end method

.method private isAdSelectionInProgress()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->adSelectionInProgress:Z

    return v0
.end method

.method private static populateDrawablwBackGround(II)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "backgroundColor"
    .parameter "color"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 362
    const-string v4, ""

    const-string v5, "populate backgnd called"

    invoke-static {v4, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 364
    .local v3, rect:Landroid/graphics/Rect;
    const-string v4, ""

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rect width and height "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-static {v4, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 367
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 366
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 370
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 371
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 373
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 375
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method private setAdSelectionInProgress(Z)V
    .locals 0
    .parameter "isProgress"

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/mdotm/android/view/InterstitialImageView;->adSelectionInProgress:Z

    .line 483
    return-void
.end method

.method private showActivityIndicator()V
    .locals 1

    .prologue
    .line 609
    new-instance v0, Lcom/mdotm/android/view/InterstitialImageView$5;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/InterstitialImageView$5;-><init>(Lcom/mdotm/android/view/InterstitialImageView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->post(Ljava/lang/Runnable;)Z

    .line 619
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 493
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 494
    .local v0, action:I
    iget-boolean v1, p0, Lcom/mdotm/android/view/InterstitialImageView;->isAdClicked:Z

    if-nez v1, :cond_0

    .line 495
    if-ne v0, v2, :cond_0

    .line 496
    iput-boolean v2, p0, Lcom/mdotm/android/view/InterstitialImageView;->isAdClicked:Z

    .line 497
    invoke-virtual {p0}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->clicked(Landroid/content/Context;)V

    .line 500
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public displayImageView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "adResponse"
    .parameter "icon"

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v0

    sget v1, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    if-ne v0, v1, :cond_1

    .line 316
    invoke-direct {p0, p2, p1}, Lcom/mdotm/android/view/InterstitialImageView;->createAdWithBannerView(Landroid/graphics/Bitmap;Lcom/mdotm/android/model/MdotMAdResponse;)V

    .line 317
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->removeView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/InterstitialImageView;->addView(Landroid/view/View;)V

    .line 321
    invoke-direct {p0}, Lcom/mdotm/android/view/InterstitialImageView;->hideActivityIndicator()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView;->adLoadSuccess:Z

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Woooo!! unable to display ad, We got unsupported ad type for interstitial. AdType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
