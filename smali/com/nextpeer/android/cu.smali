.class final Lcom/nextpeer/android/cu;
.super Lcom/nextpeer/android/cm;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cy;->f:Lcom/nextpeer/android/cy;

    invoke-direct {p0, v0}, Lcom/nextpeer/android/cm;-><init>(Lcom/nextpeer/android/cy;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/cu;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/cu;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/cu;->a:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/cu;->b:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/cu;->b:I

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/nextpeer/android/cm;

    check-cast p1, Lcom/nextpeer/android/cu;

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/nextpeer/android/cu;->a:I

    iget v3, p1, Lcom/nextpeer/android/cu;->a:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nextpeer/android/cu;->b:I

    iget v3, p1, Lcom/nextpeer/android/cu;->b:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nextpeer/android/cu;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/nextpeer/android/cu;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lcom/nextpeer/android/cu;->a([I)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cu;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPTablerMessageRoomJoin [_roomType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nextpeer/android/cu;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _roomLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/cu;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _tournament="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/cu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
