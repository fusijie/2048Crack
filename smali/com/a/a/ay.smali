.class public final Lcom/a/a/ay;
.super Lcom/a/a/av;


# instance fields
.field private final a:Lcom/a/a/b/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/at",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/av;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/av;-><init>()V

    new-instance v0, Lcom/a/a/b/at;

    invoke-direct {v0}, Lcom/a/a/b/at;-><init>()V

    iput-object v0, p0, Lcom/a/a/ay;->a:Lcom/a/a/b/at;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/a/a/av;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/a/a/ax;->a:Lcom/a/a/ax;

    :cond_0
    iget-object v0, p0, Lcom/a/a/ay;->a:Lcom/a/a/b/at;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/at;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/ay;->a:Lcom/a/a/b/at;

    invoke-virtual {v0, p1}, Lcom/a/a/b/at;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/a/a/av;
    .locals 1

    iget-object v0, p0, Lcom/a/a/ay;->a:Lcom/a/a/b/at;

    invoke-virtual {v0, p1}, Lcom/a/a/b/at;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/av;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/a/a/ay;
    .locals 1

    iget-object v0, p0, Lcom/a/a/ay;->a:Lcom/a/a/b/at;

    invoke-virtual {v0, p1}, Lcom/a/a/b/at;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ay;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/a/a/ay;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/a/a/ay;

    iget-object v0, p1, Lcom/a/a/ay;->a:Lcom/a/a/b/at;

    iget-object v1, p0, Lcom/a/a/ay;->a:Lcom/a/a/b/at;

    invoke-virtual {v0, v1}, Lcom/a/a/b/at;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/ay;->a:Lcom/a/a/b/at;

    invoke-virtual {v0}, Lcom/a/a/b/at;->hashCode()I

    move-result v0

    return v0
.end method

.method public final n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/av;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/ay;->a:Lcom/a/a/b/at;

    invoke-virtual {v0}, Lcom/a/a/b/at;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
