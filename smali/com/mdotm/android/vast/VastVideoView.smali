.class public Lcom/mdotm/android/vast/VastVideoView;
.super Landroid/widget/VideoView;
.source "VastVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;
    }
.end annotation


# instance fields
.field private adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

.field private impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

.field isVideoReady:Z

.field private mAdResponse:Lcom/mdotm/android/vast/LinearAd;

.field private mContext:Landroid/content/Context;

.field private mDidImpressionRecoded:Z

.field private mHandler:Landroid/os/Handler;

.field mIsGetIntoError:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

.field private videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;

.field private videoTimer:Ljava/util/Timer;

.field private volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    .line 35
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    .line 36
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/vast/LinearAd;Lcom/mdotm/android/listener/MdotMAdActionListener;Lcom/mdotm/android/listener/InterstitialVideoListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "adResponse"
    .parameter "listener"
    .parameter "videoListener"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    .line 35
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    .line 36
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    .line 55
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/mdotm/android/vast/VastVideoView;->mAdResponse:Lcom/mdotm/android/vast/LinearAd;

    .line 57
    iput-object p5, p0, Lcom/mdotm/android/vast/VastVideoView;->mHandler:Landroid/os/Handler;

    .line 58
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mAdResponse:Lcom/mdotm/android/vast/LinearAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/LinearAd;->getTrackingEvents()Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    .line 59
    iput-object p3, p0, Lcom/mdotm/android/vast/VastVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 60
    iput-object p4, p0, Lcom/mdotm/android/vast/VastVideoView;->videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;

    .line 61
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView;->prepareVideo()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/vast/VastVideoView;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$2(Lcom/mdotm/android/vast/VastVideoView;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/InterstitialVideoListener;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mdotm/android/vast/VastVideoView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mdotm/android/vast/VastVideoView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/MdotMAdActionListener;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    return-object v0
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    :cond_1
    return-void
.end method

.method private prepareVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    iput-boolean v3, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    .line 66
    iput-boolean v3, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    .line 67
    iput-boolean v3, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    .line 68
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 69
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Loading..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 71
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/mdotm/android/vast/VastVideoView$1;

    invoke-direct {v2, p0}, Lcom/mdotm/android/vast/VastVideoView$1;-><init>(Lcom/mdotm/android/vast/VastVideoView;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 81
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->mAdResponse:Lcom/mdotm/android/vast/LinearAd;

    invoke-virtual {v1}, Lcom/mdotm/android/vast/LinearAd;->getAdResource()Lcom/mdotm/android/vast/AdResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mdotm/android/vast/AdResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, videoPath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video path :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mdotm/android/vast/VastVideoView;->setZOrderOnTop(Z)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/mdotm/android/vast/VastVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->requestFocus()Z

    .line 86
    invoke-virtual {p0, p0}, Lcom/mdotm/android/vast/VastVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 87
    invoke-virtual {p0, p0}, Lcom/mdotm/android/vast/VastVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 88
    invoke-virtual {p0, p0}, Lcom/mdotm/android/vast/VastVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 89
    new-instance v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;-><init>(Lcom/mdotm/android/vast/VastVideoView;)V

    iput-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    .line 90
    return-void
.end method


# virtual methods
.method public PauseVideo()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->pause()V

    .line 174
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "Pause impression event"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->pause:Ljava/util/ArrayList;

    #calls: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public isReadyToPlay()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 109
    const-string v0, "On completion of video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isComplete:Z

    .line 112
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->complete:Ljava/util/ArrayList;

    #calls: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onPlayStop()V

    .line 116
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView;->cancelTimer()V

    .line 117
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "On error playing  video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-boolean v2, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    .line 98
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v1, 0x0

    #calls: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 103
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onPlayError()V

    .line 104
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x1

    .line 131
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->getDuration()I

    move-result v1

    #calls: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->setImpressionTime(I)V
    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$1(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;I)V

    .line 132
    iput-boolean v5, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    .line 133
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 134
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->start()V

    .line 136
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialVideoListener;->setPlayStart()V

    .line 139
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "Start playing video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->start:Ljava/util/ArrayList;

    #calls: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Lcom/mdotm/android/vast/VolumnContentObserver;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView;->mHandler:Landroid/os/Handler;

    .line 145
    iget-object v3, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v3, v3, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->mute:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v4, v4, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->unMute:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mdotm/android/vast/VolumnContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 144
    iput-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;

    .line 146
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 148
    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView;->volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;

    .line 146
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    :cond_1
    return-void
.end method

.method public playVideo()V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isComplete:Z

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->start()V

    .line 160
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "Resume impression"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->resume:Ljava/util/ArrayList;

    #calls: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v0, "Play called after one complete play"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView;->prepareVideo()V

    goto :goto_0
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 186
    const-string v0, "Stop video playback"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->stopPlayback()V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView;->cancelTimer()V

    .line 192
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    if-nez v0, :cond_1

    .line 193
    const-string v0, "Call report impression video resource"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    .line 199
    :cond_1
    return-void
.end method
