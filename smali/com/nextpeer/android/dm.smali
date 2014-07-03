.class final Lcom/nextpeer/android/dm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/dm$aa;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "name"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "desc"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "imageUrl"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "publicId"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "privateId"
    .end annotation
.end field

.field private final f:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "timeLimit"
    .end annotation
.end field

.field private final g:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "typeId"
    .end annotation
.end field

.field private final h:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "limit"
    .end annotation
.end field


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dm;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dm;->g:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dm;->h:I

    return v0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/dm;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dm;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dm;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dm;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dm;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dm;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dm;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dm;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dm;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dm;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/dm;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/dm;->g:I

    sget-object v1, Lcom/nextpeer/android/dm$aa;->a:Lcom/nextpeer/android/dm$aa;

    invoke-virtual {v1}, Lcom/nextpeer/android/dm$aa;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/nextpeer/android/dm;->h:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
