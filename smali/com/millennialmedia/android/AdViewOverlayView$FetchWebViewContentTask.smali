.class Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;
.super Landroid/os/AsyncTask;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchWebViewContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private _overlayViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/AdViewOverlayView;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Ljava/lang/String;

.field private cancelVideo:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "baseUrl"

    .prologue
    .line 636
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 637
    iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    .line 638
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->_overlayViewRef:Ljava/lang/ref/WeakReference;

    .line 639
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 626
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .parameter "arg0"

    .prologue
    .line 656
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z

    .line 657
    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 659
    :try_start_0
    new-instance v5, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v5}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v6, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 661
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz v2, :cond_0

    .line 662
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 663
    .local v3, statusLine:Lorg/apache/http/StatusLine;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x194

    if-eq v5, v6, :cond_0

    .line 666
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 668
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 669
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 673
    .local v4, webContent:Ljava/lang/String;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v1           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v3           #statusLine:Lorg/apache/http/StatusLine;
    .end local v4           #webContent:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "AdViewOverlayView"

    const-string v6, "Unable to get weboverlay"

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 682
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 626
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "webContent"

    .prologue
    .line 689
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->_overlayViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/AdViewOverlayView;

    .line 690
    .local v1, view:Lcom/millennialmedia/android/AdViewOverlayView;
    if-eqz v1, :cond_1

    .line 691
    iget-boolean v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, v1, Lcom/millennialmedia/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayActivity;

    .line 694
    .local v0, overlayActivity:Lcom/millennialmedia/android/AdViewOverlayActivity;
    if-eqz v0, :cond_2

    .line 695
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->finish()V

    .line 700
    .end local v0           #overlayActivity:Lcom/millennialmedia/android/AdViewOverlayActivity;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v2, :cond_1

    .line 702
    iget-object v2, v1, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/millennialmedia/android/MMAdImplController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_1
    return-void

    .line 697
    .restart local v0       #overlayActivity:Lcom/millennialmedia/android/AdViewOverlayActivity;
    :cond_2
    #calls: Lcom/millennialmedia/android/AdViewOverlayView;->removeProgressBar()V
    invoke-static {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 644
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->_overlayViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;

    .line 645
    .local v0, view:Lcom/millennialmedia/android/AdViewOverlayView;
    if-eqz v0, :cond_0

    .line 646
    #getter for: Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$400(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 647
    #calls: Lcom/millennialmedia/android/AdViewOverlayView;->initProgressBar()V
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$500(Lcom/millennialmedia/android/AdViewOverlayView;)V

    .line 650
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 651
    return-void
.end method
