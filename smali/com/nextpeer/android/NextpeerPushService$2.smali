.class Lcom/nextpeer/android/NextpeerPushService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/NextpeerPushService;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/NextpeerPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->f(Lcom/nextpeer/android/NextpeerPushService;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->g(Lcom/nextpeer/android/NextpeerPushService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->h(Lcom/nextpeer/android/NextpeerPushService;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->i(Lcom/nextpeer/android/NextpeerPushService;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {}, Lcom/nextpeer/android/NextpeerPushService;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0}, Lcom/nextpeer/android/NextpeerPushService;->a(Ljava/lang/String;I)La/a/a/a/a/ai;

    move-result-object v8

    const-wide/high16 v0, 0x3ff0

    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v4}, Lcom/nextpeer/android/NextpeerPushService;->e(Lcom/nextpeer/android/NextpeerPushService;)La/a/a/a/a/ag;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v4}, Lcom/nextpeer/android/NextpeerPushService;->e(Lcom/nextpeer/android/NextpeerPushService;)La/a/a/a/a/ag;

    move-result-object v4

    invoke-virtual {v4}, La/a/a/a/a/ag;->b()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Push Service connection attempt number "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nextpeer/android/bk;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v2, v3, :cond_4

    const-wide/high16 v4, 0x3ffc

    mul-double/2addr v4, v0

    const-wide v0, 0x4062c00000000000L

    :try_start_1
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Push Service connection sleeping for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->e(Ljava/lang/String;)V

    const-wide v0, 0x408f400000000000L

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v0, v4

    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v4}, Lcom/nextpeer/android/NextpeerPushService;->j(Lcom/nextpeer/android/NextpeerPushService;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nextpeer/android/NextpeerPushService$2;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v5}, Lcom/nextpeer/android/NextpeerPushService;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/nextpeer/android/NextpeerPushService;->a(Lcom/nextpeer/android/NextpeerPushService;La/a/a/a/a/ai;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string v4, "Push Service tried to connect, but network was unavailable"

    invoke-static {v4}, Lcom/nextpeer/android/bk;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Push Service connection failed with error: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v10, v0

    move-wide v0, v4

    move-object v4, v10

    goto :goto_3
.end method
