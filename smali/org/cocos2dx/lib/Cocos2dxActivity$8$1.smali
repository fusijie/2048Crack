.class Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "Cocos2dxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$8;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$8;

    .line 392
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 395
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method
