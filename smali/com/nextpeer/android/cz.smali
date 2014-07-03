.class final Lcom/nextpeer/android/cz;
.super Lcom/nextpeer/android/cm;


# instance fields
.field private a:I

.field private b:B


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cy;->g:Lcom/nextpeer/android/cy;

    invoke-direct {p0, v0}, Lcom/nextpeer/android/cm;-><init>(Lcom/nextpeer/android/cy;)V

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nextpeer/android/cz;->b:B

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/cz;->a:I

    return-void
.end method

.method public final b()B
    .locals 1

    iget-byte v0, p0, Lcom/nextpeer/android/cz;->b:B

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/cz;->a:I

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/nextpeer/android/cm;

    check-cast p1, Lcom/nextpeer/android/cz;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/nextpeer/android/cz;->a:I

    iget v3, p1, Lcom/nextpeer/android/cz;->a:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/nextpeer/android/cz;->b:B

    iget-byte v3, p1, Lcom/nextpeer/android/cz;->b:B

    sub-int/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Lcom/nextpeer/android/cz;->a([I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPTablerMessageUpdateScore [_score="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nextpeer/android/cz;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _isFinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/nextpeer/android/cz;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
