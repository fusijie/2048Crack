.class Lorg/cocos2dx/lib/Cocos2dxActivity$8;
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
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$8;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isGameCenterDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$3(Lcom/google/android/gms/ads/InterstitialAd;)V

    .line 389
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$4()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    const-string v1, "ca-app-pub-3130214542525024/3260001792"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$4()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$8$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 409
    :cond_0
    return-void
.end method
