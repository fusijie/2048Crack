.class final Lcom/nextpeer/android/cw;
.super Lcom/nextpeer/android/cm;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cy;->c:Lcom/nextpeer/android/cy;

    invoke-direct {p0, v0}, Lcom/nextpeer/android/cm;-><init>(Lcom/nextpeer/android/cy;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nextpeer/android/cw;->a:Ljava/util/Map;

    return-void
.end method

.method public final a([B)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/cw;->b:[B

    return-void
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cw;->b:[B

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/cw;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 7

    const/4 v1, 0x0

    check-cast p1, Lcom/nextpeer/android/cm;

    check-cast p1, Lcom/nextpeer/android/cw;

    const/4 v0, 0x2

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/nextpeer/android/cw;->b:[B

    iget-object v4, p1, Lcom/nextpeer/android/cw;->b:[B

    array-length v0, v3

    array-length v5, v4

    sub-int/2addr v0, v5

    if-eqz v0, :cond_0

    array-length v0, v3

    array-length v3, v4

    sub-int/2addr v0, v3

    :goto_0
    aput v0, v2, v1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nextpeer/android/cw;->a:Ljava/util/Map;

    iget-object v3, p1, Lcom/nextpeer/android/cw;->a:Ljava/util/Map;

    invoke-static {v1, v3}, Lcom/nextpeer/android/cw;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v1

    aput v1, v2, v0

    invoke-static {v2}, Lcom/nextpeer/android/cw;->a([I)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    :goto_1
    array-length v5, v3

    if-lt v0, v5, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    aget-byte v5, v3, v0

    aget-byte v6, v4, v0

    if-eq v5, v6, :cond_2

    aget-byte v3, v3, v0

    aget-byte v0, v4, v0

    sub-int v0, v3, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPTablerMessageTournamentCustom [_messageContent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/cw;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _customBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/cw;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
