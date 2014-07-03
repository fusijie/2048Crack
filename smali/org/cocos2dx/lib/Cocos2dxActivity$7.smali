.class Lorg/cocos2dx/lib/Cocos2dxActivity$7;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 368
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isGameCenterDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/GameHelper;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v1, v2}, Lorg/cocos2dx/lib/GameHelper;-><init>(Landroid/app/Activity;)V

    #setter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$2(Lorg/cocos2dx/lib/Cocos2dxActivity;Lorg/cocos2dx/lib/GameHelper;)V

    .line 371
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    #getter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/lib/GameHelper;->setup(Lorg/cocos2dx/lib/GameHelper$GameHelperListener;I)V

    .line 372
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    #getter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 375
    :cond_0
    return-void
.end method
