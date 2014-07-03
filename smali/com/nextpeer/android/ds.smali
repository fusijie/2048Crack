.class final Lcom/nextpeer/android/ds;
.super Lcom/nextpeer/android/cj;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/dr;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/nextpeer/android/dr;)V
    .locals 1

    iput-object p1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-direct {p0}, Lcom/nextpeer/android/cj;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ds;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, "TournamentService - didConnectToServer"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    sget-object v1, Lcom/nextpeer/android/dw;->b:Lcom/nextpeer/android/dw;

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Lcom/nextpeer/android/dw;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ds;->b:Z

    invoke-static {}, Lcom/nextpeer/android/au;->a()Lcom/nextpeer/android/au;

    move-result-object v0

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v2}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/cf;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nextpeer/android/hc;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nextpeer/android/au;->v()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1.3.12"

    sget v4, Lcom/nextpeer/android/as;->d:I

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/nextpeer/android/cf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dr;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/cf;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dr;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cf;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/cf;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v1}, Lcom/nextpeer/android/dr;->c(Lcom/nextpeer/android/dr;)I

    move-result v1

    iget-object v2, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v2}, Lcom/nextpeer/android/dr;->d(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/dm;->e()I

    move-result v2

    iget-object v3, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v3}, Lcom/nextpeer/android/dr;->d(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nextpeer/android/dm;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nextpeer/android/cf;->a(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didNotifiedAboutPreTournamentTimeLimit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/dx;->onNotifiedAboutPreTournamentTimeLimit(I)V

    move v0, v1

    goto :goto_0
.end method

.method public final a(II)V
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didTournamentStart with time["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] and seed ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Lcom/nextpeer/android/dw;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, p1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;I)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, p2}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dr;I)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, v2}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dr;Z)V

    iput-boolean v2, p0, Lcom/nextpeer/android/ds;->b:Z

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->c(Lcom/nextpeer/android/dr;I)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->g(Lcom/nextpeer/android/dr;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    iget-object v2, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v2}, Lcom/nextpeer/android/dr;->h(Lcom/nextpeer/android/dr;)I

    move-result v2

    iget-object v3, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v3}, Lcom/nextpeer/android/dr;->i(Lcom/nextpeer/android/dr;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/nextpeer/android/dx;->onTournamentStart(II)V

    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didEncounterError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nextpeer/android/ds;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "reported on error in this session, avoid reporting the callback"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/ds;->b:Z

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Z)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_1
    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/dx;->onEncounterError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->d(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dm;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "matchData"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "matchData"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMatchOverData - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "secondsLeft"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "secondsLeft"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_1
    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->d(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dm;->d()I

    move-result v0

    sget-object v1, Lcom/nextpeer/android/dm$aa;->d:Lcom/nextpeer/android/dm$aa;

    invoke-virtual {v1}, Lcom/nextpeer/android/dm$aa;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->l(Lcom/nextpeer/android/dr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, v2}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_4
    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, v6}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Z)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/dx;->onReceiveMatchDetails(I)V

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "didReceiveFinalRankings - Can\'t locate player with ID  "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping. Count of players "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v1}, Lcom/nextpeer/android/dr;->f(Lcom/nextpeer/android/dr;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "didReceiveFinalRankings - Couldn\'t restore a score for player with ID "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    new-instance v1, Lcom/nextpeer/android/dq;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v4, v0, v5, v5}, Lcom/nextpeer/android/dq;-><init>(Lcom/nextpeer/android/dp;IZZ)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    new-instance v3, Lcom/nextpeer/android/dq;

    invoke-direct {v3, v0, v5, v5, v6}, Lcom/nextpeer/android/dq;-><init>(Lcom/nextpeer/android/dp;IZZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v2, v6}, Lcom/nextpeer/android/dx;->onReceiveResults(Ljava/util/ArrayList;Z)V

    move v0, v1

    goto/16 :goto_4
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "didEnterRoom"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    sget-object v1, Lcom/nextpeer/android/dw;->c:Lcom/nextpeer/android/dw;

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Lcom/nextpeer/android/dw;)V

    iput-boolean v5, p0, Lcom/nextpeer/android/ds;->b:Z

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->f(Lcom/nextpeer/android/dr;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    iget-object v2, v0, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/nextpeer/android/dp;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ab;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ab;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nextpeer/android/dp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v2}, Lcom/nextpeer/android/dr;->f(Lcom/nextpeer/android/dr;)Ljava/util/Hashtable;

    move-result-object v2

    iget-object v0, v0, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v1}, Lcom/nextpeer/android/dr;->f(Lcom/nextpeer/android/dr;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    :goto_1
    if-gtz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    iget-object v2, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v2}, Lcom/nextpeer/android/dr;->f(Lcom/nextpeer/android/dr;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/dx;->onEnterRoom(Ljava/util/Collection;)V

    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
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

    new-instance v2, Lcom/nextpeer/android/dp;

    invoke-direct {v2, p1}, Lcom/nextpeer/android/dp;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->f(Lcom/nextpeer/android/dr;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v2}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/dx;->onPlayerEnteredRoom(Lcom/nextpeer/android/dp;)V

    move v0, v1

    goto :goto_0
.end method

.method public final a([BLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, p2}, Lcom/nextpeer/android/dr;->c(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nextpeer/android/NextpeerTournamentCustomMessage;

    iget-object v2, v1, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    iget-boolean v5, v1, Lcom/nextpeer/android/dp;->d:Z

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/NextpeerTournamentCustomMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V

    move v1, v6

    :goto_1
    if-gtz v1, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v1, -0x1

    iget-object v1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v1}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/dx;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/dx;->onReceiveUnreliableTournamentUpdate(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V

    move v1, v2

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    sget-object v1, Lcom/nextpeer/android/dw;->e:Lcom/nextpeer/android/dw;

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Lcom/nextpeer/android/dw;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->j(Lcom/nextpeer/android/dr;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "didReportedTournamentEnd"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dr;Z)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0}, Lcom/nextpeer/android/dx;->onReportedTournamentEnd()V

    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/util/Map;)V
    .locals 3
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

    new-instance v2, Lcom/nextpeer/android/dp;

    invoke-direct {v2, p1}, Lcom/nextpeer/android/dp;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->k(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dw;->a()I

    move-result v0

    sget-object v1, Lcom/nextpeer/android/dw;->c:Lcom/nextpeer/android/dw;

    invoke-virtual {v1}, Lcom/nextpeer/android/dw;->a()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->k(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dw;->a()I

    move-result v0

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    invoke-virtual {v1}, Lcom/nextpeer/android/dw;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-virtual {v2}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t locate player with ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", in order to mark him as quit."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v1}, Lcom/nextpeer/android/dr;->l(Lcom/nextpeer/android/dr;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->f(Lcom/nextpeer/android/dr;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v2}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_1
    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/dx;->onPlayerLeftRoom(Lcom/nextpeer/android/dp;)V

    move v0, v1

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    const-string v0, "didDisconnectFromServer"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nextpeer/android/ds;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "reported on error in this session, avoid reporting the callback"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/ds;->b:Z

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Z)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_1
    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0}, Lcom/nextpeer/android/dx;->onDisconnectFromServer()V

    move v0, v1

    goto :goto_1
.end method

.method public final c(Ljava/util/Map;)V
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

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v7

    if-lez v7, :cond_1

    const-string v0, "customBuffer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v0, "profileImage"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    const-string v0, "bot"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "bot"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_3

    move v0, v5

    :goto_2
    move v5, v0

    :goto_3
    new-instance v0, Lcom/nextpeer/android/NextpeerTournamentCustomMessage;

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/NextpeerTournamentCustomMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V

    move v1, v7

    :goto_4
    if-gtz v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    goto :goto_0

    :cond_2
    const-string v1, "ERROR_NO_PLAYER_ID"

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v1, -0x1

    iget-object v1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v1}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/dx;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/dx;->onReceiveTournamentUpdate(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V

    move v1, v2

    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_3
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->m(Lcom/nextpeer/android/dr;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0}, Lcom/nextpeer/android/dx;->onReceiveShowPlayNow()V

    move v0, v1

    goto :goto_0
.end method

.method public final d(Ljava/util/Map;)V
    .locals 11
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

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "players"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->l(Lcom/nextpeer/android/dr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v2, Lcom/nextpeer/android/NextpeerTournamentStatusInfo;

    invoke-direct {v2, v5}, Lcom/nextpeer/android/NextpeerTournamentStatusInfo;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_2
    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    const-string v0, "playerId"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v1, v0}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "score"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v1, "isStillPlaying"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_3
    iget-object v2, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v2, v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v8, Lcom/nextpeer/android/NextpeerTournamentPlayer;

    iget-object v9, v2, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    iget-object v10, v2, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/nextpeer/android/dp;->d:Z

    invoke-direct {v8, v0, v9, v10, v2}, Lcom/nextpeer/android/NextpeerTournamentPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;

    invoke-direct {v0, v8, v1, v4, v7}, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;-><init>(Lcom/nextpeer/android/NextpeerTournamentPlayer;ZZI)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    new-instance v2, Lcom/nextpeer/android/NextpeerTournamentPlayer;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/nextpeer/android/dp;->d:Z

    invoke-direct {v2, v6, v7, v8, v0}, Lcom/nextpeer/android/NextpeerTournamentPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;

    invoke-direct {v0, v2, v4, v3, v4}, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;-><init>(Lcom/nextpeer/android/NextpeerTournamentPlayer;ZZI)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/dx;->onReceiveTournamentStatus(Lcom/nextpeer/android/NextpeerTournamentStatusInfo;)V

    move v0, v1

    goto/16 :goto_2
.end method

.method public final e(Ljava/util/Map;)V
    .locals 9
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

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->d(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->d(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dm;->d()I

    move-result v0

    sget-object v1, Lcom/nextpeer/android/dm$aa;->d:Lcom/nextpeer/android/dm$aa;

    invoke-virtual {v1}, Lcom/nextpeer/android/dm$aa;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "users"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "didReceiveTournamentPulse with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " players"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v6

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, v7}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_2
    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    if-nez v5, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, v4}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const-string v0, "userId"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "score"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v2, "dead"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didReceiveTournamentPulse - Player info a tournament pulse is missing some fields, skipping. Original data is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v3, v0}, Lcom/nextpeer/android/dr;->c(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "didReceiveTournamentPulse - Can\'t locate player with ID  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_6

    move v2, v6

    :goto_3
    if-eqz v2, :cond_9

    move v0, v4

    :goto_4
    new-instance v5, Lcom/nextpeer/android/dq;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v5, v3, v1, v2, v6}, Lcom/nextpeer/android/dq;-><init>(Lcom/nextpeer/android/dp;IZZ)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v0

    goto/16 :goto_1

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ds;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    if-eqz v5, :cond_8

    move v1, v6

    :goto_5
    invoke-virtual {v0, v7, v1}, Lcom/nextpeer/android/dx;->onReceiveResults(Ljava/util/ArrayList;Z)V

    move v0, v2

    goto/16 :goto_2

    :cond_8
    move v1, v4

    goto :goto_5

    :cond_9
    move v0, v5

    goto :goto_4
.end method
