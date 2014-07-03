.class final Lcom/nextpeer/android/cs;
.super Lcom/nextpeer/android/cm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/cs$aa;,
        Lcom/nextpeer/android/cs$ab;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Lcom/nextpeer/android/cs$aa;

.field d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/nextpeer/android/cs$ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cy;->j:Lcom/nextpeer/android/cy;

    invoke-direct {p0, v0}, Lcom/nextpeer/android/cm;-><init>(Lcom/nextpeer/android/cy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/cs;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/cs;->e:Ljava/lang/String;

    iput p2, p0, Lcom/nextpeer/android/cs;->a:I

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/nextpeer/android/cs;->b:I

    sget-object v0, Lcom/nextpeer/android/cs$ab;->a:Lcom/nextpeer/android/cs$ab;

    iput-object v0, p0, Lcom/nextpeer/android/cs;->f:Lcom/nextpeer/android/cs$ab;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nextpeer/android/cs$aa;I)V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/cs;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/cs;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/cs;->c:Lcom/nextpeer/android/cs$aa;

    iput p3, p0, Lcom/nextpeer/android/cs;->d:I

    sget-object v0, Lcom/nextpeer/android/cs$ab;->b:Lcom/nextpeer/android/cs$ab;

    iput-object v0, p0, Lcom/nextpeer/android/cs;->f:Lcom/nextpeer/android/cs$ab;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/nextpeer/android/cs$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cs;->f:Lcom/nextpeer/android/cs$ab;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x1

    check-cast p1, Lcom/nextpeer/android/cm;

    check-cast p1, Lcom/nextpeer/android/cs;

    iget-object v1, p1, Lcom/nextpeer/android/cs;->f:Lcom/nextpeer/android/cs$ab;

    iget-object v2, p0, Lcom/nextpeer/android/cs;->f:Lcom/nextpeer/android/cs$ab;

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nextpeer/android/cs;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/nextpeer/android/cs;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    iget v2, p0, Lcom/nextpeer/android/cs;->a:I

    iget v3, p1, Lcom/nextpeer/android/cs;->a:I

    sub-int/2addr v2, v3

    aput v2, v1, v0

    const/4 v0, 0x2

    iget v2, p0, Lcom/nextpeer/android/cs;->b:I

    iget v3, p1, Lcom/nextpeer/android/cs;->b:I

    sub-int/2addr v2, v3

    aput v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/nextpeer/android/cs;->c:Lcom/nextpeer/android/cs$aa;

    iget-object v3, p1, Lcom/nextpeer/android/cs;->c:Lcom/nextpeer/android/cs$aa;

    invoke-virtual {v2, v3}, Lcom/nextpeer/android/cs$aa;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x4

    iget v2, p0, Lcom/nextpeer/android/cs;->d:I

    iget v3, p1, Lcom/nextpeer/android/cs;->d:I

    sub-int/2addr v2, v3

    aput v2, v1, v0

    invoke-static {v1}, Lcom/nextpeer/android/cs;->a([I)I

    move-result v0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/cs;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/cs;->b:I

    return v0
.end method

.method public final f()Lcom/nextpeer/android/cs$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cs;->c:Lcom/nextpeer/android/cs$aa;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/cs;->d:I

    return v0
.end method
