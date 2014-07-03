.class public Lcom/mdotm/android/model/MdotMAdRequest;
.super Ljava/lang/Object;
.source "MdotMAdRequest.java"


# instance fields
.field private adRefreshInterval:I

.field private adSize:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private enableCaching:Z

.field private loadInterstitial:Z

.field private testMode:Ljava/lang/String;

.field private vidsupport:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->testMode:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->loadInterstitial:Z

    .line 17
    const-string v0, "1"

    iput-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->vidsupport:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public getAdRefreshInterval()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->adRefreshInterval:I

    return v0
.end method

.method public getAdSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->adSize:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVidSupport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->vidsupport:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableCaching()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->enableCaching:Z

    return v0
.end method

.method public isLoadInterstitial()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->loadInterstitial:Z

    return v0
.end method

.method public isTestMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->testMode:Ljava/lang/String;

    return-object v0
.end method

.method public setAdRefreshInterval(I)V
    .locals 0
    .parameter "adRefreshInterval"

    .prologue
    .line 106
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->adRefreshInterval:I

    .line 107
    return-void
.end method

.method public setAdSize(Ljava/lang/String;)V
    .locals 0
    .parameter "adSize"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->adSize:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .parameter "appKey"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->appKey:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setEnableCaching(Z)V
    .locals 0
    .parameter "enableCaching"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->enableCaching:Z

    .line 39
    return-void
.end method

.method public setLoadInterstitial(Z)V
    .locals 0
    .parameter "loadInterstitial"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->loadInterstitial:Z

    .line 64
    return-void
.end method

.method public setTestMode(Ljava/lang/String;)V
    .locals 0
    .parameter "testMode"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->testMode:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVidSupport(Ljava/lang/String;)V
    .locals 0
    .parameter "vidsupport"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->vidsupport:Ljava/lang/String;

    .line 51
    return-void
.end method
