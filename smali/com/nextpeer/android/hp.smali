.class final Lcom/nextpeer/android/hp;
.super Lcom/c/a/a/ae;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ho;

.field private final synthetic b:Lcom/nextpeer/android/hr;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ho;Lcom/nextpeer/android/hr;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/hp;->a:Lcom/nextpeer/android/ho;

    iput-object p2, p0, Lcom/nextpeer/android/hp;->b:Lcom/nextpeer/android/hr;

    invoke-direct {p0}, Lcom/c/a/a/ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPWebServiceProvider - Received response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Lcom/a/a/ba;

    invoke-direct {v0}, Lcom/a/a/ba;-><init>()V

    invoke-static {p1}, Lcom/a/a/ba;->a(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/av;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/a/a/av;->k()Lcom/a/a/ay;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/a/a/ay;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "sessionToken"

    invoke-virtual {v0, v1}, Lcom/a/a/ay;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "sessionToken"

    invoke-virtual {v0, v1}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/hc;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/hp;->b:Lcom/nextpeer/android/hr;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/hr;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "reauthenticate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/hp;->b:Lcom/nextpeer/android/hr;

    invoke-virtual {v0}, Lcom/nextpeer/android/hr;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nextpeer/android/hp;->b:Lcom/nextpeer/android/hr;

    const-string v2, "Could not parse JSON object"

    invoke-virtual {v1, v0, v2}, Lcom/nextpeer/android/hr;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/hp;->b:Lcom/nextpeer/android/hr;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON response status is not OK, but "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/nextpeer/android/hr;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/hp;->b:Lcom/nextpeer/android/hr;

    const/4 v1, 0x0

    const-string v2, "JSON response status was missing"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/hr;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nextpeer/android/hp;->b:Lcom/nextpeer/android/hr;

    const/4 v1, 0x0

    const-string v2, "JSON response is invalid"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/hr;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPWebServiceProvider - received error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hp;->b:Lcom/nextpeer/android/hr;

    invoke-virtual {v0, p1, p2}, Lcom/nextpeer/android/hr;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
