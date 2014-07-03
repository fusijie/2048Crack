.class Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;
.super Ljava/lang/Object;
.source "MillennialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/millennial/MillennialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterstitialListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 328
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 334
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 339
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 344
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 350
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 3
    .parameter "ad"
    .parameter "exception"

    .prologue
    .line 355
    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0
.end method
