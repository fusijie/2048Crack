.class Lcom/mdotm/android/view/MdotMActivity$4;
.super Ljava/lang/Thread;
.source "MdotMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->clicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMActivity;

.field private final synthetic val$clickedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->val$clickedUrl:Ljava/lang/String;

    .line 530
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMActivity$4;)Lcom/mdotm/android/view/MdotMActivity;
    .locals 1
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 534
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v2}, Lcom/mdotm/android/view/MdotMActivity;->adClicked()V

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launch type is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    #getter for: Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;
    invoke-static {v3}, Lcom/mdotm/android/view/MdotMActivity;->access$4(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/model/MdotMAdResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getLaunchType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    #getter for: Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMActivity;->access$4(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/model/MdotMAdResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getLaunchType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 538
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 539
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity$4;->val$clickedUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 538
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 540
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v2, v1}, Lcom/mdotm/android/view/MdotMActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    .line 562
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    #getter for: Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMActivity;->access$1(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    #getter for: Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMActivity;->access$1(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/mdotm/android/listener/InterstitialActionListener;->onLeave()V

    .line 577
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 546
    .restart local v1       #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not open browser on ad click to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 549
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iget-object v2, v2, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/mdotm/android/view/MdotMActivity$4$1;

    iget-object v4, p0, Lcom/mdotm/android/view/MdotMActivity$4;->val$clickedUrl:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/mdotm/android/view/MdotMActivity$4$1;-><init>(Lcom/mdotm/android/view/MdotMActivity$4;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
