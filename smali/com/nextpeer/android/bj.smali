.class final Lcom/nextpeer/android/bj;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/bi;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/bj;->a:Lcom/nextpeer/android/bi;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/bj;->a:Lcom/nextpeer/android/bi;

    invoke-static {v0, p1}, Lcom/nextpeer/android/bi;->a(Lcom/nextpeer/android/bi;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Device Load completed successfully"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Device Load completed, failed to parse the response"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t fetch init settings, error is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/bj;->a:Lcom/nextpeer/android/bi;

    invoke-static {v0}, Lcom/nextpeer/android/bi;->a(Lcom/nextpeer/android/bi;)V

    return-void
.end method
