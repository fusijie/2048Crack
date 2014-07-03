.class final Lcom/nextpeer/android/hl$ad$aa;
.super Lcom/nextpeer/android/hl$ad$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/hl$ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "aa"
.end annotation


# instance fields
.field private a:[F
    .annotation runtime Lcom/a/a/a/ab;
        a = "textColor"
    .end annotation
.end field

.field private b:[F
    .annotation runtime Lcom/a/a/a/ab;
        a = "color"
    .end annotation
.end field


# direct methods
.method private static a([F)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v4, p0, v2

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_3

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 5

    const/high16 v4, 0x437f

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad$aa;->a:[F

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hl$ad$aa;->a:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Lcom/nextpeer/android/hl$ad$aa;->a:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Lcom/nextpeer/android/hl$ad$aa;->a:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method public final b()I
    .locals 5

    const/high16 v4, 0x437f

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad$aa;->b:[F

    if-nez v0, :cond_0

    const v0, -0xff01

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hl$ad$aa;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Lcom/nextpeer/android/hl$ad$aa;->b:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Lcom/nextpeer/android/hl$ad$aa;->b:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/hl$ad$ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad$aa;->b:[F

    invoke-static {v0}, Lcom/nextpeer/android/hl$ad$aa;->a([F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad$aa;->a:[F

    invoke-static {v0}, Lcom/nextpeer/android/hl$ad$aa;->a([F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
