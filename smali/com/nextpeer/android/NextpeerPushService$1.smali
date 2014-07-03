.class Lcom/nextpeer/android/NextpeerPushService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/NextpeerPushService;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/NextpeerPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerPushService$1;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$1;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->e(Lcom/nextpeer/android/NextpeerPushService;)La/a/a/a/a/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$1;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->e(Lcom/nextpeer/android/NextpeerPushService;)La/a/a/a/a/ag;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/ag;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch La/a/a/a/a/ap; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$1;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->d(Lcom/nextpeer/android/NextpeerPushService;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push Service disconnect failed with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$1;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->d(Lcom/nextpeer/android/NextpeerPushService;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerPushService$1;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v1}, Lcom/nextpeer/android/NextpeerPushService;->d(Lcom/nextpeer/android/NextpeerPushService;)V

    throw v0
.end method
