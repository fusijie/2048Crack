.class final Lcom/nextpeer/android/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/ce;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/cf;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-wide/16 v2, 0x1f40

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    invoke-static {v0}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    invoke-static {v0}, Lcom/nextpeer/android/cf;->b(Lcom/nextpeer/android/cf;)V

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    sget-object v1, Lcom/nextpeer/android/cf$ab;->b:Lcom/nextpeer/android/cf$ab;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cf$ab;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    invoke-static {v0}, Lcom/nextpeer/android/cf;->c(Lcom/nextpeer/android/cf;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    invoke-static {v1}, Lcom/nextpeer/android/cf;->d(Lcom/nextpeer/android/cf;)Ljava/util/TimerTask;

    move-result-object v1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/nextpeer/android/cm;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    invoke-static {v0, p1}, Lcom/nextpeer/android/cf;->b(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cm;)V

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    sget-object v1, Lcom/nextpeer/android/cf$ab;->d:Lcom/nextpeer/android/cf$ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection failed with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cf$ab;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    sget-object v1, Lcom/nextpeer/android/cf$ab;->d:Lcom/nextpeer/android/cf$ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to authenticate with the server with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cf$ab;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    sget-object v1, Lcom/nextpeer/android/cf$ab;->c:Lcom/nextpeer/android/cf$ab;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cf$ab;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    sget-object v1, Lcom/nextpeer/android/cf$ab;->d:Lcom/nextpeer/android/cf$ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read data from the server with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cf$ab;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/ch;->a:Lcom/nextpeer/android/cf;

    sget-object v1, Lcom/nextpeer/android/cf$ab;->d:Lcom/nextpeer/android/cf$ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to write data from the server with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cf$ab;Ljava/lang/Object;)V

    return-void
.end method
