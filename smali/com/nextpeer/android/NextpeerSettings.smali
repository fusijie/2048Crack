.class public final Lcom/nextpeer/android/NextpeerSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;,
        Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;,
        Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;
    }
.end annotation


# instance fields
.field public inGameNotificationAlignment:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;

.field public inGameNotificationPosition:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

.field public inGameNotificationStyle:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

.field public shouldShowStatusBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerSettings;->shouldShowStatusBar:Z

    sget-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerSettings;->inGameNotificationPosition:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    sget-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->LIST:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerSettings;->inGameNotificationStyle:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    sget-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;->HORIZONTAL:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerSettings;->inGameNotificationAlignment:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayAlignment;

    return-void
.end method
