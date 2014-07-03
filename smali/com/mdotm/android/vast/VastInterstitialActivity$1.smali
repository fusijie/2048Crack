.class Lcom/mdotm/android/vast/VastInterstitialActivity$1;
.super Ljava/lang/Object;
.source "VastInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->showCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$1;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$1;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    #getter for: Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$0(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$1;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    #getter for: Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$0(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    :cond_0
    return-void
.end method
