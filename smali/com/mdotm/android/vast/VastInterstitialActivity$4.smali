.class Lcom/mdotm/android/vast/VastInterstitialActivity$4;
.super Ljava/lang/Object;
.source "VastInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->getVideoLayout()Landroid/widget/RelativeLayout;
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
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$4;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 364
    .local v0, action:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    if-nez v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$4;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    #getter for: Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z
    invoke-static {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$3(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$4;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    const/4 v2, 0x1

    #setter for: Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z
    invoke-static {v1, v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$4(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V

    .line 368
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$4;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    #calls: Lcom/mdotm/android/vast/VastInterstitialActivity;->clicked()V
    invoke-static {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$5(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    .line 371
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
