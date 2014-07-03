.class Lorg/cocos2dx/lib/Cocos2dxActivity$5;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->submitScore(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$leaderboardId:Ljava/lang/String;

.field private final synthetic val$score:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$5;->val$leaderboardId:Ljava/lang/String;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$5;->val$score:I

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 284
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    #getter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/GameHelper;->getGamesClient()Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$5;->val$leaderboardId:Ljava/lang/String;

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$5;->val$score:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/games/GamesClient;->submitScoreImmediate(Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;Ljava/lang/String;J)V

    .line 285
    return-void
.end method
