.class final Lcom/nextpeer/android/gc;
.super Lcom/nextpeer/android/dx;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gb;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-direct {p0}, Lcom/nextpeer/android/dx;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnectFromServer()V
    .locals 3

    const-string v0, "Friends - onDisconnectFromServer"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_description:I

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/gb;->a(II)V

    return-void
.end method

.method public final onEncounterError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Friends - onEncounterError with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_description:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/nextpeer/android/gb;->a(IILjava/lang/String;)V

    return-void
.end method

.method public final onEnterRoom(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnterRoom with players "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gb$ac;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v3, v0, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gb$ac;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->d(Lcom/nextpeer/android/gb;)V

    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v6}, Lcom/nextpeer/android/gb;->b(Lcom/nextpeer/android/gb;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v6}, Lcom/nextpeer/android/gb;->c(Lcom/nextpeer/android/gb;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v6}, Lcom/nextpeer/android/gb;->c(Lcom/nextpeer/android/gb;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v5}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ac;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/nextpeer/android/gb$ac;->add(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method

.method public final onNotifiedAboutPreTournamentTimeLimit(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "Friends - onNotifiedAboutPreTournamentTimeLimit %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->e(Lcom/nextpeer/android/gb;)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    new-instance v1, Lcom/nextpeer/android/gb$aa;

    iget-object v2, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    invoke-direct {v1, v2, v3, v4}, Lcom/nextpeer/android/gb$aa;-><init>(Lcom/nextpeer/android/gb;J)V

    invoke-static {v0, v1}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;Lcom/nextpeer/android/gb$aa;)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->f(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gb$aa;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final onPlayerEnteredRoom(Lcom/nextpeer/android/dp;)V
    .locals 3

    invoke-virtual {p1}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Friends - onPlayerEnteredRoom "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v1}, Lcom/nextpeer/android/gb;->b(Lcom/nextpeer/android/gb;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v1}, Lcom/nextpeer/android/gb;->c(Lcom/nextpeer/android/gb;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v1}, Lcom/nextpeer/android/gb;->c(Lcom/nextpeer/android/gb;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v2}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/gb$ac;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/gb$ac;->add(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gb$ac;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->d(Lcom/nextpeer/android/gb;)V

    return-void
.end method

.method public final onPlayerLeftRoom(Lcom/nextpeer/android/dp;)V
    .locals 3

    invoke-virtual {p1}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Friends - onPlayerLeftRoom "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v1}, Lcom/nextpeer/android/gb;->b(Lcom/nextpeer/android/gb;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gb$ac;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->d(Lcom/nextpeer/android/gb;)V

    return-void
.end method

.method public final onReceiveShowPlayNow()V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v0, "Friends - onReceiveShowPlayNow"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->f(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gb$aa;->cancel()V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->h(Lcom/nextpeer/android/gb;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->i(Lcom/nextpeer/android/gb;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->j(Lcom/nextpeer/android/gb;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_loading_friends_loading_bar_title_stop_waiting:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v1}, Lcom/nextpeer/android/gb;->k(Lcom/nextpeer/android/gb;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onTournamentFailedToSignIn()V
    .locals 3

    const-string v0, "Friends - onTournamentFailedToSignIn"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_connect_to_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_connect_to_the_room_description:I

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/gb;->a(II)V

    return-void
.end method

.method public final onTournamentStart(II)V
    .locals 1

    const-string v0, "Friends - onTournamentStart"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->g(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gc;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->g(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/gb$ab;->o()V

    :cond_0
    return-void
.end method
