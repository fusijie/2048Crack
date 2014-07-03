.class public final Lcom/a/a/ak;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/ak$aa;
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/at;

.field final b:Lcom/a/a/bc;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/c/aa",
            "<*>;",
            "Lcom/a/a/ak$aa",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/c/aa",
            "<*>;",
            "Lcom/a/a/bj",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/bk;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/a/a/b/ac;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v4, 0x0

    sget-object v1, Lcom/a/a/b/ap;->a:Lcom/a/a/b/ap;

    sget-object v2, Lcom/a/a/ad;->a:Lcom/a/a/ad;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/a/a/bf;->a:Lcom/a/a/bf;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/a/a/ak;-><init>(Lcom/a/a/b/ap;Lcom/a/a/aj;Ljava/util/Map;ZZZZZZLcom/a/a/bf;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/b/ap;Lcom/a/a/aj;Ljava/util/Map;ZZZZZZLcom/a/a/bf;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/ap;",
            "Lcom/a/a/aj;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/ar",
            "<*>;>;ZZZZZZ",
            "Lcom/a/a/bf;",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/bk;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/a/a/ak;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/ak;->d:Ljava/util/Map;

    new-instance v0, Lcom/a/a/al;

    invoke-direct {v0, p0}, Lcom/a/a/al;-><init>(Lcom/a/a/ak;)V

    iput-object v0, p0, Lcom/a/a/ak;->a:Lcom/a/a/at;

    new-instance v0, Lcom/a/a/am;

    invoke-direct {v0, p0}, Lcom/a/a/am;-><init>(Lcom/a/a/ak;)V

    iput-object v0, p0, Lcom/a/a/ak;->b:Lcom/a/a/bc;

    new-instance v0, Lcom/a/a/b/ac;

    invoke-direct {v0, p3}, Lcom/a/a/b/ac;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/a/a/ak;->f:Lcom/a/a/b/ac;

    iput-boolean p4, p0, Lcom/a/a/ak;->g:Z

    iput-boolean p6, p0, Lcom/a/a/ak;->i:Z

    iput-boolean p7, p0, Lcom/a/a/ak;->h:Z

    iput-boolean p8, p0, Lcom/a/a/ak;->j:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/a/a/b/a/at;->Q:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/ak;->a:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/a/a/b/a/at;->x:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->m:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->g:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->i:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->k:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    sget-object v0, Lcom/a/a/bf;->a:Lcom/a/a/bf;

    if-ne p10, v0, :cond_0

    sget-object v0, Lcom/a/a/b/a/at;->n:Lcom/a/a/bj;

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/a/a/b/a/at;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/bj;)Lcom/a/a/bk;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    if-eqz p9, :cond_1

    sget-object v0, Lcom/a/a/b/a/at;->p:Lcom/a/a/bj;

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/a/a/b/a/at;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/bj;)Lcom/a/a/bk;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    if-eqz p9, :cond_2

    sget-object v0, Lcom/a/a/b/a/at;->o:Lcom/a/a/bj;

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/a/a/b/a/at;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/bj;)Lcom/a/a/bk;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->r:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->t:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->z:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->B:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lcom/a/a/b/a/at;->v:Lcom/a/a/bj;

    invoke-static {v0, v2}, Lcom/a/a/b/a/at;->a(Ljava/lang/Class;Lcom/a/a/bj;)Lcom/a/a/bk;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lcom/a/a/b/a/at;->w:Lcom/a/a/bj;

    invoke-static {v0, v2}, Lcom/a/a/b/a/at;->a(Ljava/lang/Class;Lcom/a/a/bj;)Lcom/a/a/bk;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->D:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->F:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->J:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->O:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->H:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->d:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/ad;->a:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->M:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/aq;->a:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/ao;->a:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->K:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/aa;->a:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->R:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/b/a/at;->b:Lcom/a/a/bk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/a/a/b/a/ac;

    iget-object v2, p0, Lcom/a/a/ak;->f:Lcom/a/a/b/ac;

    invoke-direct {v0, v2}, Lcom/a/a/b/a/ac;-><init>(Lcom/a/a/b/ac;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/a/a/b/a/aj;

    iget-object v2, p0, Lcom/a/a/ak;->f:Lcom/a/a/b/ac;

    invoke-direct {v0, v2, p5}, Lcom/a/a/b/a/aj;-><init>(Lcom/a/a/b/ac;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/a/a/b/a/am;

    iget-object v2, p0, Lcom/a/a/ak;->f:Lcom/a/a/b/ac;

    invoke-direct {v0, v2, p2, p1}, Lcom/a/a/b/a/am;-><init>(Lcom/a/a/b/ac;Lcom/a/a/aj;Lcom/a/a/b/ap;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/ak;->e:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Lcom/a/a/ap;

    invoke-direct {v0, p0}, Lcom/a/a/ap;-><init>(Lcom/a/a/ak;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/a/a/an;

    invoke-direct {v0, p0}, Lcom/a/a/an;-><init>(Lcom/a/a/ak;)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/a/a/ao;

    invoke-direct {v0, p0}, Lcom/a/a/ao;-><init>(Lcom/a/a/ak;)V

    goto/16 :goto_2
.end method

.method private a(Ljava/io/Writer;)Lcom/a/a/d/ad;
    .locals 2

    iget-boolean v0, p0, Lcom/a/a/ak;->i:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/a/a/d/ad;

    invoke-direct {v0, p1}, Lcom/a/a/d/ad;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/a/a/ak;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/a/a/d/ad;->c(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/a/a/ak;->g:Z

    invoke-virtual {v0, v1}, Lcom/a/a/d/ad;->d(Z)V

    return-object v0
.end method

.method private a(Lcom/a/a/d/aa;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/aa;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/a/a/d/aa;->p()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/a/a/d/aa;->a(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/ak;->a(Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/a/a/d/aa;->a(Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/a/a/d/aa;->a(Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/a/a/be;

    invoke-direct {v1, v0}, Lcom/a/a/be;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/a/a/d/aa;->a(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/a/a/be;

    invoke-direct {v1, v0}, Lcom/a/a/be;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/a/a/be;

    invoke-direct {v1, v0}, Lcom/a/a/be;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static synthetic a(D)V
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/bk;Lcom/a/a/c/aa;)Lcom/a/a/bj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/bk;",
            "Lcom/a/a/c/aa",
            "<TT;>;)",
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/ak;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/bk;

    if-nez v1, :cond_2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/a/a/bk;->a(Lcom/a/a/ak;Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method public final a(Lcom/a/a/c/aa;)Lcom/a/a/bj;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/c/aa",
            "<TT;>;)",
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/ak;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/bj;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/ak;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/a/a/ak;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ak$aa;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/a/a/ak$aa;

    invoke-direct {v3}, Lcom/a/a/ak$aa;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/ak;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/a/a/ak;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/bk;

    invoke-interface {v0, p0, p1}, Lcom/a/a/bk;->a(Lcom/a/a/ak;Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lcom/a/a/ak$aa;->a(Lcom/a/a/bj;)V

    iget-object v3, p0, Lcom/a/a/ak;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/ak;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Class;)Lcom/a/a/bj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/a/a/c/aa;->a(Ljava/lang/Class;)Lcom/a/a/c/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/ak;->a(Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/a/a/av;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/av;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/a/af;

    invoke-direct {v0, p1}, Lcom/a/a/b/a/af;-><init>(Lcom/a/a/av;)V

    invoke-direct {p0, v0, p2}, Lcom/a/a/ak;->a(Lcom/a/a/d/aa;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    invoke-static {p2}, Lcom/a/a/b/ay;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/a/a/d/aa;

    invoke-direct {v1, v0}, Lcom/a/a/d/aa;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v1, p2}, Lcom/a/a/ak;->a(Lcom/a/a/d/aa;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v1

    sget-object v2, Lcom/a/a/d/ac;->j:Lcom/a/a/d/ac;

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/a/a/aw;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/a/a/aw;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/a/a/d/ae; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/be;

    invoke-direct {v1, v0}, Lcom/a/a/be;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/a/a/aw;

    invoke-direct {v1, v0}, Lcom/a/a/aw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    sget-object v0, Lcom/a/a/ax;->a:Lcom/a/a/ax;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {v1}, Lcom/a/a/b/az;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/a/a/ak;->a(Ljava/io/Writer;)Lcom/a/a/d/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/d/ad;->g()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/a/a/d/ad;->b(Z)V

    invoke-virtual {v2}, Lcom/a/a/d/ad;->h()Z

    move-result v4

    iget-boolean v5, p0, Lcom/a/a/ak;->h:Z

    invoke-virtual {v2, v5}, Lcom/a/a/d/ad;->c(Z)V

    invoke-virtual {v2}, Lcom/a/a/d/ad;->i()Z

    move-result v5

    iget-boolean v6, p0, Lcom/a/a/ak;->g:Z

    invoke-virtual {v2, v6}, Lcom/a/a/d/ad;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, v2}, Lcom/a/a/b/az;->a(Lcom/a/a/av;Lcom/a/a/d/ad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/a/a/d/ad;->b(Z)V

    invoke-virtual {v2, v4}, Lcom/a/a/d/ad;->c(Z)V

    invoke-virtual {v2, v5}, Lcom/a/a/d/ad;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/a/a/aw;

    invoke-direct {v1, v0}, Lcom/a/a/aw;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v3}, Lcom/a/a/d/ad;->b(Z)V

    invoke-virtual {v2, v4}, Lcom/a/a/d/ad;->c(Z)V

    invoke-virtual {v2, v5}, Lcom/a/a/d/ad;->d(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    invoke-static {v1}, Lcom/a/a/b/az;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/a/a/ak;->a(Ljava/io/Writer;)Lcom/a/a/d/ad;

    move-result-object v2

    invoke-static {v0}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/ak;->a(Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v0

    invoke-virtual {v2}, Lcom/a/a/d/ad;->g()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/a/a/d/ad;->b(Z)V

    invoke-virtual {v2}, Lcom/a/a/d/ad;->h()Z

    move-result v4

    iget-boolean v5, p0, Lcom/a/a/ak;->h:Z

    invoke-virtual {v2, v5}, Lcom/a/a/d/ad;->c(Z)V

    invoke-virtual {v2}, Lcom/a/a/d/ad;->i()Z

    move-result v5

    iget-boolean v6, p0, Lcom/a/a/ak;->g:Z

    invoke-virtual {v2, v6}, Lcom/a/a/d/ad;->d(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    invoke-virtual {v0, v2, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-virtual {v2, v3}, Lcom/a/a/d/ad;->b(Z)V

    invoke-virtual {v2, v4}, Lcom/a/a/d/ad;->c(Z)V

    invoke-virtual {v2, v5}, Lcom/a/a/d/ad;->d(Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_8
    new-instance v1, Lcom/a/a/aw;

    invoke-direct {v1, v0}, Lcom/a/a/aw;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v2, v3}, Lcom/a/a/d/ad;->b(Z)V

    invoke-virtual {v2, v4}, Lcom/a/a/d/ad;->c(Z)V

    invoke-virtual {v2, v5}, Lcom/a/a/d/ad;->d(Z)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    new-instance v1, Lcom/a/a/aw;

    invoke-direct {v1, v0}, Lcom/a/a/aw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/a/a/ak;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/ak;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/ak;->f:Lcom/a/a/b/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
