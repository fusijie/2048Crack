.class Lcom/millennialmedia/android/MMWebView$BannerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BannerGestureListener"
.end annotation


# instance fields
.field webRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;->webRef:Ljava/lang/ref/WeakReference;

    .line 151
    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 137
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMWebView;

    .line 138
    .local v1, webView:Lcom/millennialmedia/android/MMWebView;
    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getMMAdView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    .line 140
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-eqz v0, :cond_0

    .line 141
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Event;->adSingleTap(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 144
    .end local v0           #adView:Lcom/millennialmedia/android/MMAdView;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
