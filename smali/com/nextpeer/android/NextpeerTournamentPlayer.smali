.class public final Lcom/nextpeer/android/NextpeerTournamentPlayer;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field public final playerId:Ljava/lang/String;

.field public final playerImageUrl:Ljava/lang/String;

.field public final playerIsBot:Z

.field public final playerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->a:Z

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->b:Z

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerImageUrl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerIsBot:Z

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
    check-cast p1, Lcom/nextpeer/android/NextpeerTournamentPlayer;

    iget-object v2, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isCurrentUser()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->a:Z

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->b:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    iget-object v1, v1, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v1, v1, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->a:Z

    iget-boolean v0, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->b:Z

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NextpeerTournamentPlayer [playerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
