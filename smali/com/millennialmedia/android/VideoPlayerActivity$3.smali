.class Lcom/millennialmedia/android/VideoPlayerActivity$3;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->initBottomBar(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideoByUser()V

    .line 296
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    if-nez v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    goto :goto_1

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget v1, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    goto :goto_1
.end method
