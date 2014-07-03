.class final Lcom/nextpeer/android/do;
.super Lcom/nextpeer/android/dp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/do$aa;,
        Lcom/nextpeer/android/do$ab;,
        Lcom/nextpeer/android/do$ac;
    }
.end annotation


# instance fields
.field public final a:Lcom/nextpeer/android/do$ac;

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(IILcom/nextpeer/android/do$ac;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p4, p5, p6, p7}, Lcom/nextpeer/android/dp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput p2, p0, Lcom/nextpeer/android/do;->f:I

    iput p1, p0, Lcom/nextpeer/android/do;->e:I

    iput-object p3, p0, Lcom/nextpeer/android/do;->a:Lcom/nextpeer/android/do$ac;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/do;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x3e7

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nextpeer/android/do;->f:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/dp;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/do;->a:Lcom/nextpeer/android/do$ac;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nextpeer/android/do;->e:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/do;->e:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/do;->a:Lcom/nextpeer/android/do$ac;

    sget-object v1, Lcom/nextpeer/android/do$ac;->a:Lcom/nextpeer/android/do$ac;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/do;->a:Lcom/nextpeer/android/do$ac;

    sget-object v1, Lcom/nextpeer/android/do$ac;->b:Lcom/nextpeer/android/do$ac;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/do;->a:Lcom/nextpeer/android/do$ac;

    sget-object v1, Lcom/nextpeer/android/do$ac;->c:Lcom/nextpeer/android/do$ac;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/do;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/do;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPTournamentMatchPlayer id["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/do;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/do;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] status["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/do;->a:Lcom/nextpeer/android/do$ac;

    invoke-virtual {v1}, Lcom/nextpeer/android/do$ac;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/nextpeer/android/dp;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
