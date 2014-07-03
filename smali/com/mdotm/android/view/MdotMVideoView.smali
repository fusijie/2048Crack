.class Lcom/mdotm/android/view/MdotMVideoView;
.super Landroid/widget/VideoView;
.source "MdotMVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

.field isVideoReady:Z

.field mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

.field mContext:Landroid/content/Context;

.field private mDidImpressionRecoded:Z

.field mIsGetIntoError:Z

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V
    .locals 3
    .parameter "context"
    .parameter "adResponse"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 28
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMVideoView;->mDidImpressionRecoded:Z

    .line 29
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMVideoView;->isVideoReady:Z

    .line 30
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMVideoView;->mIsGetIntoError:Z

    .line 37
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMVideoView;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/mdotm/android/view/MdotMVideoView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 39
    iput-object p3, p0, Lcom/mdotm/android/view/MdotMVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 40
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMVideoView;->isVideoReady:Z

    .line 41
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMVideoView;->mIsGetIntoError:Z

    .line 42
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMVideoView;->mDidImpressionRecoded:Z

    .line 43
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 44
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 47
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMVideoView;->requestFocus()Z

    .line 48
    invoke-virtual {p0, p0}, Lcom/mdotm/android/view/MdotMVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 49
    invoke-virtual {p0, p0}, Lcom/mdotm/android/view/MdotMVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 50
    invoke-virtual {p0, p0}, Lcom/mdotm/android/view/MdotMVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 51
    invoke-virtual {p2}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMVideoView;->setFocusable(Z)V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMVideoView;->mDidImpressionRecoded:Z

    return-void
.end method


# virtual methods
.method public PauseVideo()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMVideoView;->pause()V

    .line 69
    :cond_0
    return-void
.end method

.method public isReadyToPlay()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->isVideoReady:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 113
    const-string v0, "On completion of video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onPlayStop()V

    .line 115
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "On error playing  video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMVideoView;->mIsGetIntoError:Z

    .line 122
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onPlayError()V

    .line 126
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 58
    const-string v0, "onPrepared"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->isVideoReady:Z

    .line 60
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 61
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 63
    return-void
.end method

.method public playVideo()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMVideoView;->start()V

    .line 110
    :cond_0
    return-void
.end method

.method public stopVideo(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 72
    const-string v0, "Stop video playback"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMVideoView;->stopPlayback()V

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mIsGetIntoError:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMVideoView;->mDidImpressionRecoded:Z

    if-nez v0, :cond_1

    .line 77
    const-string v0, "Call report impression video resource"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/mdotm/android/view/MdotMVideoView$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMVideoView$1;-><init>(Lcom/mdotm/android/view/MdotMVideoView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_1
    return-void
.end method
