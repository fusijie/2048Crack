.class Lorg/cocos2dx/lib/Cocos2dxActivity$13;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V
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
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$13;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$13;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    #getter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$13;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    #getter for: Lorg/cocos2dx/lib/Cocos2dxActivity;->gameHelper:Lorg/cocos2dx/lib/GameHelper;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$1(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/GameHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$13;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 610
    :cond_0
    return-void
.end method
