.class public Lcom/mdotm/android/vast/LinearAd;
.super Lcom/mdotm/android/vast/BaseVastAd;
.source "LinearAd.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected adResource:Lcom/mdotm/android/vast/AdResource;

.field protected duration:Ljava/lang/String;

.field protected trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

.field protected videoClicks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mdotm/android/vast/BaseVastAd;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->videoClicks:Ljava/util/ArrayList;

    .line 5
    return-void
.end method


# virtual methods
.method public getAdResource()Lcom/mdotm/android/vast/AdResource;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->adResource:Lcom/mdotm/android/vast/AdResource;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingEvents()Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    return-object v0
.end method

.method public getVideoClicks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->videoClicks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAdResource(Lcom/mdotm/android/vast/AdResource;)V
    .locals 0
    .parameter "adResource"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mdotm/android/vast/LinearAd;->adResource:Lcom/mdotm/android/vast/AdResource;

    .line 47
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mdotm/android/vast/LinearAd;->duration:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTrackingEvents(Lcom/mdotm/android/vast/LinearAdTrackingEvents;)V
    .locals 0
    .parameter "trackingEvents"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mdotm/android/vast/LinearAd;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    .line 39
    return-void
.end method

.method public setVideoClicks(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, videoClicks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mdotm/android/vast/LinearAd;->videoClicks:Ljava/util/ArrayList;

    .line 43
    return-void
.end method
