.class Lcom/nextpeer/android/facebook/Session$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/nextpeer/android/facebook/Session$4;

.field private final synthetic val$callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

.field private final synthetic val$exception:Ljava/lang/Exception;

.field private final synthetic val$newState:Lcom/nextpeer/android/facebook/SessionState;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Session$4;Lcom/nextpeer/android/facebook/Session$StatusCallback;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$4$1;->this$1:Lcom/nextpeer/android/facebook/Session$4;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Session$4$1;->val$callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Session$4$1;->val$newState:Lcom/nextpeer/android/facebook/SessionState;

    iput-object p4, p0, Lcom/nextpeer/android/facebook/Session$4$1;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$4$1;->val$callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session$4$1;->this$1:Lcom/nextpeer/android/facebook/Session$4;

    #getter for: Lcom/nextpeer/android/facebook/Session$4;->this$0:Lcom/nextpeer/android/facebook/Session;
    invoke-static {v1}, Lcom/nextpeer/android/facebook/Session$4;->access$0(Lcom/nextpeer/android/facebook/Session$4;)Lcom/nextpeer/android/facebook/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session$4$1;->val$newState:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session$4$1;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/nextpeer/android/facebook/Session$StatusCallback;->call(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method
