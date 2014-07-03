.class Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;
.super Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
.source "MMAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MMAdImplRedirectionListenerImpl"
.end annotation


# instance fields
.field adImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 2
    .parameter "adImpl"

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;-><init>()V

    .line 371
    if-eqz p1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    .line 373
    iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->creatorAdImplInternalId:J

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdProperties()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 421
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 422
    .local v0, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v1

    .line 425
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivityStartable(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    .line 392
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMAdImpl;

    .line 393
    .local v1, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 395
    .local v2, c:Landroid/content/Context;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 396
    check-cast v0, Landroid/app/Activity;

    .line 397
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    const/4 v3, 0x0

    .line 402
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #c:Landroid/content/Context;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public startingActivity(Landroid/net/Uri;)V
    .locals 3
    .parameter "destinationUri"

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingActivity(Landroid/net/Uri;)V

    .line 409
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 412
    .local v0, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_1

    .line 413
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->overlayOpened(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 416
    .end local v0           #adImpl:Lcom/millennialmedia/android/MMAdImpl;
    :cond_1
    return-void
.end method

.method public updateLastVideoViewedTime()V
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 382
    .local v0, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 383
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method
