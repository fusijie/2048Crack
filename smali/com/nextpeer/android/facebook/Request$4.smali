.class Lcom/nextpeer/android/facebook/Request$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$callbacks:Ljava/util/ArrayList;

.field private final synthetic val$requests:Lcom/nextpeer/android/facebook/RequestBatch;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/nextpeer/android/facebook/RequestBatch;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Request$4;->val$requests:Lcom/nextpeer/android/facebook/RequestBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$4;->val$requests:Lcom/nextpeer/android/facebook/RequestBatch;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/nextpeer/android/facebook/Request$Callback;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nextpeer/android/facebook/Response;

    invoke-interface {v1, v0}, Lcom/nextpeer/android/facebook/Request$Callback;->onCompleted(Lcom/nextpeer/android/facebook/Response;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/RequestBatch$Callback;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Request$4;->val$requests:Lcom/nextpeer/android/facebook/RequestBatch;

    invoke-interface {v0, v2}, Lcom/nextpeer/android/facebook/RequestBatch$Callback;->onBatchCompleted(Lcom/nextpeer/android/facebook/RequestBatch;)V

    goto :goto_1
.end method