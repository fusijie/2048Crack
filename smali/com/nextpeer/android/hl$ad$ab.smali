.class abstract Lcom/nextpeer/android/hl$ad$ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/hl$ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ab"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "text"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "url"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "position"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "analyticsEvent"
    .end annotation
.end field


# virtual methods
.method public c()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/nextpeer/android/hl$ad$ab;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nextpeer/android/hl$ad$ab;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/nextpeer/android/hl$ad$ab;->c:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/nextpeer/android/hl$ad$ab;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad$ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad$ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/hl$ad$ab;->c:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad$ab;->d:Ljava/lang/String;

    return-object v0
.end method
