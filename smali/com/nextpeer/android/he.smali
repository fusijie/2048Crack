.class final Lcom/nextpeer/android/he;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/hc;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/hc;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/he;->a:Lcom/nextpeer/android/hc;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/a/a/ba;

    invoke-direct {v0}, Lcom/a/a/ba;-><init>()V

    invoke-static {p1}, Lcom/a/a/ba;->a(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/av;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/a/a/av;->k()Lcom/a/a/ay;

    move-result-object v0

    const-string v1, "userUuid"

    invoke-virtual {v0, v1}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessionToken"

    invoke-virtual {v0, v2}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nextpeer/android/he;->a:Lcom/nextpeer/android/hc;

    sget-object v3, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    invoke-static {v2, v1, v0, v3}, Lcom/nextpeer/android/hc;->a(Lcom/nextpeer/android/hc;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/hc$aa;)V

    const-string v0, "Facebook User registration completed"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/Nextpeer;->a(Lcom/nextpeer/android/hc$aa;)V

    iget-object v0, p0, Lcom/nextpeer/android/he;->a:Lcom/nextpeer/android/hc;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/hc;->a(Lcom/nextpeer/android/hc;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Facebook User registration failed due to JSON parse issue"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/he;->a:Lcom/nextpeer/android/hc;

    invoke-static {v0}, Lcom/nextpeer/android/hc;->a(Lcom/nextpeer/android/hc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Facebook User registration failed due to JSON parse error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/he;->a:Lcom/nextpeer/android/hc;

    invoke-static {v0}, Lcom/nextpeer/android/hc;->a(Lcom/nextpeer/android/hc;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Facebook user registration failed with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/he;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->m()V

    iget-object v0, p0, Lcom/nextpeer/android/he;->a:Lcom/nextpeer/android/hc;

    invoke-static {v0}, Lcom/nextpeer/android/hc;->a(Lcom/nextpeer/android/hc;)V

    return-void
.end method
