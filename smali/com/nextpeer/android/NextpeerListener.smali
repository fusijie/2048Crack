.class public abstract Lcom/nextpeer/android/NextpeerListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNextpeerAppear()V
    .locals 0

    return-void
.end method

.method public onNextpeerDisappear()V
    .locals 0

    return-void
.end method

.method public onNextpeerReturnToGame()V
    .locals 0

    return-void
.end method

.method public onReceiveTournamentCustomMessage(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
    .locals 0

    return-void
.end method

.method public onReceiveTournamentStatus(Lcom/nextpeer/android/NextpeerTournamentStatusInfo;)V
    .locals 0

    return-void
.end method

.method public onReceiveUnreliableTournamentCustomMessage(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
    .locals 0

    return-void
.end method

.method public onSupportsTournament(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onTournamentEnd(Lcom/nextpeer/android/NextpeerTournamentEndData;)V
.end method

.method public abstract onTournamentStart(Lcom/nextpeer/android/NextpeerTournamentStartData;)V
.end method
