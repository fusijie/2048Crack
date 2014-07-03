.class Lcom/mdotm/android/view/MdotMBannerView$2;
.super Ljava/lang/Thread;
.source "MdotMBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMBannerView;->clicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMBannerView;

.field private final synthetic val$clickedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMBannerView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->val$clickedUrl:Ljava/lang/String;

    .line 593
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMBannerView$2;)Lcom/mdotm/android/view/MdotMBannerView;
    .locals 1
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 597
    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destination url is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->val$clickedUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 598
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #getter for: Lcom/mdotm/android/view/MdotMBannerView;->mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMBannerView;->access$3(Lcom/mdotm/android/view/MdotMBannerView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/mdotm/android/listener/MdotMAdActionListener;->adClicked()V

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launch type is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #getter for: Lcom/mdotm/android/view/MdotMBannerView;->launchType:I
    invoke-static {v3}, Lcom/mdotm/android/view/MdotMBannerView;->access$5(Lcom/mdotm/android/view/MdotMBannerView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 602
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #getter for: Lcom/mdotm/android/view/MdotMBannerView;->launchType:I
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMBannerView;->access$5(Lcom/mdotm/android/view/MdotMBannerView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 605
    new-instance v1, Landroid/content/Intent;

    .line 606
    const-string v2, "android.intent.action.VIEW"

    .line 607
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->val$clickedUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 605
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 608
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    const-string v2, "BannerAd"

    const-string v3, "clicked and new flag activity created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :try_start_0
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    invoke-virtual {v2}, Lcom/mdotm/android/view/MdotMBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #getter for: Lcom/mdotm/android/view/MdotMBannerView;->mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMBannerView;->access$3(Lcom/mdotm/android/view/MdotMBannerView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/mdotm/android/listener/MdotMAdActionListener;->leaveApplication()V

    .line 624
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #calls: Lcom/mdotm/android/view/MdotMBannerView;->adNetworkCompleted()V
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMBannerView;->access$1(Lcom/mdotm/android/view/MdotMBannerView;)V

    .line 638
    .end local v1           #i:Landroid/content/Intent;
    :goto_1
    return-void

    .line 616
    .restart local v1       #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 619
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not open browser on ad click to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    iget-object v2, v2, Lcom/mdotm/android/view/MdotMBannerView;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/mdotm/android/view/MdotMBannerView$2$1;

    iget-object v4, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->val$clickedUrl:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/mdotm/android/view/MdotMBannerView$2$1;-><init>(Lcom/mdotm/android/view/MdotMBannerView$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
