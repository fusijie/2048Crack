.class final Lcom/nextpeer/android/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/dj;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/cf;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ci;->a:Lcom/nextpeer/android/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[NPTablerController] Tabler UDP socket encountered an error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ci;->a:Lcom/nextpeer/android/cf;

    invoke-static {v0}, Lcom/nextpeer/android/cf;->e(Lcom/nextpeer/android/cf;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[NPTablerController] Notification arrived for room "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " which is not the current room. Discarding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ci;->a:Lcom/nextpeer/android/cf;

    invoke-static {v0}, Lcom/nextpeer/android/cf;->f(Lcom/nextpeer/android/cf;)Lcom/nextpeer/android/cj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nextpeer/android/cj;->a([BLjava/lang/String;)V

    goto :goto_0
.end method
