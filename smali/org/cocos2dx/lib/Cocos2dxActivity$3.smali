.class Lorg/cocos2dx/lib/Cocos2dxActivity$3;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->showAllLeaderboards(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    #getter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/GameHelper;->beginUserInitiatedSignIn()V

    .line 229
    :goto_0
    return-void

    .line 227
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

    invoke-virtual {v1}, Lcom/google/android/gms/games/GamesClient;->getAllLeaderboardsIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x232c

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
