.class Lcom/nextpeer/android/facebook/Session$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/Session;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$2;->this$0:Lcom/nextpeer/android/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$2;->this$0:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$2;->this$0:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$2;->this$0:Lcom/nextpeer/android/facebook/Session;

    #getter for: Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->access$5(Lcom/nextpeer/android/facebook/Session;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Session$StatusCallback;

    new-instance v4, Lcom/nextpeer/android/facebook/Session$2$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/nextpeer/android/facebook/Session$2$1;-><init>(Lcom/nextpeer/android/facebook/Session$2;Lcom/nextpeer/android/facebook/Session$StatusCallback;Ljava/lang/String;Ljava/util/Date;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$2;->this$0:Lcom/nextpeer/android/facebook/Session;

    #getter for: Lcom/nextpeer/android/facebook/Session;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->access$6(Lcom/nextpeer/android/facebook/Session;)Landroid/os/Handler;

    move-result-object v0

    #calls: Lcom/nextpeer/android/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    invoke-static {v0, v4}, Lcom/nextpeer/android/facebook/Session;->access$7(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
