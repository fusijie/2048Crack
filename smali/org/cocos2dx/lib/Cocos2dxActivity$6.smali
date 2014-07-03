.class Lorg/cocos2dx/lib/Cocos2dxActivity$6;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->reportAchievement(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$achievementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$6;->val$achievementId:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 325
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    #getter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/GameHelper;->getGamesClient()Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$6;->val$achievementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/games/GamesClient;->unlockAchievementImmediate(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;)V

    .line 326
    return-void
.end method
