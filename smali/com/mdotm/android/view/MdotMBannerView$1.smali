.class Lcom/mdotm/android/view/MdotMBannerView$1;
.super Landroid/webkit/WebViewClient;
.source "MdotMBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMBannerView;->initializeAdView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field run:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/mdotm/android/view/MdotMBannerView;

.field timeout:Z


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMBannerView;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    .line 174
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 177
    new-instance v0, Lcom/mdotm/android/view/MdotMBannerView$1$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMBannerView$1$1;-><init>(Lcom/mdotm/android/view/MdotMBannerView$1;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->run:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMBannerView$1;)Lcom/mdotm/android/view/MdotMBannerView;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 253
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->timeout:Z

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Click page finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #calls: Lcom/mdotm/android/view/MdotMBannerView;->adNetworkCompleted()V
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->access$1(Lcom/mdotm/android/view/MdotMBannerView;)V

    .line 260
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "started Loading url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #calls: Lcom/mdotm/android/view/MdotMBannerView;->isAdSelectionInProgress()Z
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->access$2(Lcom/mdotm/android/view/MdotMBannerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->timeout:Z

    .line 201
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMBannerView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMBannerView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->run:Ljava/lang/Runnable;

    .line 203
    const-wide/16 v2, 0x3a98

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 208
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->timeout:Z

    .line 275
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #calls: Lcom/mdotm/android/view/MdotMBannerView;->isAdSelectionInProgress()Z
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->access$2(Lcom/mdotm/android/view/MdotMBannerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load landing url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #calls: Lcom/mdotm/android/view/MdotMBannerView;->adNetworkCompleted()V
    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->access$1(Lcom/mdotm/android/view/MdotMBannerView;)V

    .line 283
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returned url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    if-eqz p2, :cond_0

    .line 219
    const-string v1, "market://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 222
    new-instance v2, Landroid/content/Intent;

    .line 223
    const-string v3, "android.intent.action.VIEW"

    .line 224
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 222
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #getter for: Lcom/mdotm/android/view/MdotMBannerView;->mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMBannerView;->access$3(Lcom/mdotm/android/view/MdotMBannerView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mdotm/android/listener/MdotMAdActionListener;->leaveApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->this$0:Lcom/mdotm/android/view/MdotMBannerView;

    #calls: Lcom/mdotm/android/view/MdotMBannerView;->adNetworkCompleted()V
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMBannerView;->access$1(Lcom/mdotm/android/view/MdotMBannerView;)V

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMBannerView$1;->timeout:Z

    .line 237
    const/4 v1, 0x1

    .line 242
    :goto_1
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Google Play store app is not installed"

    .line 227
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loading other url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method
