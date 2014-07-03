.class Lcom/nextpeer/android/Nextpeer$1;
.super Lcom/nextpeer/android/dx;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/Nextpeer;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/Nextpeer;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-direct {p0}, Lcom/nextpeer/android/dx;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnectFromServer()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-static {v0}, Lcom/nextpeer/android/Nextpeer;->a(Lcom/nextpeer/android/Nextpeer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->k()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerActivity;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onEncounterError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-static {v0}, Lcom/nextpeer/android/Nextpeer;->a(Lcom/nextpeer/android/Nextpeer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->k()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerActivity;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onReceiveTournamentStatus(Lcom/nextpeer/android/NextpeerTournamentStatusInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->c()Lcom/nextpeer/android/NextpeerListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/NextpeerListener;->onReceiveTournamentStatus(Lcom/nextpeer/android/NextpeerTournamentStatusInfo;)V

    return-void
.end method

.method public onReceiveTournamentUpdate(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->c()Lcom/nextpeer/android/NextpeerListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/NextpeerListener;->onReceiveTournamentCustomMessage(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V

    return-void
.end method

.method public onReceiveUnreliableTournamentUpdate(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->c()Lcom/nextpeer/android/NextpeerListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/NextpeerListener;->onReceiveUnreliableTournamentCustomMessage(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V

    return-void
.end method

.method public onReportedTournamentEnd()V
    .locals 9

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nextpeer/android/Nextpeer;->a(Lcom/nextpeer/android/Nextpeer;Z)V

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->c()Lcom/nextpeer/android/dm;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->d()I

    move-result v3

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->getCurrentPlayerDetails()Lcom/nextpeer/android/NextpeerTournamentPlayer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/nextpeer/android/NextpeerTournamentEndData;

    invoke-virtual {v1}, Lcom/nextpeer/android/dm;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/nextpeer/android/NextpeerTournamentEndData;-><init>(Ljava/lang/String;Lcom/nextpeer/android/NextpeerTournamentPlayer;Ljava/util/List;I)V

    iget-object v1, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/nextpeer/android/Nextpeer;->b(Lcom/nextpeer/android/Nextpeer;Z)V

    iget-object v1, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-virtual {v1}, Lcom/nextpeer/android/Nextpeer;->c()Lcom/nextpeer/android/NextpeerListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/NextpeerListener;->onTournamentEnd(Lcom/nextpeer/android/NextpeerTournamentEndData;)V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->k()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerActivity;->b(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/nextpeer/android/hl;->b()V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-static {v0}, Lcom/nextpeer/android/Nextpeer;->a(Lcom/nextpeer/android/dp;)Lcom/nextpeer/android/NextpeerTournamentPlayer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onTournamentStart(II)V
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-static {v0, v5}, Lcom/nextpeer/android/Nextpeer;->a(Lcom/nextpeer/android/Nextpeer;Z)V

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/nextpeer/android/dr;->c()Lcom/nextpeer/android/dm;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/hl;->b()V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->getCurrentPlayerDetails()Lcom/nextpeer/android/NextpeerTournamentPlayer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/nextpeer/android/dr;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/nextpeer/android/NextpeerTournamentStartData;

    invoke-virtual {v4}, Lcom/nextpeer/android/dm;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/nextpeer/android/dm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/nextpeer/android/dm;->d()I

    move-result v4

    sget-object v8, Lcom/nextpeer/android/dm$aa;->d:Lcom/nextpeer/android/dm$aa;

    invoke-virtual {v8}, Lcom/nextpeer/android/dm$aa;->a()I

    move-result v8

    if-ne v4, v8, :cond_4

    :goto_2
    invoke-virtual {v3}, Lcom/nextpeer/android/dr;->d()I

    move-result v8

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/nextpeer/android/NextpeerTournamentStartData;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/nextpeer/android/NextpeerTournamentPlayer;Ljava/util/List;I)V

    iget-object v1, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-static {v1, v9}, Lcom/nextpeer/android/Nextpeer;->b(Lcom/nextpeer/android/Nextpeer;Z)V

    iget-object v1, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-virtual {v1}, Lcom/nextpeer/android/Nextpeer;->c()Lcom/nextpeer/android/NextpeerListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/NextpeerListener;->onTournamentStart(Lcom/nextpeer/android/NextpeerTournamentStartData;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v8, v6, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nextpeer/android/Nextpeer$1;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-static {v0}, Lcom/nextpeer/android/Nextpeer;->a(Lcom/nextpeer/android/dp;)Lcom/nextpeer/android/NextpeerTournamentPlayer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v5, v9

    goto :goto_2
.end method
