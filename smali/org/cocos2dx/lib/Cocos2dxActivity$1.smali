.class Lorg/cocos2dx/lib/Cocos2dxActivity$1;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->showLeaderboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$leaderboardId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->val$leaderboardId:Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    #getter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/GameHelper;->beginUserInitiatedSignIn()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    #getter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2dx/lib/GameHelper;->getGamesClient()Lcom/google/android/gms/games/GamesClient;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->val$leaderboardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/GamesClient;->getLeaderboardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x232c

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
