.class public final Lcom/a/a/aq;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/a/a/b/ap;

.field private b:Lcom/a/a/bf;

.field private c:Lcom/a/a/aj;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/ar",
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

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/bk;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/a/a/b/ap;->a:Lcom/a/a/b/ap;

    iput-object v0, p0, Lcom/a/a/aq;->a:Lcom/a/a/b/ap;

    sget-object v0, Lcom/a/a/bf;->a:Lcom/a/a/bf;

    iput-object v0, p0, Lcom/a/a/aq;->b:Lcom/a/a/bf;

    sget-object v0, Lcom/a/a/ad;->a:Lcom/a/a/ad;

    iput-object v0, p0, Lcom/a/a/aq;->c:Lcom/a/a/aj;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/aq;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/aq;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/aq;->f:Ljava/util/List;

    iput v1, p0, Lcom/a/a/aq;->i:I

    iput v1, p0, Lcom/a/a/aq;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/aq;->m:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/ak;
    .locals 12

    const/4 v5, 0x2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/a/a/aq;->e:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/a/a/aq;->f:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/a/a/aq;->h:Ljava/lang/String;

    iget v2, p0, Lcom/a/a/aq;->i:I

    iget v3, p0, Lcom/a/a/aq;->j:I

    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/a/a/aa;

    invoke-direct {v0, v1}, Lcom/a/a/aa;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/a/a/c/aa;->a(Ljava/lang/Class;)Lcom/a/a/c/aa;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/a/bi;->a(Lcom/a/a/c/aa;Ljava/lang/Object;)Lcom/a/a/bk;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/a/a/c/aa;->a(Ljava/lang/Class;)Lcom/a/a/c/aa;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/a/bi;->a(Lcom/a/a/c/aa;Ljava/lang/Object;)Lcom/a/a/bk;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/a/a/c/aa;->a(Ljava/lang/Class;)Lcom/a/a/c/aa;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/a/bi;->a(Lcom/a/a/c/aa;Ljava/lang/Object;)Lcom/a/a/bk;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/a/a/ak;

    iget-object v1, p0, Lcom/a/a/aq;->a:Lcom/a/a/b/ap;

    iget-object v2, p0, Lcom/a/a/aq;->c:Lcom/a/a/aj;

    iget-object v3, p0, Lcom/a/a/aq;->d:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/a/a/aq;->g:Z

    iget-boolean v5, p0, Lcom/a/a/aq;->k:Z

    iget-boolean v6, p0, Lcom/a/a/aq;->o:Z

    iget-boolean v7, p0, Lcom/a/a/aq;->m:Z

    iget-boolean v8, p0, Lcom/a/a/aq;->n:Z

    iget-boolean v9, p0, Lcom/a/a/aq;->l:Z

    iget-object v10, p0, Lcom/a/a/aq;->b:Lcom/a/a/bf;

    invoke-direct/range {v0 .. v11}, Lcom/a/a/ak;-><init>(Lcom/a/a/b/ap;Lcom/a/a/aj;Ljava/util/Map;ZZZZZZLcom/a/a/bf;Ljava/util/List;)V

    return-object v0

    :cond_1
    if-eq v2, v5, :cond_0

    if-eq v3, v5, :cond_0

    new-instance v0, Lcom/a/a/aa;

    invoke-direct {v0, v2, v3}, Lcom/a/a/aa;-><init>(II)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/a/a/aq;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p2, Lcom/a/a/bd;

    if-nez v0, :cond_4

    instance-of v0, p2, Lcom/a/a/au;

    if-nez v0, :cond_4

    instance-of v0, p2, Lcom/a/a/ar;

    if-nez v0, :cond_4

    instance-of v0, p2, Lcom/a/a/bj;

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/a/a/b/aa;->a(Z)V

    instance-of v0, p2, Lcom/a/a/ar;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/a/a/aq;->d:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/a/a/ar;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, Lcom/a/a/bd;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/a/a/au;

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a/aq;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v0}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_5

    :goto_1
    new-instance v4, Lcom/a/a/bi$aa;

    invoke-direct {v4, p2, v0, v2, v1}, Lcom/a/a/bi$aa;-><init>(Ljava/lang/Object;Lcom/a/a/c/aa;ZB)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v0, p2, Lcom/a/a/bj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/aq;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v1

    check-cast p2, Lcom/a/a/bj;

    invoke-static {v1, p2}, Lcom/a/a/b/a/at;->a(Lcom/a/a/c/aa;Lcom/a/a/bj;)Lcom/a/a/bk;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1
.end method
