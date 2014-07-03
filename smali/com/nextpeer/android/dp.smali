.class Lcom/nextpeer/android/dp;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field private e:Lcom/nextpeer/android/da;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/nextpeer/android/dp;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 8
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

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v3, v2

    const-string v0, "userId"

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string v4, "userUuid"

    aput-object v4, v3, v0

    iput-object v7, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_1
    if-lt v0, v4, :cond_1

    :goto_2
    const-string v0, "imageUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "imageUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    :goto_3
    const-string v0, "recording"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "recording"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/nextpeer/android/dp;->d:Z

    :goto_5
    const-string v0, "publicUdpHost"

    invoke-static {p1, v0}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "internalUdpHost"

    invoke-static {p1, v1}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "publicUdpPort"

    invoke-static {p1, v2}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    const-string v3, "internalUdpPort"

    invoke-static {p1, v3}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/nextpeer/android/da;->a(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/Number;)Lcom/nextpeer/android/da;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/dp;->e:Lcom/nextpeer/android/da;

    return-void

    :cond_0
    iput-object v7, p0, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    aget-object v5, v3, v0

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-object v7, p0, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    iput-boolean v2, p0, Lcom/nextpeer/android/dp;->d:Z

    goto :goto_5
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/nextpeer/android/da;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dp;->e:Lcom/nextpeer/android/da;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nextpeer/android/dp;

    iget-object v2, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPTournamentPlayer [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nextpeer/android/dp;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlayersIpcontainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dp;->e:Lcom/nextpeer/android/da;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
