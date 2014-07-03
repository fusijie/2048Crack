.class Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MdotMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/view/MdotMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMWebView;


# direct methods
.method private constructor <init>(Lcom/mdotm/android/view/MdotMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 297
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 298
    const-string v0, "HTML Loading finished"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mHtmlLoadError:Z
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$2(Lcom/mdotm/android/view/MdotMWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$3(Lcom/mdotm/android/view/MdotMWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    iget-boolean v0, v0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 301
    const-string v0, "Call report impression gif/html"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMWebView;->access$4(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/model/MdotMAdResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImp_pixel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMWebView;->access$5(Lcom/mdotm/android/view/MdotMWebView;)Landroid/content/Context;

    move-result-object v2

    .line 302
    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 320
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    #getter for: Lcom/mdotm/android/view/MdotMWebView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$0(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onLoadError()V

    .line 291
    const-string v0, "HTML Loading error"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const/4 v1, 0x1

    #setter for: Lcom/mdotm/android/view/MdotMWebView;->mHtmlLoadError:Z
    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->access$1(Lcom/mdotm/android/view/MdotMWebView;Z)V

    .line 293
    return-void
.end method
