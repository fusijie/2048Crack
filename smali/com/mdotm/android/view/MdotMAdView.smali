.class public Lcom/mdotm/android/view/MdotMAdView;
.super Lcom/mdotm/android/view/MdotMView;
.source "MdotMAdView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/mdotm/android/view/MdotMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/mdotm/android/view/MdotMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method private showAdIdUsageAlert()V
    .locals 5

    .prologue
    .line 76
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Notification "

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 84
    const-string v2, "Application uses Ad Identifier (if availabble) to collect analytics"

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 85
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 86
    const-string v3, "OK"

    .line 87
    new-instance v4, Lcom/mdotm/android/view/MdotMAdView$1;

    invoke-direct {v4, p0}, Lcom/mdotm/android/view/MdotMAdView$1;-><init>(Lcom/mdotm/android/view/MdotMAdView;)V

    .line 86
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 109
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 111
    return-void
.end method


# virtual methods
.method public bridge synthetic adClicked()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->adClicked()V

    return-void
.end method

.method public bridge synthetic createBannerView(Lcom/mdotm/android/model/MdotMAdResponse;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/view/MdotMView;->createBannerView(Lcom/mdotm/android/model/MdotMAdResponse;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public endAdSession()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMAdView;->didParentStopped:Z

    .line 123
    return-void
.end method

.method public bridge synthetic finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/view/MdotMView;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V

    return-void
.end method

.method public bridge synthetic finishedVastParsing(Lcom/mdotm/android/vast/VastAd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/view/MdotMView;->finishedVastParsing(Lcom/mdotm/android/vast/VastAd;)V

    return-void
.end method

.method public bridge synthetic leaveApplication()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->leaveApplication()V

    return-void
.end method

.method public bridge synthetic loadAd(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/mdotm/android/view/MdotMView;->loadAd(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V

    return-void
.end method

.method public loadBannerAd(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 1
    .parameter "listener"
    .parameter "adRequest"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMAdView;->endAdSession()V

    .line 57
    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMAdView;->didParentStopped:Z

    .line 58
    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdRequest;->setLoadInterstitial(Z)V

    .line 69
    invoke-super {p0, p1, p2}, Lcom/mdotm/android/view/MdotMView;->loadAd(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V

    .line 72
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onDetachedFromWindow()V

    .line 40
    const-string v0, "Ondetached from window **"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMAdView;->endAdSession()V

    .line 42
    return-void
.end method

.method public bridge synthetic onDismissScreen()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onDismissScreen()V

    return-void
.end method

.method public bridge synthetic onLoadError()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onLoadError()V

    return-void
.end method

.method public bridge synthetic onPlayError()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onPlayError()V

    return-void
.end method

.method public bridge synthetic onPlayStop()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onPlayStop()V

    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/view/MdotMView;->onWindowFocusChanged(Z)V

    return-void
.end method
