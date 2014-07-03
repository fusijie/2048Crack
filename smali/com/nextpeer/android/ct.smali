.class final Lcom/nextpeer/android/ct;
.super Lcom/nextpeer/android/cm;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
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

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cy;->e:Lcom/nextpeer/android/cy;

    invoke-direct {p0, v0}, Lcom/nextpeer/android/cm;-><init>(Lcom/nextpeer/android/cy;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/ct;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/ct;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/ct;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ct;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nextpeer/android/ct;->g:Ljava/util/List;

    return-void
.end method

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

    iput-object p1, p0, Lcom/nextpeer/android/ct;->f:Ljava/util/Map;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/ct;->a:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/ct;->b:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/ct;->b:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/ct;->c:I

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/nextpeer/android/cm;

    check-cast p1, Lcom/nextpeer/android/ct;

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/nextpeer/android/ct;->a:I

    iget v3, p1, Lcom/nextpeer/android/ct;->a:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nextpeer/android/ct;->b:I

    iget v3, p1, Lcom/nextpeer/android/ct;->b:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/nextpeer/android/ct;->c:I

    iget v3, p1, Lcom/nextpeer/android/ct;->c:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/nextpeer/android/ct;->d:I

    iget v3, p1, Lcom/nextpeer/android/ct;->d:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nextpeer/android/ct;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/nextpeer/android/ct;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/nextpeer/android/ct;->a:I

    iget v3, p1, Lcom/nextpeer/android/ct;->a:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v1, p0, Lcom/nextpeer/android/ct;->f:Ljava/util/Map;

    const-string v2, "wraith"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/nextpeer/android/ct;->f:Ljava/util/Map;

    const-string v2, "wraith"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/nextpeer/android/ct;->f:Ljava/util/Map;

    iget-object v3, p1, Lcom/nextpeer/android/ct;->f:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/nextpeer/android/ct;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/nextpeer/android/ct;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/nextpeer/android/ct;->g:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/nextpeer/android/ct;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lcom/nextpeer/android/ct;->a([I)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/ct;->c:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/ct;->d:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/ct;->d:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ct;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/nextpeer/android/ct;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/ct;->g:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPTablerMessageRoomDetails [_roomId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nextpeer/android/ct;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _roomLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/ct;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _roomType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/ct;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _tournamentTimeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/ct;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _roomName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ct;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _extraData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ct;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _existingPlayers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ct;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
