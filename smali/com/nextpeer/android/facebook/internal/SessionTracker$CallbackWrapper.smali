.class Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/internal/SessionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/internal/SessionTracker;

.field private final wrapped:Lcom/nextpeer/android/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/facebook/internal/SessionTracker;Lcom/nextpeer/android/facebook/Session$StatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/nextpeer/android/facebook/internal/SessionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;->wrapped:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    return-void
.end method


# virtual methods
.method public accessTokenExtended(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    return-void
.end method

.method public call(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;->wrapped:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/nextpeer/android/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;->wrapped:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nextpeer/android/facebook/Session$StatusCallback;->call(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/nextpeer/android/facebook/internal/SessionTracker;

    #getter for: Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->access$1(Lcom/nextpeer/android/facebook/internal/SessionTracker;)Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/nextpeer/android/facebook/internal/SessionTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->setSession(Lcom/nextpeer/android/facebook/Session;)V

    :cond_1
    return-void
.end method
