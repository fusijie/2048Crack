.class Lcom/mdotm/android/vast/VastInterstitialActivity$5;
.super Ljava/lang/Thread;
.source "VastInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->clicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

.field private final synthetic val$clickedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    iput-object p2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$clickedUrl:Ljava/lang/String;

    .line 397
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 400
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked()V

    .line 401
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 402
    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$clickedUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 401
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    :try_start_0
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v2, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    #getter for: Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;
    invoke-static {v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$6(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    #getter for: Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;
    invoke-static {v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$6(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/mdotm/android/listener/InterstitialActionListener;->onLeave()V

    .line 420
    :cond_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not open browser on ad click to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
