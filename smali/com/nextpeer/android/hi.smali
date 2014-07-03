.class final Lcom/nextpeer/android/hi;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/hh;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/nextpeer/android/hh;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    iput-boolean p2, p0, Lcom/nextpeer/android/hi;->b:Z

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "Entrypoint held - should reauthenticate"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v0}, Lcom/nextpeer/android/hh;->e(Lcom/nextpeer/android/hh;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    const-class v2, Lcom/nextpeer/android/do;

    new-instance v3, Lcom/nextpeer/android/do$aa;

    invoke-direct {v3}, Lcom/nextpeer/android/do$aa;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/a/a/aq;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/aq;->a()Lcom/a/a/ak;

    move-result-object v0

    const-class v2, Lcom/nextpeer/android/hl;

    invoke-virtual {v0, p1, v2}, Lcom/a/a/ak;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/hl;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/nextpeer/android/hl;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v0}, Lcom/nextpeer/android/hh;->a(Lcom/nextpeer/android/hl;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v0}, Lcom/nextpeer/android/hh;->b(Lcom/nextpeer/android/hl;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Entrypoint completed successfully"

    invoke-static {v2}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v2, v0}, Lcom/nextpeer/android/hh;->a(Lcom/nextpeer/android/hh;Lcom/nextpeer/android/hl;)V

    iget-boolean v0, p0, Lcom/nextpeer/android/hi;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    iget-object v0, v0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hk;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    iget-object v0, v0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hk;->d(Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v0}, Lcom/nextpeer/android/hh;->b(Lcom/nextpeer/android/hh;)V

    :goto_2
    iget-object v0, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v0}, Lcom/nextpeer/android/hh;->d(Lcom/nextpeer/android/hh;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Entrypoint failed to parse profile with error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    iget-object v0, v0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    invoke-virtual {v0}, Lcom/nextpeer/android/hk;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v1}, Lcom/nextpeer/android/hh;->a(Lcom/nextpeer/android/hh;)Lcom/nextpeer/android/hl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/hl;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    iget-object v0, v0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    invoke-virtual {v0}, Lcom/nextpeer/android/hk;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v1}, Lcom/nextpeer/android/hh;->a(Lcom/nextpeer/android/hh;)Lcom/nextpeer/android/hl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/hl;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "Entrypoint failed - could not parse the response content"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v0}, Lcom/nextpeer/android/hh;->c(Lcom/nextpeer/android/hh;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entrypoint failed with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and content string is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/hi;->a:Lcom/nextpeer/android/hh;

    invoke-static {v0}, Lcom/nextpeer/android/hh;->c(Lcom/nextpeer/android/hh;)V

    return-void
.end method
