.class Lcom/mdotm/android/view/MdotMBannerView$3;
.super Ljava/lang/Thread;
.source "MdotMBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMBannerView;->showActivityIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMBannerView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMBannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMBannerView$3;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    .line 660
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$3;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #getter for: Lcom/mdotm/android/view/MdotMBannerView;->activityIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->access$6(Lcom/mdotm/android/view/MdotMBannerView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$3;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #getter for: Lcom/mdotm/android/view/MdotMBannerView;->activityIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->access$6(Lcom/mdotm/android/view/MdotMBannerView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$3;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #getter for: Lcom/mdotm/android/view/MdotMBannerView;->activityIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->access$6(Lcom/mdotm/android/view/MdotMBannerView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/mdotm/android/view/MdotMBannerView;->access$7()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    :cond_0
    return-void
.end method
