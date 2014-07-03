.class Lcom/mdotm/android/view/MdotMView$1$1;
.super Ljava/lang/Object;
.source "MdotMView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/view/MdotMView$1;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView$1$1;->this$1:Lcom/mdotm/android/view/MdotMView$1;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$1$1;->this$1:Lcom/mdotm/android/view/MdotMView$1;

    #getter for: Lcom/mdotm/android/view/MdotMView$1;->this$0:Lcom/mdotm/android/view/MdotMView;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView$1;->access$0(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v0

    #getter for: Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView;->access$0(Lcom/mdotm/android/view/MdotMView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MdotMView has focus"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$1$1;->this$1:Lcom/mdotm/android/view/MdotMView$1;

    #getter for: Lcom/mdotm/android/view/MdotMView$1;->this$0:Lcom/mdotm/android/view/MdotMView;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView$1;->access$0(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v1

    #getter for: Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView;->access$0(Lcom/mdotm/android/view/MdotMView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    const-string v0, "Begining next request"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$1$1;->this$1:Lcom/mdotm/android/view/MdotMView$1;

    #getter for: Lcom/mdotm/android/view/MdotMView$1;->this$0:Lcom/mdotm/android/view/MdotMView;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView$1;->access$0(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v0

    #getter for: Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView;->access$1(Lcom/mdotm/android/view/MdotMView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$1$1;->this$1:Lcom/mdotm/android/view/MdotMView$1;

    #getter for: Lcom/mdotm/android/view/MdotMView$1;->this$0:Lcom/mdotm/android/view/MdotMView;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView$1;->access$0(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v1

    #getter for: Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView;->access$2(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/model/MdotMAdRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMView$1$1;->this$1:Lcom/mdotm/android/view/MdotMView$1;

    #getter for: Lcom/mdotm/android/view/MdotMView$1;->this$0:Lcom/mdotm/android/view/MdotMView;
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMView$1;->access$0(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->addRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, "MdotMView does not has focus. So Ad request cancelled"

    .line 178
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
