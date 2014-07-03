.class public Lcom/mdotm/android/view/MdotMInterstitial;
.super Ljava/lang/Object;
.source "MdotMInterstitial.java"

# interfaces
.implements Lcom/mdotm/android/listener/MdotMNetworkListener;
.implements Lcom/mdotm/android/listener/InterstitialActionListener;


# instance fields
.field adType:I

.field private interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

.field public isInterstitialReady:Z

.field private listenerId:J

.field public mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

.field mContext:Landroid/content/Context;

.field private style:I

.field private vastAdResponse:Lcom/mdotm/android/vast/VastAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 35
    iput v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->style:I

    .line 37
    iput-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 39
    iput-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    .line 43
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 1
    .parameter "adResponse"

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    .line 120
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 124
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onReceiveInterstitialAd()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    goto :goto_0
.end method

.method public finishedVastParsing(Lcom/mdotm/android/vast/VastAd;)V
    .locals 8
    .parameter "vastAd"

    .prologue
    .line 175
    const-string v5, "finishedAdParsing"

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 177
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getStatus()I

    move-result v5

    if-eqz v5, :cond_7

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "finishedAdParsing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getAdTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v4

    .line 180
    .local v4, vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, nullResourceUrlCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 188
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_3

    .line 189
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    .line 190
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 191
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v5, :cond_0

    .line 192
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v5}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onReceiveInterstitialAd()V

    .line 218
    .end local v1           #i:I
    .end local v3           #nullResourceUrlCount:I
    .end local v4           #vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    :cond_0
    :goto_1
    return-void

    .line 183
    .restart local v1       #i:I
    .restart local v3       #nullResourceUrlCount:I
    .restart local v4       #vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mdotm/android/vast/LinearAd;

    .line 184
    .local v2, linearAd:Lcom/mdotm/android/vast/LinearAd;
    invoke-virtual {v2}, Lcom/mdotm/android/vast/LinearAd;->getAdResource()Lcom/mdotm/android/vast/AdResource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mdotm/android/vast/AdResource;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 185
    add-int/lit8 v3, v3, 0x1

    .line 182
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v2           #linearAd:Lcom/mdotm/android/vast/LinearAd;
    :cond_3
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v5}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    goto :goto_1

    .line 200
    .end local v1           #i:I
    .end local v3           #nullResourceUrlCount:I
    :cond_4
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getError()Ljava/util/ArrayList;

    move-result-object v0

    .line 201
    .local v0, arrayListError:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 202
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_6

    .line 209
    .end local v1           #i:I
    :cond_5
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v5, :cond_0

    .line 210
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v5}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    goto :goto_1

    .line 203
    .restart local v1       #i:I
    :cond_6
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v6

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v6, v5, v7}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 214
    .end local v0           #arrayListError:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v4           #vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    :cond_7
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v5}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    goto :goto_1
.end method

.method public loadInterstitial(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 3
    .parameter "listener"
    .parameter "adRequest"

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listener id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 63
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    invoke-virtual {v0, v1, v2, p0}, Lcom/mdotm/android/utils/MdotMUtils;->setInterstitialActionListener(JLcom/mdotm/android/listener/InterstitialActionListener;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdRequest;->setLoadInterstitial(Z)V

    .line 68
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v0, v1}, Lcom/mdotm/android/utils/MdotMUtils;->getDisplaySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdRequest;->setAdSize(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 72
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->addRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;)V

    .line 75
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "Adclicked"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onInterstitialAdClick()V

    .line 171
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onInterstitialDismiss()V

    .line 140
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 141
    iget-wide v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/utils/MdotMUtils;->removeInterstitialActionListener(J)V

    .line 144
    :cond_0
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    .line 162
    :cond_0
    return-void
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onLeaveApplicationFromInterstitial()V

    .line 153
    :cond_0
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 221
    iput p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->style:I

    .line 222
    return-void
.end method

.method public showInterstitial(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 86
    iget-boolean v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    if-eqz v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v2}, Lcom/mdotm/android/listener/MdotMAdEventListener;->willShowInterstitial()V

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 95
    .local v1, orientation:I
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    if-eqz v2, :cond_2

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "response"

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    :goto_0
    const-string v2, "InterstitialActionListenerId"

    iget-wide v3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    const-string v2, "ScreenOrientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 107
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v2}, Lcom/mdotm/android/listener/MdotMAdEventListener;->didShowInterstitial()V

    .line 112
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 116
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #orientation:I
    :goto_1
    return-void

    .line 99
    .restart local v1       #orientation:I
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mdotm/android/view/MdotMActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "response"

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    const-string v2, "style"

    iget v3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->style:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #orientation:I
    :cond_3
    const-string v2, "Interstitial is not ready"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
