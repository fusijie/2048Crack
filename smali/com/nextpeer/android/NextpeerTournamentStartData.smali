.class public final Lcom/nextpeer/android/NextpeerTournamentStartData;
.super Ljava/lang/Object;


# instance fields
.field public final currentPlayer:Lcom/nextpeer/android/NextpeerTournamentPlayer;

.field public final numberOfPlayers:I

.field public final opponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/NextpeerTournamentPlayer;",
            ">;"
        }
    .end annotation
.end field

.field public final tournamentIsGameControlled:Z

.field public final tournamentName:Ljava/lang/String;

.field public final tournamentRandomSeed:I

.field public final tournamentTimeSeconds:I

.field public final tournamentUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/nextpeer/android/NextpeerTournamentPlayer;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/nextpeer/android/NextpeerTournamentPlayer;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/NextpeerTournamentPlayer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentName:Ljava/lang/String;

    iput p3, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentTimeSeconds:I

    iput p4, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentRandomSeed:I

    iput-boolean p5, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentIsGameControlled:Z

    iput-object p6, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->currentPlayer:Lcom/nextpeer/android/NextpeerTournamentPlayer;

    iput-object p7, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->opponents:Ljava/util/List;

    iput p8, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->numberOfPlayers:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/nextpeer/android/NextpeerTournamentStartData;

    iget-object v2, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentUuid:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentUuid:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentUuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentUuid:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentUuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NextpeerTournamentStartData [tournamentUuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tournamentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerTournamentStartData;->tournamentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
