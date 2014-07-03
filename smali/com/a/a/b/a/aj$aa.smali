.class final Lcom/a/a/b/a/aj$aa;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/bj",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/a/aj;

.field private final b:Lcom/a/a/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bj",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bj",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/b/ax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ax",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/b/a/aj;Lcom/a/a/ak;Ljava/lang/reflect/Type;Lcom/a/a/bj;Ljava/lang/reflect/Type;Lcom/a/a/bj;Lcom/a/a/b/ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/ak;",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/bj",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/bj",
            "<TV;>;",
            "Lcom/a/a/b/ax",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/b/a/aj$aa;->a:Lcom/a/a/b/a/aj;

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    new-instance v0, Lcom/a/a/b/a/as;

    invoke-direct {v0, p2, p4, p3}, Lcom/a/a/b/a/as;-><init>(Lcom/a/a/ak;Lcom/a/a/bj;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/a/a/b/a/aj$aa;->b:Lcom/a/a/bj;

    new-instance v0, Lcom/a/a/b/a/as;

    invoke-direct {v0, p2, p6, p5}, Lcom/a/a/b/a/as;-><init>(Lcom/a/a/ak;Lcom/a/a/bj;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/a/a/b/a/aj$aa;->c:Lcom/a/a/bj;

    iput-object p7, p0, Lcom/a/a/b/a/aj$aa;->d:Lcom/a/a/b/ax;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v1

    sget-object v0, Lcom/a/a/d/ac;->i:Lcom/a/a/d/ac;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a/aj$aa;->d:Lcom/a/a/b/ax;

    invoke-interface {v0}, Lcom/a/a/b/ax;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/a/a/d/ac;->a:Lcom/a/a/d/ac;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/a/a/d/aa;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/d/aa;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/aa;->b()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/a/a/d/aa;->a()V

    iget-object v1, p0, Lcom/a/a/b/a/aj$aa;->b:Lcom/a/a/bj;

    invoke-virtual {v1, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/a/aj$aa;->c:Lcom/a/a/bj;

    invoke-virtual {v2, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/a/a/be;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/be;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/d/aa;->b()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/a/a/d/aa;->c()V

    :cond_4
    invoke-virtual {p1}, Lcom/a/a/d/aa;->e()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/a/a/d/aa;->d()V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/a/a/b/ar;->a:Lcom/a/a/b/ar;

    invoke-virtual {v1, p1}, Lcom/a/a/b/ar;->a(Lcom/a/a/d/aa;)V

    iget-object v1, p0, Lcom/a/a/b/a/aj$aa;->b:Lcom/a/a/bj;

    invoke-virtual {v1, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/a/aj$aa;->c:Lcom/a/a/bj;

    invoke-virtual {v2, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/a/a/be;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/be;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 8

    const/4 v1, 0x0

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/ad;->f()Lcom/a/a/d/ad;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a/aj$aa;->a:Lcom/a/a/b/a/aj;

    invoke-static {v0}, Lcom/a/a/b/a/aj;->a(Lcom/a/a/b/a/aj;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/a/a/d/ad;->d()Lcom/a/a/d/ad;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/ad;->e()Lcom/a/a/d/ad;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    iget-object v2, p0, Lcom/a/a/b/a/aj$aa;->c:Lcom/a/a/bj;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/a/a/d/ad;->b()Lcom/a/a/d/ad;

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/a/a/d/ad;->c()Lcom/a/a/d/ad;

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/a/a/b/a/aj$aa;->b:Lcom/a/a/bj;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/a/a/bj;->a(Ljava/lang/Object;)Lcom/a/a/av;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/a/a/av;->g()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Lcom/a/a/av;->h()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    or-int/2addr v0, v2

    move v2, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/a/a/d/ad;->b()Lcom/a/a/d/ad;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/av;

    invoke-static {v0, p1}, Lcom/a/a/b/az;->a(Lcom/a/a/av;Lcom/a/a/d/ad;)V

    iget-object v0, p0, Lcom/a/a/b/a/aj$aa;->c:Lcom/a/a/bj;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/a/a/d/ad;->c()Lcom/a/a/d/ad;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/a/a/d/ad;->d()Lcom/a/a/d/ad;

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    invoke-virtual {p1}, Lcom/a/a/d/ad;->e()Lcom/a/a/d/ad;

    goto/16 :goto_0

    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/av;

    invoke-virtual {v0}, Lcom/a/a/av;->i()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/a/a/av;->m()Lcom/a/a/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/bb;->o()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/a/a/bb;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    iget-object v0, p0, Lcom/a/a/b/a/aj$aa;->c:Lcom/a/a/bj;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/a/a/bb;->n()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/a/a/bb;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/a/a/bb;->p()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/a/a/bb;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    invoke-virtual {v0}, Lcom/a/a/av;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "null"

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
