.class Lcom/nextpeer/android/facebook/Session$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/Session;

.field private final synthetic val$exception:Ljava/lang/Exception;

.field private final synthetic val$newState:Lcom/nextpeer/android/facebook/SessionState;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$4;->this$0:Lcom/nextpeer/android/facebook/Session;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Session$4;->val$newState:Lcom/nextpeer/android/facebook/SessionState;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Session$4;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nextpeer/android/facebook/Session$4;)Lcom/nextpeer/android/facebook/Session;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$4;->this$0:Lcom/nextpeer/android/facebook/Session;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$4;->this$0:Lcom/nextpeer/android/facebook/Session;

    #getter for: Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->access$5(Lcom/nextpeer/android/facebook/Session;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Session$StatusCallback;

    new-instance v2, Lcom/nextpeer/android/facebook/Session$4$1;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session$4;->val$newState:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v4, p0, Lcom/nextpeer/android/facebook/Session$4;->val$exception:Ljava/lang/Exception;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/nextpeer/android/facebook/Session$4$1;-><init>(Lcom/nextpeer/android/facebook/Session$4;Lcom/nextpeer/android/facebook/Session$StatusCallback;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$4;->this$0:Lcom/nextpeer/android/facebook/Session;

    #getter for: Lcom/nextpeer/android/facebook/Session;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->access$6(Lcom/nextpeer/android/facebook/Session;)Landroid/os/Handler;

    move-result-object v0

    #calls: Lcom/nextpeer/android/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    invoke-static {v0, v2}, Lcom/nextpeer/android/facebook/Session;->access$7(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
