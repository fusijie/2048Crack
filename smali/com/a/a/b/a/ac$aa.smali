.class final Lcom/a/a/b/a/ac$aa;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/bj",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bj",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/b/ax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ax",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/ak;Ljava/lang/reflect/Type;Lcom/a/a/bj;Lcom/a/a/b/ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/ak;",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/bj",
            "<TE;>;",
            "Lcom/a/a/b/ax",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    new-instance v0, Lcom/a/a/b/a/as;

    invoke-direct {v0, p1, p3, p2}, Lcom/a/a/b/a/as;-><init>(Lcom/a/a/ak;Lcom/a/a/bj;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/a/a/b/a/ac$aa;->a:Lcom/a/a/bj;

    iput-object p4, p0, Lcom/a/a/b/a/ac$aa;->b:Lcom/a/a/b/ax;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/ac;->i:Lcom/a/a/d/ac;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a/ac$aa;->b:Lcom/a/a/b/ax;

    invoke-interface {v0}, Lcom/a/a/b/ax;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/a/a/d/aa;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/d/aa;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/aa;->b()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/a/a/b/a/ac$aa;->a:Lcom/a/a/bj;

    invoke-virtual {v1, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final synthetic a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/ad;->f()Lcom/a/a/d/ad;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/ad;->b()Lcom/a/a/d/ad;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/ad;->c()Lcom/a/a/d/ad;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/b/a/ac$aa;->a:Lcom/a/a/bj;

    invoke-virtual {v2, p1, v0}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    goto :goto_1
.end method
