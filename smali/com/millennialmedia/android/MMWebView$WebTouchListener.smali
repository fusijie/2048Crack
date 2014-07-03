.class Lcom/millennialmedia/android/MMWebView$WebTouchListener;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebTouchListener"
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
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView$WebTouchListener;->webRef:Ljava/lang/ref/WeakReference;

    .line 114
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    iget-object v4, p0, Lcom/millennialmedia/android/MMWebView$WebTouchListener;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMWebView;

    .line 120
    .local v1, webView:Lcom/millennialmedia/android/MMWebView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 121
    .local v0, consume:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 122
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 124
    :cond_0
    :goto_1
    return v0

    .end local v0           #consume:Z
    :cond_1
    move v0, v3

    .line 120
    goto :goto_0

    .restart local v0       #consume:Z
    :cond_2
    move v0, v3

    .line 122
    goto :goto_1
.end method
