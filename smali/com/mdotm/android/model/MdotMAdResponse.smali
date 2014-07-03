.class public Lcom/mdotm/android/model/MdotMAdResponse;
.super Ljava/lang/Object;
.source "MdotMAdResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xc31444ff6642717L


# instance fields
.field private Text:Ljava/lang/String;

.field private adType:I

.field private cachedLocally:Z

.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private imp_pixel:Ljava/lang/String;

.field private isRequestForBannerAd:Z

.field private landingUrl:Ljava/lang/String;

.field private launchType:I

.field private originalImageUrl:Ljava/lang/String;

.field private resourceType:I

.field private status:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdType()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->adType:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->height:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImp_pixel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->imp_pixel:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->landingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchType()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->launchType:I

    return v0
.end method

.method public getOriginalImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->originalImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->resourceType:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->status:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->Text:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->width:I

    return v0
.end method

.method public isCachedLocally()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->cachedLocally:Z

    return v0
.end method

.method public isRequestForBannerAd()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->isRequestForBannerAd:Z

    return v0
.end method

.method public setAdType(I)V
    .locals 0
    .parameter "adType"

    .prologue
    .line 47
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->adType:I

    .line 48
    return-void
.end method

.method public setCachedLocally(Z)V
    .locals 0
    .parameter "cachedLocally"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->cachedLocally:Z

    .line 100
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 91
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->height:I

    .line 92
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->imageUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setImp_pixel(Ljava/lang/String;)V
    .locals 0
    .parameter "impPixel"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->imp_pixel:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setLandingUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "landingUrl"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->landingUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLaunchType(I)V
    .locals 0
    .parameter "launchType"

    .prologue
    .line 107
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->launchType:I

    .line 108
    return-void
.end method

.method public setOriginalImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "originalImageUrl"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->originalImageUrl:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setRequestForBannerAd(Z)V
    .locals 0
    .parameter "isRequestForBannerAd"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->isRequestForBannerAd:Z

    .line 32
    return-void
.end method

.method public setResourceType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 75
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->resourceType:I

    .line 76
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 119
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->status:I

    .line 120
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->Text:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 83
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->width:I

    .line 84
    return-void
.end method
