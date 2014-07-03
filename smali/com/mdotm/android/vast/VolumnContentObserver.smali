.class public Lcom/mdotm/android/vast/VolumnContentObserver;
.super Landroid/database/ContentObserver;
.source "VolumnContentObserver.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private muteUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private previousVolume:I

.field private trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

.field private unMuteUrl:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "c"
    .parameter "handler"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, muteString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, unMuteString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 32
    iput-object p1, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->mHandler:Landroid/os/Handler;

    .line 34
    iget-object v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->context:Landroid/content/Context;

    .line 35
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/media/AudioManager;

    .line 36
    .local v0, audio:Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    .line 38
    iput-object p3, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->muteUrl:Ljava/util/ArrayList;

    .line 39
    iput-object p4, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->unMuteUrl:Ljava/util/ArrayList;

    .line 40
    iget v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    if-nez v1, :cond_0

    .line 41
    const-string v1, "valumn Mute impression when video started:: "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->mute:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/mdotm/android/vast/VolumnContentObserver;->sendImpression(Ljava/util/ArrayList;)V

    .line 44
    :cond_0
    const-string v1, "Volumn listener"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/vast/VolumnContentObserver;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->context:Landroid/content/Context;

    return-object v0
.end method

.method private sendImpression(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 71
    .local p1, impressionUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/vast/VolumnContentObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/mdotm/android/vast/VolumnContentObserver$1;-><init>(Lcom/mdotm/android/vast/VolumnContentObserver;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 56
    iget-object v2, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->context:Landroid/content/Context;

    .line 57
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    check-cast v0, Landroid/media/AudioManager;

    .line 58
    .local v0, audio:Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 60
    .local v1, currentVolume:I
    if-nez v1, :cond_1

    iget v2, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    if-eqz v2, :cond_1

    .line 61
    const-string v2, "valumn Mute  impression :: "

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v2, v2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->mute:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mdotm/android/vast/VolumnContentObserver;->sendImpression(Ljava/util/ArrayList;)V

    .line 67
    :cond_0
    :goto_0
    iput v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    .line 68
    return-void

    .line 63
    :cond_1
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    if-nez v2, :cond_0

    .line 64
    const-string v2, "valumn unMute impression :: "

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v2, v2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->unMute:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mdotm/android/vast/VolumnContentObserver;->sendImpression(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
