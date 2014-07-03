.class Lcom/millennialmedia/android/MMWebView$5;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adView:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$5;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method handleUnresize()V
    .locals 3

    .prologue
    const/16 v2, -0x32

    .line 537
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    #calls: Lcom/millennialmedia/android/MMWebView;->hasDefaultResizeParams()Z
    invoke-static {v1}, Lcom/millennialmedia/android/MMWebView;->access$000(Lcom/millennialmedia/android/MMWebView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 540
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v1, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 541
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v1, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 542
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    .line 543
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    .line 544
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->requestLayout()V

    .line 547
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 526
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->handleUnresize()V

    .line 528
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView$5;->handleUnresize()V

    .line 529
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->setMraidDefault()V

    .line 530
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 531
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->invalidate()V

    .line 532
    monitor-exit v1

    .line 533
    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
