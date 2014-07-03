.class Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MdotMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/view/MdotMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field private mVideoProgressView:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/mdotm/android/view/MdotMWebView;


# direct methods
.method private constructor <init>(Lcom/mdotm/android/view/MdotMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0xa

    .line 389
    const-string v1, ""

    const-string v2, "here in on getVideoLoadingPregressView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 392
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-virtual {v2}, Lcom/mdotm/android/view/MdotMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    .line 393
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 394
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 396
    .local v0, activityParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 398
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 399
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 400
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 402
    .end local v0           #activityParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    return-object v1
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 419
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 420
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 371
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$6(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$6(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$7(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMWebView;->access$6(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const/4 v1, 0x0

    #setter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->access$8(Lcom/mdotm/android/view/MdotMWebView;Landroid/view/View;)V

    .line 380
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$7(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$10(Lcom/mdotm/android/view/MdotMWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 383
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMWebView;->goBack()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$5(Lcom/mdotm/android/view/MdotMWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 413
    const/4 v1, 0x2

    mul-int/lit8 v2, p2, 0x64

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 414
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "title"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$5(Lcom/mdotm/android/view/MdotMWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 353
    const-string v0, ""

    const-string v1, "here in on ShowCustomView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$6(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 367
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$7(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #setter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/mdotm/android/view/MdotMWebView;->access$8(Lcom/mdotm/android/view/MdotMWebView;Landroid/view/View;)V

    .line 364
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #setter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0, p2}, Lcom/mdotm/android/view/MdotMWebView;->access$9(Lcom/mdotm/android/view/MdotMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 365
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$7(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
