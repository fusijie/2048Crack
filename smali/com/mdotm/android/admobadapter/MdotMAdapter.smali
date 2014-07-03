.class public final Lcom/mdotm/android/admobadapter/MdotMAdapter;
.super Ljava/lang/Object;
.source "MdotMAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/mdotm/android/listener/MdotMAdEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;",
        "Lcom/mdotm/android/admobadapter/MdotMServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;",
        "Lcom/mdotm/android/admobadapter/MdotMServerParameters;",
        ">;",
        "Lcom/mdotm/android/listener/MdotMAdEventListener;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field private bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

.field bannerView:Lcom/mdotm/android/view/MdotMAdView;

.field private interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

.field interstitialView:Lcom/mdotm/android/view/MdotMInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerView:Lcom/mdotm/android/view/MdotMAdView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerView:Lcom/mdotm/android/view/MdotMAdView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMAdView;->endAdSession()V

    .line 190
    :cond_0
    return-void
.end method

.method public didShowInterstitial()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 281
    :cond_0
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const-class v0, Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerView:Lcom/mdotm/android/view/MdotMAdView;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mdotm/android/admobadapter/MdotMServerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const-class v0, Lcom/mdotm/android/admobadapter/MdotMServerParameters;

    return-object v0
.end method

.method public onBannerAdClick()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    invoke-interface {v0, p0}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "MdotMAdmobAdapter"

    .line 211
    const-string v1, "Listner is null not able report banner click"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDismissScreen()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    invoke-interface {v0, p0}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 297
    :cond_0
    return-void
.end method

.method public onFailedToReceiveBannerAd()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 200
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    .line 199
    invoke-interface {v0, p0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 203
    :cond_0
    return-void
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 243
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    .line 242
    invoke-interface {v0, p0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/ads/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 289
    :cond_0
    return-void
.end method

.method public onLeaveApplicationFromBanner()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    invoke-interface {v0, p0}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 260
    :cond_0
    return-void
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/ads/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 267
    :cond_0
    return-void
.end method

.method public onReceiveBannerAd()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerView:Lcom/mdotm/android/view/MdotMAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMAdView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    invoke-interface {v0, p0}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "MdotMAdmobAdapter"

    const-string v1, "B-Ad received but listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceiveInterstitialAd()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v0, "MdotMAdmobAdapter"

    const-string v1, "IAd received but listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    move-object v3, p3

    check-cast v3, Lcom/mdotm/android/admobadapter/MdotMServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mdotm/android/admobadapter/MdotMAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/mdotm/android/admobadapter/MdotMServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/mdotm/android/admobadapter/MdotMServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;)V
    .locals 9
    .parameter "listener"
    .parameter "activity"
    .parameter "serverParameters"
    .parameter "adSize"
    .parameter "mediationAdRequest"
    .parameter "extras"

    .prologue
    const/4 v5, 0x7

    .line 63
    iput-object p1, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 65
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_4

    .line 66
    const-string v4, "requesting banner ad"

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v4, Lcom/mdotm/android/view/MdotMAdView;

    invoke-direct {v4, p2}, Lcom/mdotm/android/view/MdotMAdView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerView:Lcom/mdotm/android/view/MdotMAdView;

    .line 69
    new-instance v3, Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-direct {v3}, Lcom/mdotm/android/model/MdotMAdRequest;-><init>()V

    .line 73
    .local v3, request:Lcom/mdotm/android/model/MdotMAdRequest;
    const/4 v4, 0x7

    new-array v4, v4, [Lcom/google/ads/AdSize;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/ads/AdSize;

    const/16 v7, 0x140

    const/16 v8, 0x32

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 74
    new-instance v6, Lcom/google/ads/AdSize;

    const/16 v7, 0x12c

    const/16 v8, 0x32

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/google/ads/AdSize;

    const/16 v7, 0x12c

    const/16 v8, 0xfa

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/google/ads/AdSize;

    .line 75
    const/16 v7, 0x140

    const/16 v8, 0x1e0

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lcom/google/ads/AdSize;

    const/16 v7, 0x1e0

    const/16 v8, 0x140

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lcom/google/ads/AdSize;

    .line 76
    const/16 v7, 0x1d4

    const/16 v8, 0x3c

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lcom/google/ads/AdSize;

    const/16 v7, 0x2d8

    const/16 v8, 0x5a

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v6, v4, v5

    .line 73
    invoke-virtual {p4, v4}, Lcom/google/ads/AdSize;->findBestSize([Lcom/google/ads/AdSize;)Lcom/google/ads/AdSize;

    move-result-object v1

    .line 78
    .local v1, bestAdSize:Lcom/google/ads/AdSize;
    if-nez v1, :cond_1

    .line 79
    iget-object v4, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 80
    sget-object v5, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    .line 79
    invoke-interface {v4, p0, v5}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 81
    const-string v4, ""

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No Ad Retrieved -- MdotM doesn\'t support requested ad size ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1           #bestAdSize:Lcom/google/ads/AdSize;
    .end local v3           #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v1       #bestAdSize:Lcom/google/ads/AdSize;
    .restart local v3       #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 88
    invoke-virtual {v1}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, adDimension:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/mdotm/android/model/MdotMAdRequest;->setAdSize(Ljava/lang/String;)V

    .line 91
    iget-object v4, p3, Lcom/mdotm/android/admobadapter/MdotMServerParameters;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdRequest;->setAppKey(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p5}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdRequest;->setTestMode(Ljava/lang/String;)V

    .line 101
    :goto_1
    if-eqz p6, :cond_3

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cache enabled "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;->isEnableCaching()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p6}, Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;->isEnableCaching()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdRequest;->setEnableCaching(Z)V

    .line 110
    :goto_2
    iget-object v4, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerView:Lcom/mdotm/android/view/MdotMAdView;

    invoke-virtual {v4, p0, v3}, Lcom/mdotm/android/view/MdotMAdView;->loadBannerAd(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v0           #adDimension:Ljava/lang/String;
    .end local v1           #bestAdSize:Lcom/google/ads/AdSize;
    .end local v3           #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "MdotMAdapter"

    .line 120
    const-string v5, "Android api version is less than 7 (i.e 2.1)"

    .line 119
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v4, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 123
    sget-object v5, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    .line 122
    invoke-interface {v4, p0, v5}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 97
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #adDimension:Ljava/lang/String;
    .restart local v1       #bestAdSize:Lcom/google/ads/AdSize;
    .restart local v3       #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :cond_2
    :try_start_1
    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdRequest;->setTestMode(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_3
    const-string v4, "cache enabled  extra is null "

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdRequest;->setEnableCaching(Z)V

    goto :goto_2

    .line 113
    .end local v0           #adDimension:Ljava/lang/String;
    .end local v1           #bestAdSize:Lcom/google/ads/AdSize;
    .end local v3           #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :cond_4
    iget-object v4, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    if-eqz v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 115
    sget-object v5, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    .line 114
    invoke-interface {v4, p0, v5}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    move-object v3, p3

    check-cast v3, Lcom/mdotm/android/admobadapter/MdotMServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mdotm/android/admobadapter/MdotMAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/mdotm/android/admobadapter/MdotMServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/mdotm/android/admobadapter/MdotMServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;)V
    .locals 4
    .parameter "listener"
    .parameter "activity"
    .parameter "serverParameters"
    .parameter "mediationAdRequest"
    .parameter "extras"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 133
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_3

    .line 135
    iput-object p2, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->activity:Landroid/app/Activity;

    .line 136
    new-instance v1, Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-direct {v1}, Lcom/mdotm/android/model/MdotMAdRequest;-><init>()V

    .line 140
    .local v1, request:Lcom/mdotm/android/model/MdotMAdRequest;
    iget-object v2, p3, Lcom/mdotm/android/admobadapter/MdotMServerParameters;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mdotm/android/model/MdotMAdRequest;->setAppKey(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p4}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/mdotm/android/model/MdotMAdRequest;->setTestMode(Ljava/lang/String;)V

    .line 150
    :goto_0
    if-eqz p5, :cond_2

    .line 151
    invoke-virtual {p5}, Lcom/mdotm/android/admobadapter/MdotMNetworkExtras;->isEnableCaching()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mdotm/android/model/MdotMAdRequest;->setEnableCaching(Z)V

    .line 157
    :goto_1
    new-instance v2, Lcom/mdotm/android/view/MdotMInterstitial;

    invoke-direct {v2, p2}, Lcom/mdotm/android/view/MdotMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialView:Lcom/mdotm/android/view/MdotMInterstitial;

    .line 159
    iget-object v2, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialView:Lcom/mdotm/android/view/MdotMInterstitial;

    invoke-virtual {v2, p0, v1}, Lcom/mdotm/android/view/MdotMInterstitial;->loadInterstitial(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V

    .line 174
    .end local v1           #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :cond_0
    :goto_2
    return-void

    .line 146
    .restart local v1       #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :cond_1
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/mdotm/android/model/MdotMAdRequest;->setTestMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v1           #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MdotMAdapter"

    .line 168
    const-string v3, "Android api version is less than 7 (i.e 2.1)"

    .line 167
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 171
    sget-object v3, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    .line 170
    invoke-interface {v2, p0, v3}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_2

    .line 154
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/mdotm/android/model/MdotMAdRequest;->setEnableCaching(Z)V

    goto :goto_1

    .line 161
    .end local v1           #request:Lcom/mdotm/android/model/MdotMAdRequest;
    :cond_3
    iget-object v2, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 163
    sget-object v3, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    .line 162
    invoke-interface {v2, p0, v3}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialView:Lcom/mdotm/android/view/MdotMInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->interstitialView:Lcom/mdotm/android/view/MdotMInterstitial;

    iget-object v1, p0, Lcom/mdotm/android/admobadapter/MdotMAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMInterstitial;->showInterstitial(Landroid/app/Activity;)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v0, "MdotMAdapter"

    .line 181
    const-string v1, "Unable to show interstitial because either interstitialView is null or activity context is null"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public willShowInterstitial()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method
