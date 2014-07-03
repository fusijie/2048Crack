.class final Lcom/nextpeer/android/bf;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/bd;

.field private final synthetic b:Ljava/util/Collection;

.field private final synthetic c:Lcom/nextpeer/android/dm;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/bd;Ljava/util/Collection;Lcom/nextpeer/android/dm;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    iput-object p2, p0, Lcom/nextpeer/android/bf;->b:Ljava/util/Collection;

    iput-object p3, p0, Lcom/nextpeer/android/bf;->c:Lcom/nextpeer/android/dm;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 13

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/a/a/ba;

    invoke-direct {v2}, Lcom/a/a/ba;-><init>()V

    invoke-static {p1}, Lcom/a/a/ba;->a(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/av;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/a/a/av;->k()Lcom/a/a/ay;

    move-result-object v2

    const-string v3, "matchId"

    invoke-virtual {v2, v3}, Lcom/a/a/ay;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "matchId"

    invoke-virtual {v2, v1}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/av;->e()I

    move-result v1

    move v9, v1

    :goto_0
    if-nez v9, :cond_0

    const-string v1, "Create match failed - could not extract matchId from valid request"

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/bd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v1}, Lcom/nextpeer/android/bd;->d(Lcom/nextpeer/android/bd;)V

    iget-object v1, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v1}, Lcom/nextpeer/android/bd;->e(Lcom/nextpeer/android/bd;)V

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/nextpeer/android/hl;->a(I)Lcom/nextpeer/android/dn;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nextpeer/android/bf;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/nextpeer/android/do;

    const/16 v2, -0x3e7

    const/16 v3, -0x3e7

    sget-object v4, Lcom/nextpeer/android/do$ac;->a:Lcom/nextpeer/android/do$ac;

    iget-object v5, v10, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v5}, Lcom/nextpeer/android/hl$ab;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v10, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v6, v6, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    iget-object v7, v10, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v7}, Lcom/nextpeer/android/hl$ab;->b()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/nextpeer/android/do;-><init>(IILcom/nextpeer/android/do$ac;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/nextpeer/android/dn;

    iget-object v2, v10, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v2, v2, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/nextpeer/android/bf;->c:Lcom/nextpeer/android/dm;

    invoke-virtual {v3}, Lcom/nextpeer/android/dm;->e()I

    move-result v4

    sget-object v3, Lcom/nextpeer/android/dn$aa;->b:Lcom/nextpeer/android/dn$aa;

    invoke-virtual {v3}, Lcom/nextpeer/android/dn$aa;->a()I

    move-result v5

    iget-object v3, p0, Lcom/nextpeer/android/bf;->c:Lcom/nextpeer/android/dm;

    invoke-virtual {v3}, Lcom/nextpeer/android/dm;->c()Ljava/lang/String;

    move-result-object v7

    move v3, v9

    move-object v6, v11

    invoke-direct/range {v1 .. v7}, Lcom/nextpeer/android/dn;-><init>(Ljava/lang/String;IIILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lcom/nextpeer/android/hl;->a(Lcom/nextpeer/android/dn;)V

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v1}, Lcom/nextpeer/android/bd;->b(Lcom/nextpeer/android/bd;)Lcom/nextpeer/android/ba;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v1, v1, Lcom/nextpeer/android/gr;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v1}, Lcom/nextpeer/android/bd;->c(Lcom/nextpeer/android/bd;)V

    :cond_2
    iget-object v1, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    iget-object v2, p0, Lcom/nextpeer/android/bf;->c:Lcom/nextpeer/android/dm;

    invoke-static {v1, v2, v9}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/bd;Lcom/nextpeer/android/dm;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Create match failed parsing with error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/bd;)V

    goto/16 :goto_1

    :cond_3
    :try_start_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nextpeer/android/av$ab;

    move-object v7, v0

    new-instance v1, Lcom/nextpeer/android/do;

    const/16 v2, -0x3e7

    const/16 v3, -0x3e7

    sget-object v4, Lcom/nextpeer/android/do$ac;->b:Lcom/nextpeer/android/do$ac;

    iget-object v5, v7, Lcom/nextpeer/android/av$ab;->a:Ljava/lang/String;

    iget-object v6, v7, Lcom/nextpeer/android/av$ab;->d:Ljava/lang/String;

    iget-object v7, v7, Lcom/nextpeer/android/av$ab;->b:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/nextpeer/android/do;-><init>(IILcom/nextpeer/android/do$ac;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    const-string v1, "Create match failed - could not parse the JSON request"

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v1}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/bd;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_5
    move v9, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create match failed with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v0}, Lcom/nextpeer/android/bd;->d(Lcom/nextpeer/android/bd;)V

    iget-object v0, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v0}, Lcom/nextpeer/android/bd;->e(Lcom/nextpeer/android/bd;)V

    iget-object v0, p0, Lcom/nextpeer/android/bf;->a:Lcom/nextpeer/android/bd;

    invoke-static {v0}, Lcom/nextpeer/android/bd;->a(Lcom/nextpeer/android/bd;)V

    return-void
.end method
