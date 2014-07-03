.class Lcom/mdotm/android/view/InterstitialImageView$4;
.super Ljava/lang/Thread;
.source "InterstitialImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView;->clicked(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/InterstitialImageView;

.field private final synthetic val$clickedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    iput-object p2, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->val$clickedUrl:Ljava/lang/String;

    .line 546
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/InterstitialImageView$4;)Lcom/mdotm/android/view/InterstitialImageView;
    .locals 1
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 550
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    iget-object v3, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView;->mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;
    invoke-static {v3}, Lcom/mdotm/android/view/InterstitialImageView;->access$3(Lcom/mdotm/android/view/InterstitialImageView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/mdotm/android/listener/MdotMAdActionListener;->adClicked()V

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launch type is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView;->launchType:I
    invoke-static {v4}, Lcom/mdotm/android/view/InterstitialImageView;->access$9(Lcom/mdotm/android/view/InterstitialImageView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView;->launchType:I
    invoke-static {v3}, Lcom/mdotm/android/view/InterstitialImageView;->access$9(Lcom/mdotm/android/view/InterstitialImageView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 559
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 560
    iget-object v4, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->val$clickedUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 559
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 561
    .local v2, i:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 565
    :try_start_1
    iget-object v3, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-virtual {v3}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    :goto_1
    iget-object v3, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView;->mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;
    invoke-static {v3}, Lcom/mdotm/android/view/InterstitialImageView;->access$3(Lcom/mdotm/android/view/InterstitialImageView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/mdotm/android/listener/MdotMAdActionListener;->leaveApplication()V

    .line 575
    iget-object v3, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    #calls: Lcom/mdotm/android/view/InterstitialImageView;->adNetworkCompleted()V
    invoke-static {v3}, Lcom/mdotm/android/view/InterstitialImageView;->access$1(Lcom/mdotm/android/view/InterstitialImageView;)V

    .line 588
    .end local v2           #i:Landroid/content/Intent;
    :goto_2
    return-void

    .line 551
    :catch_0
    move-exception v1

    .line 553
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 567
    .end local v1           #e1:Ljava/lang/InterruptedException;
    .restart local v2       #i:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 570
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not open browser on ad click to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 570
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 579
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v3, v3, Lcom/mdotm/android/view/InterstitialImageView;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/mdotm/android/view/InterstitialImageView$4$1;

    iget-object v5, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->val$clickedUrl:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/mdotm/android/view/InterstitialImageView$4$1;-><init>(Lcom/mdotm/android/view/InterstitialImageView$4;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
