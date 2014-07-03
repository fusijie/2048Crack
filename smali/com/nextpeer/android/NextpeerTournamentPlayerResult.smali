.class public final Lcom/nextpeer/android/NextpeerTournamentPlayerResult;
.super Ljava/lang/Object;


# instance fields
.field public final didForfeit:Z

.field public final isStillPlaying:Z

.field public final player:Lcom/nextpeer/android/NextpeerTournamentPlayer;

.field public final score:I


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/NextpeerTournamentPlayer;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;->player:Lcom/nextpeer/android/NextpeerTournamentPlayer;

    iput-boolean p2, p0, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;->isStillPlaying:Z

    iput-boolean p3, p0, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;->didForfeit:Z

    iput p4, p0, Lcom/nextpeer/android/NextpeerTournamentPlayerResult;->score:I

    return-void
.end method
