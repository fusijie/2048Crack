.class Lcom/mdotm/android/view/MdotMView$3;
.super Ljava/lang/Object;
.source "MdotMView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMView;->getVideoViewLayout(Lcom/mdotm/android/model/MdotMAdResponse;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMView;

.field private final synthetic val$response:Lcom/mdotm/android/model/MdotMAdResponse;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMView;Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView$3;->this$0:Lcom/mdotm/android/view/MdotMView;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMView$3;->val$response:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 339
    const-string v1, "video clicked"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$3;->this$0:Lcom/mdotm/android/view/MdotMView;

    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMView;->adClicked()V

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 343
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMView$3;->val$response:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 342
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 345
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$3;->this$0:Lcom/mdotm/android/view/MdotMView;

    #getter for: Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView;->access$1(Lcom/mdotm/android/view/MdotMView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 346
    return-void
.end method
