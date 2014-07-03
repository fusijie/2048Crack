.class public final Lcom/nextpeer/android/hl$ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ab"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "imageUrl"
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/nextpeer/android/hl$ab;)Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ab;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ab;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ab;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ab;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/hl$ab;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ab;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/hl$ab;->c:Ljava/lang/String;

    return-void
.end method
