.class Lcom/millennialmedia/android/VideoPlayerActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;,
        Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;
    }
.end annotation


# static fields
.field private static final CONTROLS_ID:I = 0x4fe0613

.field private static final END_VIDEO:Ljava/lang/String; = "endVideo"

.field protected static final MESSAGE_CHECK_PLAYING_VIDEO:I = 0x4

.field protected static final MESSAGE_DELAYED_BUTTON:I = 0x3

.field protected static final MESSAGE_INACTIVITY_ANIMATION:I = 0x1

.field protected static final MESSAGE_ONE_SECOND_CHECK:I = 0x2

.field protected static final MESSAGE_SET_TRANSPARENCY:I = 0x5

.field private static final RESTART_VIDEO:Ljava/lang/String; = "restartVideo"

.field private static final TAG:Ljava/lang/String; = "VideoPlayerActivity"


# instance fields
.field adProperties:Lcom/millennialmedia/android/AdProperties;

.field blackView:Landroid/view/View;

.field protected currentVideoPosition:I

.field protected hasBottomBar:Z

.field private hasFocus:Z

.field isPaused:Z

.field isUserPausing:Z

.field protected isVideoCompleted:Z

.field private isVideoCompletedOnce:Z

.field lastOverlayOrientation:Ljava/lang/String;

.field protected mVideoView:Landroid/widget/VideoView;

.field pausePlay:Landroid/widget/Button;

.field progBar:Landroid/widget/ProgressBar;

.field redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

.field private shouldSetUri:Z

.field transparentHandler:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

.field videoLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    .line 55
    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    .line 56
    iput v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    .line 470
    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    .line 555
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/VideoPlayerActivity;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->isActionable(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    return p1
.end method

.method private initBottomBar(Landroid/widget/RelativeLayout;)V
    .locals 10
    .parameter "parent"

    .prologue
    const/4 v9, -0x2

    .line 239
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, controlsLayout:Landroid/widget/RelativeLayout;
    const v7, 0x4fe0613

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 241
    const/high16 v7, -0x100

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 242
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v1, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 245
    .local v1, controlsLp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    new-instance v2, Landroid/widget/Button;

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 249
    .local v2, mRewind:Landroid/widget/Button;
    new-instance v7, Landroid/widget/Button;

    iget-object v8, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    .line 250
    new-instance v3, Landroid/widget/Button;

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 252
    .local v3, mStop:Landroid/widget/Button;
    const v7, 0x1080025

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 253
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v7}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 254
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v8, 0x1080023

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 257
    :goto_0
    const v7, 0x1080038

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 260
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 263
    .local v4, pauseLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    .local v6, stopLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 270
    .local v5, rewindLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xe

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 271
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getId()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 274
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 276
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 277
    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    new-instance v7, Lcom/millennialmedia/android/VideoPlayerActivity$2;

    invoke-direct {v7, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$2;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    new-instance v8, Lcom/millennialmedia/android/VideoPlayerActivity$3;

    invoke-direct {v8, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$3;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v7, Lcom/millennialmedia/android/VideoPlayerActivity$4;

    invoke-direct {v7, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$4;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    return-void

    .line 256
    .end local v4           #pauseLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #rewindLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #stopLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v8, 0x1080024

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initRedirectListener()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .line 176
    return-void
.end method

.method private initVideoListeners()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 526
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 527
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 529
    return-void
.end method

.method private initWindow()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->requestWindowFeature(I)Z

    .line 98
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 100
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 101
    return-void
.end method

.method private isActionSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 197
    if-eqz p1, :cond_1

    const-string v0, "restartVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "endVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActionable(Landroid/net/Uri;)Z
    .locals 4
    .parameter "actionUri"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mmsdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/VideoPlayerActivity;->isActionSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    :goto_0
    return v0

    .line 189
    :cond_0
    const-string v2, "VideoPlayerActivity"

    const-string v3, "Unrecognized mmsdk:// URI %s."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 192
    goto :goto_0
.end method

.method private makeTransparent()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 517
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->sendEmptyMessage(I)Z

    .line 520
    :cond_0
    return-void
.end method

.method private startVideo(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 452
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 456
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 457
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 460
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v2, 0x1080023

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 466
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->makeTransparent()V

    .line 468
    :cond_2
    return-void
.end method


# virtual methods
.method protected canFadeButtons()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dismiss()V
    .locals 2

    .prologue
    .line 616
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video ad player closed"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 620
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->finish()V

    .line 623
    return-void
.end method

.method dispatchButtonClick(Ljava/lang/String;)V
    .locals 4
    .parameter "urlString"

    .prologue
    .line 703
    if-nez p1, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Button Click with URL: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iput-object p1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->url:Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    .line 709
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isHandlingMMVideo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpRedirection;->startActivityFromUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    goto :goto_0
.end method

.method protected enableButtons()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method protected endVideo()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "VideoPlayerActivity"

    const-string v1, "End Video."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    .line 231
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->dismiss()V

    .line 233
    :cond_0
    return-void
.end method

.method protected errorPlayVideo(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    const-string v1, "Sorry. There was a problem playing the video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 445
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 447
    :cond_0
    return-void
.end method

.method handleTransparentMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x4

    .line 493
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 495
    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 498
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 506
    :pswitch_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initLayout()Landroid/widget/RelativeLayout;
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/4 v9, -0x2

    const/high16 v8, -0x100

    const/4 v7, -0x1

    .line 331
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 332
    .local v1, parent:Landroid/widget/RelativeLayout;
    const/16 v5, 0x190

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 333
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 337
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    .line 338
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 339
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x19a

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 340
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v3, videoContainerLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 346
    .local v4, videoLp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 347
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 348
    new-instance v5, Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v6}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    .line 349
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    const/16 v6, 0x19b

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setId(I)V

    .line 350
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 351
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v8}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 352
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initVideoListeners()V

    .line 353
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    .line 356
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 357
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 360
    .local v0, blackViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-boolean v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    if-eqz v5, :cond_0

    .line 363
    const/4 v5, 0x2

    const v6, 0x4fe0613

    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 364
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->initBottomBar(Landroid/widget/RelativeLayout;)V

    .line 366
    :cond_0
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 368
    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    .line 369
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 370
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 372
    .local v2, progParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 373
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 376
    return-object v1
.end method

.method protected initSavedInstance(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    const-string v0, "videoCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    .line 107
    const-string v0, "videoCompletedOnce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    .line 109
    const-string v0, "videoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    .line 110
    const-string v0, "hasBottomBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    .line 111
    const-string v0, "shouldSetUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    .line 113
    :cond_0
    return-void
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected logButtonEvent(Lcom/millennialmedia/android/VideoImage;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 402
    const-string v1, "VideoPlayerActivity"

    const-string v2, "Cached video button event logged"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 404
    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    .line 535
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 538
    :cond_0
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video player on complete"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 81
    const v1, 0x1030005

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->setTheme(I)V

    .line 82
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v1, "VideoPlayerActivity"

    const-string v2, "Setting up the video player"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initWindow()V

    .line 87
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->initSavedInstance(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initRedirectListener()V

    .line 90
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 92
    .local v0, parent:Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 632
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    .line 633
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 606
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    if-nez v0, :cond_0

    .line 608
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 580
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onPause()V

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    .line 582
    const-string v0, "VideoPlayerActivity"

    const-string v1, "VideoPlayer - onPause"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideo()V

    .line 584
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 545
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video Prepared"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 655
    const-string v0, "currentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    .line 657
    const-string v0, "isVideoCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    .line 658
    const-string v0, "isVideoCompletedOnce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    .line 660
    const-string v0, "hasBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    .line 662
    const-string v0, "shouldSetUri"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    .line 664
    const-string v0, "isUserPausing"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    .line 666
    const-string v0, "isPaused"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    .line 667
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 668
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 564
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onResume()V

    .line 565
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 566
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    .line 568
    const-string v0, "VideoPlayerActivity"

    const-string v1, "VideoPlayer - onResume"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    .line 571
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 642
    const-string v0, "currentVideoPosition"

    iget v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    const-string v0, "isVideoCompleted"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    const-string v0, "isVideoCompletedOnce"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 645
    const-string v0, "hasBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 646
    const-string v0, "shouldSetUri"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 647
    const-string v0, "isUserPausing"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 648
    const-string v0, "isPaused"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 649
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 650
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 589
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onWindowFocusChanged(Z)V

    .line 590
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasFocus:Z

    .line 591
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    .line 594
    :cond_0
    return-void
.end method

.method protected pauseVideo()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    .line 682
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 683
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video paused"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_0
    return-void
.end method

.method protected pauseVideoByUser()V
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    .line 673
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideo()V

    .line 674
    return-void
.end method

.method protected playVideo(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 417
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    .line 418
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 419
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, fullPath:Ljava/lang/String;
    const-string v3, "VideoPlayerActivity"

    const-string v4, "playVideo path: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-nez v3, :cond_1

    .line 425
    :cond_0
    const-string v3, "no name or null videoview"

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/VideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    .line 438
    .end local v1           #fullPath:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 427
    .restart local v1       #fullPath:Ljava/lang/String;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    .line 428
    iget-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v3, :cond_2

    .line 429
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 432
    :cond_2
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->startVideo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    .end local v1           #fullPath:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VideoPlayerActivity"

    const-string v4, "playVideo error: "

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/VideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method processVideoPlayerUri(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 204
    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity$1;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method protected restartVideo()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Restart Video."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    .line 224
    :cond_0
    return-void
.end method

.method protected resumeVideo()V
    .locals 1

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    .line 699
    :cond_0
    return-void
.end method

.method protected setButtonAlpha(Landroid/widget/ImageButton;F)V
    .locals 4
    .parameter "button"
    .parameter "alpha"

    .prologue
    const/4 v3, 0x1

    .line 386
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 387
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 388
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 389
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 390
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 391
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 392
    return-void
.end method
