.class public abstract Lorg/cocos2dx/lib/Cocos2dxActivity;
.super Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;
.implements Lorg/cocos2dx/lib/GameHelper$GameHelperListener;
.implements Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;
.implements Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;


# static fields
.field public static final CLIENT_ALL:I = 0x7

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2

.field private static final REQUEST_ACHIEVEMENTS:I = 0x232b

.field private static final REQUEST_LEADERBOARD:I = 0x232c

.field private static final TAG:Ljava/lang/String;

.field private static interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private static sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field protected static thatContext:Landroid/app/Activity;


# instance fields
.field private gameHelper:Lorg/cocos2dx/lib/GameHelper;

.field private mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

.field protected mRequestedClients:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->thatContext:Landroid/app/Activity;


    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    #invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    invoke-direct {p0}, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;-><init>()V


    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mRequestedClients:I

    .line 69
    return-void
.end method

.method static synthetic access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxActivity;Lorg/cocos2dx/lib/GameHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    return-void
.end method

.method static synthetic access$3(Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-void
.end method

.method static synthetic access$4()Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method public static displayCB(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 501
    return-void
.end method

.method public static displayInterstitial(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 475
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$11;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$11;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method

.method public static flurry_log_event(Ljava/lang/String;)V
    .locals 2
    .parameter "evnt"

    .prologue
    .line 455
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$9;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 122
    #sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->thatContext:Landroid/app/Activity;

    return-object v0
.end method

.method public static getOpenFacebookIntent()V
    .locals 5

    .prologue
    .line 137
    :try_start_0
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.facebook.katana"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "fb://profile/372719772869838"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .local v1, sendIntent:Landroid/content/Intent;
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #sendIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://www.facebook.com/2048game"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .restart local v1       #sendIntent:Landroid/content/Intent;
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static final isAndroidEmulator()Z
    .locals 6

    .prologue
    .line 679
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 680
    .local v1, model:Ljava/lang/String;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "model="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 682
    .local v2, product:Ljava/lang/String;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "product="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, isEmulator:Z
    if-eqz v2, :cond_0

    .line 685
    const-string v3, "sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "sdk_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 687
    :cond_0
    :goto_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isEmulator="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return v0

    .line 685
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGameCenterDisabled()Z
    .locals 2

    .prologue
    .line 109
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->thatContext:Landroid/app/Activity;

    #invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #move-result v0

    const/4 v0, 0x0

    .line 110
    .local v0, status:I
    if-nez v0, :cond_0

    .line 112
    const/4 v1, 0x0

    .line 114
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 519
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 523
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$12;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$12;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static preLoadAds(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 450
    return-void
.end method

.method public static reportAchievement(Ljava/lang/String;I)V
    .locals 3
    .parameter "achievementId"
    .parameter "percent"

    .prologue
    .line 306
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportAchievement: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isGameCenterDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$6;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static reportAchievementIncrimental(Ljava/lang/String;I)V
    .locals 3
    .parameter "achievementId"
    .parameter "percent"

    .prologue
    .line 180
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportAchievement: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isGameCenterDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static shareUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 506
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivity(Landroid/content/Intent;)V

    .line 511
    return-void
.end method

.method public static showAchievements()V
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$4;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$4;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showAllLeaderboards(Ljava/lang/String;)V
    .locals 2
    .parameter "leaderboardId"

    .prologue
    .line 207
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isGameCenterDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$3;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$3;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showLeaderboard(Ljava/lang/String;)V
    .locals 2
    .parameter "leaderboardId"

    .prologue
    .line 152
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isGameCenterDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showVideoAd()V
    .locals 2

    .prologue
    .line 465
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$10;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$10;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method public static submitScore(Ljava/lang/String;I)V
    .locals 2
    .parameter "leaderboardId"
    .parameter "score"

    .prologue
    .line 266
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isGameCenterDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$5;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$5;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 13

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0x8

    .line 626
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 628
    .local v10, framelayout_params:Landroid/view/ViewGroup$LayoutParams;
    new-instance v9, Landroid/widget/FrameLayout;

    #invoke-direct {v9, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    sget-object v11, Lorg/cocos2dx/lib/Cocos2dxActivity;->thatContext:Landroid/app/Activity;
    invoke-direct {v9, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 629
    .local v9, framelayout:Landroid/widget/FrameLayout;
    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 634
    const/4 v0, -0x2

    .line 633
    invoke-direct {v8, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 635
    .local v8, edittext_layout_params:Landroid/view/ViewGroup$LayoutParams;
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditText;

    #invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;-><init>(Landroid/content/Context;)V
    sget-object v12, Lorg/cocos2dx/lib/Cocos2dxActivity;->thatContext:Landroid/app/Activity;
    invoke-direct {v7, v12}, Lorg/cocos2dx/lib/Cocos2dxEditText;-><init>(Landroid/content/Context;)V

    .line 636
    .local v7, edittext:Lorg/cocos2dx/lib/Cocos2dxEditText;
    invoke-virtual {v7, v8}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 642
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 645
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 648
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isAndroidEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 651
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    .line 652
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxEditText(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 655
    invoke-virtual {p0, v9}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setContentView(Landroid/view/View;)V

    .line 656
    return-void
.end method

.method protected isSignedIn()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAchievementUpdated(ILjava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "achievementId"

    .prologue
    .line 337
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 663
    :try_start_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    invoke-virtual {v1, p1, p2, p3}, Lorg/cocos2dx/lib/GameHelper;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 345
    #invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    invoke-super {p0, p1}, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getProxyActivity()Landroid/app/Activity;
    move-result-object v1
    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->thatContext:Landroid/app/Activity;

    .line 347
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    .line 348
    #invoke-static {p0, p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/content/Context;Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;)V
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->thatContext:Landroid/app/Activity;
    invoke-static {v2, p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/content/Context;Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;)V

    .line 349
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V

    .line 350
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->thatContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;)V

    .line 353
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "NPPrefrences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "npShouldLog"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v1}, Lcom/nextpeer/android/NextpeerCocos2DX;->onCreate(Landroid/app/Activity;)V

    .line 363
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$7;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$7;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 376
    const-wide/16 v3, 0xbb8

    .line 363
    invoke-virtual {v1, v2, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$8;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$8;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 411
    const-wide/16 v3, 0xc8

    .line 379
    invoke-virtual {v1, v2, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 2

    .prologue
    .line 675
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    #invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->thatContext:Landroid/app/Activity;
    invoke-direct {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 542
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 546
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onPause()V

    .line 547
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 548
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 533
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 535
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    .line 536
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 538
    return-void
.end method

.method public onScoreSubmitted(ILcom/google/android/gms/games/leaderboard/SubmitScoreResult;)V
    .locals 1
    .parameter "statusCode"
    .parameter "result"

    .prologue
    .line 292
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isGameCenterDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :cond_0
    return-void
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 592
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 595
    invoke-static {}, Lcom/nextpeer/android/NextpeerCocos2DX;->onStart()V

    .line 596
    const-string v0, "MFH5RH6S9Q25KNKTF7KX"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$13;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$13;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 611
    const-wide/16 v2, 0xa

    .line 597
    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 617
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 579
    invoke-static {}, Lcom/nextpeer/android/NextpeerCocos2DX;->onStop()V

    .line 580
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/GameHelper;->onStop()V

    .line 585
    :cond_0
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 586
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "pRunnable"

    .prologue
    .line 568
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pTitle"
    .parameter "pMessage"

    .prologue
    .line 552
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 553
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 554
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 555
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .parameter "pTitle"
    .parameter "pContent"
    .parameter "pInputMode"
    .parameter "pInputFlag"
    .parameter "pReturnType"
    .parameter "pMaxLength"

    .prologue
    .line 560
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 561
    .local v7, msg:Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 562
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    return-void
.end method
