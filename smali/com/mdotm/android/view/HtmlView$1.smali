.class Lcom/mdotm/android/view/HtmlView$1;
.super Landroid/webkit/WebViewClient;
.source "HtmlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/HtmlView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field run:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/mdotm/android/view/HtmlView;

.field timeout:Z


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/HtmlView;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 65
    new-instance v0, Lcom/mdotm/android/view/HtmlView$1$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/HtmlView$1$1;-><init>(Lcom/mdotm/android/view/HtmlView$1;)V

    iput-object v0, p0, Lcom/mdotm/android/view/HtmlView$1;->run:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/HtmlView$1;)Lcom/mdotm/android/view/HtmlView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/HtmlView$1;->timeout:Z

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Click page finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    #calls: Lcom/mdotm/android/view/HtmlView;->adNetworkCompleted()V
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView;->access$1(Lcom/mdotm/android/view/HtmlView;)V

    .line 122
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "started Loading url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    #calls: Lcom/mdotm/android/view/HtmlView;->isAdSelectionInProgress()Z
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView;->access$2(Lcom/mdotm/android/view/HtmlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/HtmlView$1;->timeout:Z

    .line 84
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    iget-object v0, v0, Lcom/mdotm/android/view/HtmlView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/HtmlView$1;->run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    iget-object v0, v0, Lcom/mdotm/android/view/HtmlView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/HtmlView$1;->run:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 88
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/HtmlView$1;->timeout:Z

    .line 130
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    #calls: Lcom/mdotm/android/view/HtmlView;->isAdSelectionInProgress()Z
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView;->access$2(Lcom/mdotm/android/view/HtmlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load landing url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    #calls: Lcom/mdotm/android/view/HtmlView;->adNetworkCompleted()V
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView;->access$1(Lcom/mdotm/android/view/HtmlView;)V

    .line 140
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to report impression : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returned url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    if-eqz p2, :cond_0

    const-string v1, "market://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 97
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    #getter for: Lcom/mdotm/android/view/HtmlView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;
    invoke-static {v1}, Lcom/mdotm/android/view/HtmlView;->access$3(Lcom/mdotm/android/view/HtmlView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mdotm/android/listener/MdotMAdActionListener;->leaveApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mdotm/android/view/HtmlView$1;->timeout:Z

    .line 107
    iget-object v1, p0, Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;

    #calls: Lcom/mdotm/android/view/HtmlView;->adNetworkCompleted()V
    invoke-static {v1}, Lcom/mdotm/android/view/HtmlView;->access$1(Lcom/mdotm/android/view/HtmlView;)V

    .line 108
    const/4 v1, 0x1

    .line 111
    :goto_1
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Google Play store app is not installed"

    .line 100
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loading other url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method
