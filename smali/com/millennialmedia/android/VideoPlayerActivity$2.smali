.class Lcom/millennialmedia/android/VideoPlayerActivity$2;
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
    .line 280
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 286
    :cond_0
    return-void
.end method
