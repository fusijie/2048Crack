.class final Lcom/nextpeer/android/ed;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eb;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ed;->a:Lcom/nextpeer/android/eb;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/a/a/ak;

    invoke-direct {v1}, Lcom/a/a/ak;-><init>()V

    new-instance v0, Lcom/nextpeer/android/ee;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/ee;-><init>(Lcom/nextpeer/android/ed;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/ee;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v0, Lcom/a/a/ba;

    invoke-direct {v0}, Lcom/a/a/ba;-><init>()V

    invoke-static {p1}, Lcom/a/a/ba;->a(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    check-cast v0, Lcom/a/a/ay;

    const-string v3, "avatars"

    invoke-virtual {v0, v3}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/a/a/ak;->a(Lcom/a/a/av;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "Failed parsing the avatar list as its empty"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ed;->a:Lcom/nextpeer/android/eb;

    invoke-static {v0}, Lcom/nextpeer/android/eb;->d(Lcom/nextpeer/android/eb;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/nextpeer/android/ed;->a:Lcom/nextpeer/android/eb;

    const-string v3, "selectedAvatar"

    invoke-virtual {v0, v3}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/av;->e()I

    move-result v0

    invoke-static {v2, v0}, Lcom/nextpeer/android/eb;->a(Lcom/nextpeer/android/eb;I)V

    iget-object v0, p0, Lcom/nextpeer/android/ed;->a:Lcom/nextpeer/android/eb;

    iget-object v2, p0, Lcom/nextpeer/android/ed;->a:Lcom/nextpeer/android/eb;

    invoke-static {v2}, Lcom/nextpeer/android/eb;->e(Lcom/nextpeer/android/eb;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/eb;->a(Lcom/nextpeer/android/eb;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed while parsing avatars list with error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ed;->a:Lcom/nextpeer/android/eb;

    invoke-static {v0}, Lcom/nextpeer/android/eb;->d(Lcom/nextpeer/android/eb;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed while fetching avatars list with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ed;->a:Lcom/nextpeer/android/eb;

    invoke-static {v0}, Lcom/nextpeer/android/eb;->c(Lcom/nextpeer/android/eb;)V

    iget-object v0, p0, Lcom/nextpeer/android/ed;->a:Lcom/nextpeer/android/eb;

    invoke-static {v0}, Lcom/nextpeer/android/eb;->d(Lcom/nextpeer/android/eb;)V

    return-void
.end method
