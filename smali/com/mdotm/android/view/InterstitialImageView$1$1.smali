.class Lcom/mdotm/android/view/InterstitialImageView$1$1;
.super Ljava/lang/Object;
.source "InterstitialImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/view/InterstitialImageView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/view/InterstitialImageView$1;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$1$1;->this$1:Lcom/mdotm/android/view/InterstitialImageView$1;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1$1;->this$1:Lcom/mdotm/android/view/InterstitialImageView$1;

    iget-boolean v0, v0, Lcom/mdotm/android/view/InterstitialImageView$1;->timeout:Z

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "timeout loading landing url"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1$1;->this$1:Lcom/mdotm/android/view/InterstitialImageView$1;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView$1;->this$0:Lcom/mdotm/android/view/InterstitialImageView;
    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView$1;->access$0(Lcom/mdotm/android/view/InterstitialImageView$1;)Lcom/mdotm/android/view/InterstitialImageView;

    move-result-object v0

    #getter for: Lcom/mdotm/android/view/InterstitialImageView;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->access$0(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 122
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1$1;->this$1:Lcom/mdotm/android/view/InterstitialImageView$1;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView$1;->this$0:Lcom/mdotm/android/view/InterstitialImageView;
    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView$1;->access$0(Lcom/mdotm/android/view/InterstitialImageView$1;)Lcom/mdotm/android/view/InterstitialImageView;

    move-result-object v0

    #calls: Lcom/mdotm/android/view/InterstitialImageView;->adNetworkCompleted()V
    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->access$1(Lcom/mdotm/android/view/InterstitialImageView;)V

    .line 123
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1$1;->this$1:Lcom/mdotm/android/view/InterstitialImageView$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mdotm/android/view/InterstitialImageView$1;->timeout:Z

    .line 125
    :cond_0
    return-void
.end method
