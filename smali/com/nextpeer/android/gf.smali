.class final Lcom/nextpeer/android/gf;
.super Lcom/nextpeer/android/dx;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ge;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ge;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-direct {p0}, Lcom/nextpeer/android/dx;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnectFromServer()V
    .locals 3

    const-string v0, "Random - onDisconnectFromServer"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_description:I

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/ge;->a(II)V

    return-void
.end method

.method public final onEncounterError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Random - onEncounterError with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_description:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/nextpeer/android/ge;->a(IILjava/lang/String;)V

    return-void
.end method

.method public final onEnterRoom(Ljava/util/Collection;)V
    .locals 2
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

    const-string v1, "Random - onEnterRoom with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0, p1}, Lcom/nextpeer/android/ge;->a(Lcom/nextpeer/android/ge;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->a(Lcom/nextpeer/android/ge;)V

    return-void
.end method

.method public final onNotifiedAboutPreTournamentTimeLimit(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "Random - onNotifiedAboutPreTournamentTimeLimit %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->d(Lcom/nextpeer/android/ge;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    new-instance v1, Lcom/nextpeer/android/ge$aa;

    iget-object v2, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    invoke-direct {v1, v2, v3, v4}, Lcom/nextpeer/android/ge$aa;-><init>(Lcom/nextpeer/android/ge;J)V

    invoke-static {v0, v1}, Lcom/nextpeer/android/ge;->a(Lcom/nextpeer/android/ge;Lcom/nextpeer/android/ge$aa;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->e(Lcom/nextpeer/android/ge;)Lcom/nextpeer/android/ge$aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ge$aa;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final onPlayerEnteredRoom(Lcom/nextpeer/android/dp;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Random - onPlayerEnteredRoom "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->b(Lcom/nextpeer/android/ge;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->b(Lcom/nextpeer/android/ge;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->c(Lcom/nextpeer/android/ge;)Lcom/nextpeer/android/ge$ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ge$ac;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->a(Lcom/nextpeer/android/ge;)V

    :cond_0
    return-void
.end method

.method public final onPlayerLeftRoom(Lcom/nextpeer/android/dp;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Random - onPlayerLeftRoom "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->b(Lcom/nextpeer/android/ge;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->c(Lcom/nextpeer/android/ge;)Lcom/nextpeer/android/ge$ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/ge$ac;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->a(Lcom/nextpeer/android/ge;)V

    return-void
.end method

.method public final onTournamentFailedToSignIn()V
    .locals 3

    const-string v0, "Random - onTournamentFailedToSignIn"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_connect_to_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_connect_to_the_room_description:I

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/ge;->a(II)V

    return-void
.end method

.method public final onTournamentStart(II)V
    .locals 1

    const-string v0, "Random - onTournamentStart"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->f(Lcom/nextpeer/android/ge;)Lcom/nextpeer/android/ge$ab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gf;->a:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->f(Lcom/nextpeer/android/ge;)Lcom/nextpeer/android/ge$ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/ge$ab;->m()V

    :cond_0
    return-void
.end method
