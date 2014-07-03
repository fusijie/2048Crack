.class final Lcom/nextpeer/android/co;
.super Lcom/nextpeer/android/cm;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cy;->a:Lcom/nextpeer/android/cy;

    invoke-direct {p0, v0}, Lcom/nextpeer/android/cm;-><init>(Lcom/nextpeer/android/cy;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/co;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/co;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/co;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/co;->e:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/co;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/co;->b:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/co;->f:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/co;->a:Ljava/lang/String;

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/nextpeer/android/cm;

    check-cast p1, Lcom/nextpeer/android/co;

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nextpeer/android/co;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nextpeer/android/co;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nextpeer/android/co;->b:I

    iget v3, p1, Lcom/nextpeer/android/co;->b:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nextpeer/android/co;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/nextpeer/android/co;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nextpeer/android/co;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/nextpeer/android/co;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/nextpeer/android/co;->e:I

    iget v3, p1, Lcom/nextpeer/android/co;->e:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/nextpeer/android/co;->f:I

    iget v3, p1, Lcom/nextpeer/android/co;->f:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Lcom/nextpeer/android/co;->a([I)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/co;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/co;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/co;->e:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/co;->f:I

    return v0
.end method
