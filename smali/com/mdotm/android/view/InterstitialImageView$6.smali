.class Lcom/mdotm/android/view/InterstitialImageView$6;
.super Ljava/lang/Thread;
.source "InterstitialImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView;->hideActivityIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/InterstitialImageView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$6;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    .line 623
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$6;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->access$10(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$6;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->access$10(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 631
    :cond_0
    return-void
.end method
