.class Lcom/mdotm/android/view/MdotMActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MdotMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field run:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/mdotm/android/view/MdotMActivity;

.field timeout:Z


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    .line 81
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 84
    new-instance v0, Lcom/mdotm/android/view/MdotMActivity$1$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMActivity$1$1;-><init>(Lcom/mdotm/android/view/MdotMActivity$1;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->run:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMActivity$1;)Lcom/mdotm/android/view/MdotMActivity;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 149
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMActivity$1;->timeout:Z

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Click page finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iput-boolean v2, v0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    .line 153
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "started Loading url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iget-boolean v0, v0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->timeout:Z

    .line 104
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$1;->run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$1;->run:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 108
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMActivity$1;->timeout:Z

    .line 161
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iget-boolean v0, v0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load landing url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iput-boolean v2, v0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    .line 171
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returned url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    if-eqz p2, :cond_1

    const-string v2, "market://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    #getter for: Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMActivity;->access$1(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    #getter for: Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;
    invoke-static {v2}, Lcom/mdotm/android/view/MdotMActivity;->access$1(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/mdotm/android/listener/InterstitialActionListener;->onLeave()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$1;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iput-boolean v4, v2, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    .line 129
    iput-boolean v4, p0, Lcom/mdotm/android/view/MdotMActivity$1;->timeout:Z

    .line 138
    const/4 v2, 0x1

    .line 141
    :goto_1
    return v2

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Google Play store app is not installed"

    .line 124
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loading other url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method
