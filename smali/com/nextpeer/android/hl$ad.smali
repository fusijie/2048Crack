.class final Lcom/nextpeer/android/hl$ad;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/hl$ad$aa;,
        Lcom/nextpeer/android/hl$ad$ab;,
        Lcom/nextpeer/android/hl$ad$ac;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "cookies"
    .end annotation
.end field

.field public final b:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "dataPacketRateLimit"
    .end annotation
.end field

.field public final c:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "dataPacketSizeLimitBytes"
    .end annotation
.end field

.field public final d:J
    .annotation runtime Lcom/a/a/a/ab;
        a = "scoreReportRateLimitSeconds"
    .end annotation
.end field

.field public final e:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "dataUdpPacketRateLimit"
    .end annotation
.end field

.field public final f:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "inviteLimit"
    .end annotation
.end field

.field private g:[Lcom/nextpeer/android/hl$ad$aa;
    .annotation runtime Lcom/a/a/a/ab;
        a = "extraDashboardButtons"
    .end annotation
.end field

.field private h:[Lcom/nextpeer/android/hl$ad$ac;
    .annotation runtime Lcom/a/a/a/ab;
        a = "extraOverflowButtons"
    .end annotation
.end field

.field private final i:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "log"
    .end annotation
.end field

.field private j:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "showPersonalize"
    .end annotation
.end field

.field private k:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "customizeDialogDisplay"
    .end annotation
.end field

.field private l:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "showTryFBDialog"
    .end annotation
.end field

.field private final m:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "showDashboardForGuest"
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation runtime Lcom/a/a/a/ab;
        a = "fbStrings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/nextpeer/android/hl$ad;)Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/hl$ad;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/hl$ad;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/hl$ad;->a()[Lcom/nextpeer/android/hl$ad$aa;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/hl$ad;->a([Lcom/nextpeer/android/hl$ad$ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/hl$ad;->b()[Lcom/nextpeer/android/hl$ad$ac;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/hl$ad;->a([Lcom/nextpeer/android/hl$ad$ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([Lcom/nextpeer/android/hl$ad$ab;)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/nextpeer/android/hl$ad$ab;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nextpeer/android/hl$ad;->n:Ljava/util/Map;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/hl$ad;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nextpeer/android/hl$ad;->n:Ljava/util/Map;

    const-string v2, "shareGeneric"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad;->n:Ljava/util/Map;

    const-string v1, "shareGeneric"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a()[Lcom/nextpeer/android/hl$ad$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad;->g:[Lcom/nextpeer/android/hl$ad$aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nextpeer/android/hl$ad$aa;

    iput-object v0, p0, Lcom/nextpeer/android/hl$ad;->g:[Lcom/nextpeer/android/hl$ad$aa;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hl$ad;->g:[Lcom/nextpeer/android/hl$ad$aa;

    return-object v0
.end method

.method public final b()[Lcom/nextpeer/android/hl$ad$ac;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hl$ad;->h:[Lcom/nextpeer/android/hl$ad$ac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nextpeer/android/hl$ad$ac;

    iput-object v0, p0, Lcom/nextpeer/android/hl$ad;->h:[Lcom/nextpeer/android/hl$ad$ac;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hl$ad;->h:[Lcom/nextpeer/android/hl$ad$ac;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nextpeer/android/hl$ad;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nextpeer/android/hl$ad;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/nextpeer/android/hg;
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/hl$ad;->k:I

    invoke-static {v0}, Lcom/nextpeer/android/hg;->a(I)Lcom/nextpeer/android/hg;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nextpeer/android/hl$ad;->k:I

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nextpeer/android/hl$ad;->j:I

    return-void
.end method

.method public final h()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nextpeer/android/hl$ad;->l:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nextpeer/android/hl$ad;->l:I

    return-void
.end method

.method public final j()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nextpeer/android/hl$ad;->m:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
