.class public final Lcom/nextpeer/android/NextpeerCocos2DX;
.super Lcom/nextpeer/android/NextpeerListener;


# static fields
.field protected static a:Landroid/content/Context;

.field protected static b:Lcom/nextpeer/android/NextpeerCocos2DX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nextpeer/android/NextpeerCocos2DX;->a:Landroid/content/Context;

    sput-object v0, Lcom/nextpeer/android/NextpeerCocos2DX;->b:Lcom/nextpeer/android/NextpeerCocos2DX;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerListener;-><init>()V

    return-void
.end method

.method public static enableRankingDisplay(Z)V
    .locals 0

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->enableRankingDisplay(Z)V

    return-void
.end method

.method public static getCurrentPlayerId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->getCurrentPlayerDetails()Lcom/nextpeer/android/NextpeerTournamentPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCurrentPlayerName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->getCurrentPlayerDetails()Lcom/nextpeer/android/NextpeerTournamentPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/nextpeer/android/NextpeerTournamentPlayer;->playerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 2

    #sget-object v0, Lcom/nextpeer/android/NextpeerCocos2DX;->a:Landroid/content/Context;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;
    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context is null! Call to NextpeerCocos2DX.onCreate() is probably missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    #sget-object v0, Lcom/nextpeer/android/NextpeerCocos2DX;->a:Landroid/content/Context;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;
    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/NextpeerCocos2DX;->b:Lcom/nextpeer/android/NextpeerCocos2DX;

    if-nez v1, :cond_1

    new-instance v1, Lcom/nextpeer/android/NextpeerCocos2DX;

    invoke-direct {v1}, Lcom/nextpeer/android/NextpeerCocos2DX;-><init>()V

    sput-object v1, Lcom/nextpeer/android/NextpeerCocos2DX;->b:Lcom/nextpeer/android/NextpeerCocos2DX;

    :cond_1
    sget-object v1, Lcom/nextpeer/android/NextpeerCocos2DX;->b:Lcom/nextpeer/android/NextpeerCocos2DX;

    invoke-static {v0, p0, v1}, Lcom/nextpeer/android/Nextpeer;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/NextpeerListener;)V

    invoke-static {}, Lcom/nextpeer/android/NextpeerCocos2DX;->onStart()V

    return-void
.end method

.method public static isCurrentlyInTournament()Z
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isCurrentlyInTournament()Z

    move-result v0

    return v0
.end method

.method public static launch()V
    .locals 0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->launch()V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/NextpeerCocos2DX;->a:Landroid/content/Context;

    return-void
.end method

.method public static onStart()V
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->onStart()V

    :cond_0
    return-void
.end method

.method public static onStop()V
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isCurrentlyInTournament()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->reportForfeitForCurrentTournament()V

    :cond_0
    return-void
.end method

.method public static pushDataToOtherPlayers([B)V
    .locals 0

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->pushDataToOtherPlayers([B)V

    return-void
.end method

.method public static reportControlledTournamentOverWithScore(I)V
    .locals 0

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->reportControlledTournamentOverWithScore(I)V

    return-void
.end method

.method public static reportForfeitForCurrentTournament()V
    .locals 0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->reportForfeitForCurrentTournament()V

    return-void
.end method

.method public static reportScoreForCurrentTournament(I)V
    .locals 0

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->reportScoreForCurrentTournament(I)V

    return-void
.end method

.method public static requestRecordingControlFastForwardRecording(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nextpeer/android/Nextpeer;->requestRecordingControlFastForwardRecording(Ljava/lang/String;I)V

    return-void
.end method

.method public static requestRecordingControlPauseRecording(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->requestRecordingControlPauseRecording(Ljava/lang/String;)V

    return-void
.end method

.method public static requestRecordingControlResumeRecording(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->requestRecordingControlResumeRecording(Ljava/lang/String;)V

    return-void
.end method

.method public static requestRecordingControlRewindRecording(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nextpeer/android/Nextpeer;->requestRecordingControlRewindRecording(Ljava/lang/String;I)V

    return-void
.end method

.method public static requestRecordingControlScoreModifier(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nextpeer/android/Nextpeer;->requestRecordingControlScoreModifier(Ljava/lang/String;I)V

    return-void
.end method

.method public static requestRecordingControlStopRecording(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->requestRecordingControlStopRecording(Ljava/lang/String;)V

    return-void
.end method

.method public static timeLeftForTournament()I
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->timeLeftForTournament()I

    move-result v0

    return v0
.end method

.method public static unreliablePushDataToOtherPlayers([B)V
    .locals 0

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->unreliablePushDataToOtherPlayers([B)V

    return-void
.end method


# virtual methods
.method public final onNextpeerAppear()V
    .locals 0

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerCocos2DX;->onNextpeerAppearNative()V

    return-void
.end method

.method protected final native onNextpeerAppearNative()V
.end method

.method public final onNextpeerDisappear()V
    .locals 0

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerCocos2DX;->onNextpeerDisappearNative()V

    return-void
.end method

.method protected final native onNextpeerDisappearNative()V
.end method

.method public final onNextpeerReturnToGame()V
    .locals 0

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerCocos2DX;->onNextpeerReturnToGameNative()V

    return-void
.end method

.method protected final native onNextpeerReturnToGameNative()V
.end method

.method public final onReceiveTournamentCustomMessage(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/NextpeerCocos2DX;->onReceiveTournamentCustomMessageNative(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V

    return-void
.end method

.method protected final native onReceiveTournamentCustomMessageNative(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
.end method

.method public final onReceiveUnreliableTournamentCustomMessage(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/NextpeerCocos2DX;->onReceiveUnreliableTournamentCustomMessageNative(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V

    return-void
.end method

.method protected final native onReceiveUnreliableTournamentCustomMessageNative(Lcom/nextpeer/android/NextpeerTournamentCustomMessage;)V
.end method

.method public final onTournamentEnd(Lcom/nextpeer/android/NextpeerTournamentEndData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/NextpeerCocos2DX;->onTournamentEndNative(Lcom/nextpeer/android/NextpeerTournamentEndData;)V

    return-void
.end method

.method protected final native onTournamentEndNative(Lcom/nextpeer/android/NextpeerTournamentEndData;)V
.end method

.method public final onTournamentStart(Lcom/nextpeer/android/NextpeerTournamentStartData;)V
    .locals 2

    iget-object v0, p1, Lcom/nextpeer/android/NextpeerTournamentStartData;->opponents:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/nextpeer/android/NextpeerTournamentPlayer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nextpeer/android/NextpeerTournamentPlayer;

    invoke-virtual {p0, p1, v0}, Lcom/nextpeer/android/NextpeerCocos2DX;->onTournamentStartNative(Lcom/nextpeer/android/NextpeerTournamentStartData;[Lcom/nextpeer/android/NextpeerTournamentPlayer;)V

    return-void
.end method

.method protected final native onTournamentStartNative(Lcom/nextpeer/android/NextpeerTournamentStartData;[Lcom/nextpeer/android/NextpeerTournamentPlayer;)V
.end method
