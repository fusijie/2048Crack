.class public final Lcom/a/a/b/a/am$aa;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/bj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/ax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ax",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/b/a/am$ab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/a/a/b/ax;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/ax",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/b/a/am$ab;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/am$aa;->a:Lcom/a/a/b/ax;

    iput-object p2, p0, Lcom/a/a/b/a/am$aa;->b:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/ax;Ljava/util/Map;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/a/a/b/a/am$aa;-><init>(Lcom/a/a/b/ax;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/aa;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/ac;->i:Lcom/a/a/d/ac;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a/am$aa;->a:Lcom/a/a/b/ax;

    invoke-interface {v0}, Lcom/a/a/b/ax;->a()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d/aa;->c()V

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/d/aa;->e()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/aa;->d()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/a/a/d/aa;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/b/a/am$aa;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/am$ab;

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/a/a/b/a/am$ab;->e:Z

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/d/aa;->n()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/be;

    invoke-direct {v1, v0}, Lcom/a/a/be;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_2
    invoke-virtual {v0, p1, v1}, Lcom/a/a/b/a/am$ab;->a(Lcom/a/a/d/aa;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/ad;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/ad;->f()Lcom/a/a/d/ad;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/ad;->d()Lcom/a/a/d/ad;

    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/a/am$aa;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/a/a/d/ad;->e()Lcom/a/a/d/ad;

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/am$ab;

    iget-boolean v2, v0, Lcom/a/a/b/a/am$ab;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/a/a/b/a/am$ab;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/a/am$ab;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
