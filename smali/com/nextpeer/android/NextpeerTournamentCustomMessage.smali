.class public final Lcom/nextpeer/android/NextpeerTournamentCustomMessage;
.super Ljava/lang/Object;


# instance fields
.field public final customMessage:[B

.field public final playerId:Ljava/lang/String;

.field public final playerImageUrl:Ljava/lang/String;

.field public final playerIsBot:Z

.field public final playerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerTournamentCustomMessage;->playerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/NextpeerTournamentCustomMessage;->playerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/NextpeerTournamentCustomMessage;->playerImageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/nextpeer/android/NextpeerTournamentCustomMessage;->customMessage:[B

    iput-boolean p5, p0, Lcom/nextpeer/android/NextpeerTournamentCustomMessage;->playerIsBot:Z

    return-void
.end method
