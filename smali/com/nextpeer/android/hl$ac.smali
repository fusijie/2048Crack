.class public final Lcom/nextpeer/android/hl$ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ac"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "rank"
    .end annotation
.end field

.field public final b:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "level"
    .end annotation
.end field

.field public final c:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "xp"
    .end annotation
.end field

.field private final d:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "total"
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/nextpeer/android/hl$ac;)Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ac;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ac;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/hl$ac;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/hl$ac;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/hl$ac;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
