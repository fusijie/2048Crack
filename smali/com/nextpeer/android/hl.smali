.class final Lcom/nextpeer/android/hl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/hl$aa;,
        Lcom/nextpeer/android/hl$ab;,
        Lcom/nextpeer/android/hl$ac;,
        Lcom/nextpeer/android/hl$ad;
    }
.end annotation


# instance fields
.field public final a:Lcom/nextpeer/android/hl$ab;
    .annotation runtime Lcom/a/a/a/ab;
        a = "userDetails"
    .end annotation
.end field

.field public final b:Lcom/nextpeer/android/hl$ad;
    .annotation runtime Lcom/a/a/a/ab;
        a = "settings"
    .end annotation
.end field

.field public final c:Lcom/nextpeer/android/hl$ac;
    .annotation runtime Lcom/a/a/a/ab;
        a = "experience"
    .end annotation
.end field

.field public final d:Lcom/nextpeer/android/hl$aa;
    .annotation runtime Lcom/a/a/a/ab;
        a = "gameData"
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation runtime Lcom/a/a/a/ab;
        a = "tournaments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/dm;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation runtime Lcom/a/a/a/ab;
        a = "currentMatches"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/dn;",
            ">;"
        }
    .end annotation
.end field

.field private transient g:Z

.field private transient h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/dn;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(I)Lcom/nextpeer/android/dn;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/hl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/hl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dn;

    iget v3, v0, Lcom/nextpeer/android/dn;->b:I

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dn;

    iget v3, v0, Lcom/nextpeer/android/dn;->b:I

    if-ne v3, p1, :cond_3

    goto :goto_0
.end method

.method public final a(Lcom/nextpeer/android/dn;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/nextpeer/android/dn;->b:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/hl;->a(I)Lcom/nextpeer/android/dn;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/hl;->h:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/hl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/hl;->g:Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/hl$ab;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/hl;->g:Z

    return-void
.end method

.method public final a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/hl;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/hl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-static {v0}, Lcom/nextpeer/android/hl$ab;->a(Lcom/nextpeer/android/hl$ab;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-static {v3}, Lcom/nextpeer/android/hl$ad;->a(Lcom/nextpeer/android/hl$ad;)Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/hl;->d:Lcom/nextpeer/android/hl$aa;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/nextpeer/android/hl;->d:Lcom/nextpeer/android/hl$aa;

    iget-object v4, v3, Lcom/nextpeer/android/hl$aa;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/nextpeer/android/hl$aa;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/nextpeer/android/hl$aa;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v3, v3, Lcom/nextpeer/android/hl$aa;->d:I

    if-lez v3, :cond_2

    move v3, v1

    :goto_2
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/hl;->c:Lcom/nextpeer/android/hl$ac;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/hl;->c:Lcom/nextpeer/android/hl$ac;

    invoke-static {v0}, Lcom/nextpeer/android/hl$ac;->a(Lcom/nextpeer/android/hl$ac;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    if-nez v0, :cond_4

    :goto_4
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/hl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    move v2, v1

    goto :goto_4

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dm;

    invoke-virtual {v0}, Lcom/nextpeer/android/dm;->f()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dn;

    invoke-virtual {v0}, Lcom/nextpeer/android/dn;->c()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/hl;->g:Z

    return-void
.end method

.method public final b(I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/nextpeer/android/hl;->g:Z

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dn;

    iget v0, v0, Lcom/nextpeer/android/dn;->b:I

    if-ne v0, p1, :cond_4

    move v0, v3

    :goto_2
    if-nez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/hl$ab;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/hl;->g:Z

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/nextpeer/android/dm;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dm;

    invoke-virtual {v0}, Lcom/nextpeer/android/dm;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/hl;->g:Z

    return v0
.end method
