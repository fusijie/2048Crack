.class public final Lcom/nextpeer/android/NextpeerTournamentStatusInfo;
.super Ljava/lang/Object;


# instance fields
.field public final sortedResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/NextpeerTournamentPlayerResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/NextpeerTournamentPlayerResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerTournamentStatusInfo;->sortedResults:Ljava/util/List;

    return-void
.end method
