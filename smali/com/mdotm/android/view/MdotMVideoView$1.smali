.class Lcom/mdotm/android/view/MdotMVideoView$1;
.super Ljava/lang/Object;
.source "MdotMVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMVideoView;->stopVideo(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMVideoView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMVideoView$1;->this$0:Lcom/mdotm/android/view/MdotMVideoView;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    const-string v0, "Call report impression image"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMVideoView$1;->this$0:Lcom/mdotm/android/view/MdotMVideoView;

    iget-object v1, v1, Lcom/mdotm/android/view/MdotMVideoView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImp_pixel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMVideoView$1;->this$0:Lcom/mdotm/android/view/MdotMVideoView;

    iget-object v2, v2, Lcom/mdotm/android/view/MdotMVideoView;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMVideoView$1;->this$0:Lcom/mdotm/android/view/MdotMVideoView;

    const/4 v1, 0x1

    #setter for: Lcom/mdotm/android/view/MdotMVideoView;->mDidImpressionRecoded:Z
    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMVideoView;->access$0(Lcom/mdotm/android/view/MdotMVideoView;Z)V

    .line 100
    return-void
.end method
