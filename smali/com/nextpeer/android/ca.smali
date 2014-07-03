.class final Lcom/nextpeer/android/ca;
.super Lcom/nextpeer/android/dx;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/bx;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-direct {p0}, Lcom/nextpeer/android/dx;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnectFromServer()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v0}, Lcom/nextpeer/android/bx;->c(Lcom/nextpeer/android/bx;)V

    return-void
.end method

.method public final onEncounterError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v0}, Lcom/nextpeer/android/bx;->c(Lcom/nextpeer/android/bx;)V

    return-void
.end method

.method public final onReceiveTournamentStatus(Lcom/nextpeer/android/NextpeerTournamentStatusInfo;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v0}, Lcom/nextpeer/android/bx;->d(Lcom/nextpeer/android/bx;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/nextpeer/android/NextpeerTournamentStatusInfo;->sortedResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v1, 0x2

    if-lt v5, v1, :cond_0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v3, v1, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v4, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v5, -0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x3

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v0, v1, v2

    invoke-interface {v6, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v3, v0}, Lcom/nextpeer/android/bx;->a(Lcom/nextpeer/android/bx;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v0}, Lcom/nextpeer/android/bx;->e(Lcom/nextpeer/android/bx;)Lcom/nextpeer/android/NPRanksView;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    iget-object v6, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v6}, Lcom/nextpeer/android/bx;->f(Lcom/nextpeer/android/bx;)Lcom/nextpeer/android/NPRanksView;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/nextpeer/android/bx;->a(Lcom/nextpeer/android/bx;Lcom/nextpeer/android/NPRanksView;)V

    iget-object v0, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v0}, Lcom/nextpeer/android/bx;->e(Lcom/nextpeer/android/bx;)Lcom/nextpeer/android/NPRanksView;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/NPRanksView;->a(IILjava/util/List;II)V

    iget-object v0, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v0}, Lcom/nextpeer/android/bx;->g(Lcom/nextpeer/android/bx;)V

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;

    iget-object v8, v0, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;->player:Lcom/nextpeer/android/NextpeerTournamentPlayer;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;->player:Lcom/nextpeer/android/NextpeerTournamentPlayer;

    iget-object v0, v0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v0}, Lcom/nextpeer/android/bx;->e(Lcom/nextpeer/android/bx;)Lcom/nextpeer/android/NPRanksView;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nextpeer/android/NPRanksView;->a(IILjava/util/List;I)V

    goto/16 :goto_0

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public final onReportedTournamentEnd()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ca;->a:Lcom/nextpeer/android/bx;

    invoke-static {v0}, Lcom/nextpeer/android/bx;->c(Lcom/nextpeer/android/bx;)V

    return-void
.end method
