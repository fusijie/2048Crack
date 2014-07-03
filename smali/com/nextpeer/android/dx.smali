.class abstract Lcom/nextpeer/android/dx;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnectFromServer()V
    .locals 0

    return-void
.end method

.method public onEncounterError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEnterRoom(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onNotifiedAboutPreTournamentTimeLimit(I)V
    .locals 0

    return-void
.end method

.method public onPlayerEnteredRoom(Lcom/nextpeer/android/dp;)V
    .locals 0

    return-void
.end method

.method public onPlayerLeftRoom(Lcom/nextpeer/android/dp;)V
    .locals 0

    return-void
.end method

.method public onReceiveMatchDetails(I)V
    .locals 0

    return-void
.end method

.method public onReceiveResults(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/dq;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveShowPlayNow()V
    .locals 0

    return-void
.end method

.method public onReceiveTournamentStatus(Lcom/nextpeer/android/NextpeerTournamentStatusInfo;)V
    .locals 0

    return-void
.end method

.method public onReceiveTournamentUpdate(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
    .locals 0

    return-void
.end method

.method public onReceiveUnreliableTournamentUpdate(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
    .locals 0

    return-void
.end method

.method public onReportedTournamentEnd()V
    .locals 0

    return-void
.end method

.method public onTournamentFailedToSignIn()V
    .locals 0

    return-void
.end method

.method public onTournamentStart(II)V
    .locals 0

    return-void
.end method
