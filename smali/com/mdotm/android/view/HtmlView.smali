.class public Lcom/mdotm/android/view/HtmlView;
.super Landroid/widget/RelativeLayout;
.source "HtmlView.java"


# instance fields
.field private activityIndicator:Landroid/widget/ProgressBar;

.field private adSelectionInProgress:Z

.field handler:Landroid/os/Handler;

.field private isAdClicked:Z

.field private mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

.field private mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;I)V
    .locals 9
    .parameter "context"
    .parameter "adResponse"
    .parameter "listener"
    .parameter "style"

    .prologue
    const/16 v8, 0x28

    const/16 v7, 0xd

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mdotm/android/view/HtmlView;->webView:Landroid/webkit/WebView;

    .line 27
    iput-boolean v4, p0, Lcom/mdotm/android/view/HtmlView;->isAdClicked:Z

    .line 34
    const-string v2, "html resource HtmlView"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mdotm/android/view/HtmlView;->handler:Landroid/os/Handler;

    .line 36
    iput-object p3, p0, Lcom/mdotm/android/view/HtmlView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 37
    iput-object p2, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 38
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    invoke-direct {p0, p4}, Lcom/mdotm/android/view/HtmlView;->getWidth(I)I

    move-result v2

    invoke-direct {p0, p4}, Lcom/mdotm/android/view/HtmlView;->getHeight(I)I

    move-result v3

    .line 38
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    if-ne v5, p4, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/mdotm/android/view/HtmlView;->modifyResponse()V

    .line 43
    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/mdotm/android/view/HtmlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/HtmlView;->setGravity(I)V

    .line 46
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mdotm/android/view/HtmlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    .line 47
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v0, activityParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 52
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 53
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 54
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setId(I)V

    .line 56
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/HtmlView;->addView(Landroid/view/View;)V

    .line 59
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/view/HtmlView;->webView:Landroid/webkit/WebView;

    .line 61
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/mdotm/android/view/HtmlView$1;

    invoke-direct {v3, p0}, Lcom/mdotm/android/view/HtmlView$1;-><init>(Lcom/mdotm/android/view/HtmlView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 142
    invoke-direct {p0, p1, p4}, Lcom/mdotm/android/view/HtmlView;->initView(Landroid/content/Context;I)V

    .line 143
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/HtmlView;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/view/HtmlView;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/mdotm/android/view/HtmlView;->adNetworkCompleted()V

    return-void
.end method

.method static synthetic access$2(Lcom/mdotm/android/view/HtmlView;)Z
    .locals 1
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/mdotm/android/view/HtmlView;->isAdSelectionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/view/HtmlView;)Lcom/mdotm/android/listener/MdotMAdActionListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/view/HtmlView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mdotm/android/view/HtmlView;)Lcom/mdotm/android/model/MdotMAdResponse;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    return-object v0
.end method

.method private adNetworkCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    const-string v0, "On ad network completed"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, v1}, Lcom/mdotm/android/view/HtmlView;->setAdSelectionInProgress(Z)V

    .line 194
    iput-boolean v1, p0, Lcom/mdotm/android/view/HtmlView;->isAdClicked:Z

    .line 195
    invoke-direct {p0}, Lcom/mdotm/android/view/HtmlView;->hideActivityIndicator()V

    .line 196
    return-void
.end method

.method private getHeight(I)I
    .locals 1
    .parameter "style"

    .prologue
    .line 287
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    .line 290
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getWidth(I)I
    .locals 1
    .parameter "style"

    .prologue
    .line 295
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    .line 298
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private hideActivityIndicator()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/mdotm/android/view/HtmlView$3;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/HtmlView$3;-><init>(Lcom/mdotm/android/view/HtmlView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/HtmlView;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "style"

    .prologue
    .line 152
    new-instance v2, Lcom/mdotm/android/view/MdotMWebView;

    iget-object v3, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 153
    iget-object v4, p0, Lcom/mdotm/android/view/HtmlView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 152
    invoke-direct {v2, p1, v3, v4, p2}, Lcom/mdotm/android/view/MdotMWebView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;I)V

    .line 154
    .local v2, webView:Lcom/mdotm/android/view/MdotMWebView;
    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/HtmlView;->addView(Landroid/view/View;)V

    .line 156
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, clickLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    iget-object v3, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v4}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v4

    .line 157
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v1, clickparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/HtmlView;->addView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method private isAdSelectionInProgress()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/mdotm/android/view/HtmlView;->adSelectionInProgress:Z

    return v0
.end method

.method private modifyResponse()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 303
    iget-object v1, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, response:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "width=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mdotm/android/view/HtmlView;->getWidth(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "width:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, v4}, Lcom/mdotm/android/view/HtmlView;->getWidth(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mdotm/android/view/HtmlView;->getHeight(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mdotm/android/view/HtmlView;->getHeight(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mod = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private setAdSelectionInProgress(Z)V
    .locals 0
    .parameter "isProgress"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/mdotm/android/view/HtmlView;->adSelectionInProgress:Z

    .line 183
    return-void
.end method

.method private showActivityIndicator()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/mdotm/android/view/HtmlView$2;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/HtmlView$2;-><init>(Lcom/mdotm/android/view/HtmlView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/HtmlView;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method


# virtual methods
.method protected clicked(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 227
    const-string v1, "  Selected to clicked  "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/mdotm/android/view/HtmlView;->isAdSelectionInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/mdotm/android/view/HtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, clickedUrl:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/HtmlView;->setAdSelectionInProgress(Z)V

    .line 234
    invoke-direct {p0}, Lcom/mdotm/android/view/HtmlView;->showActivityIndicator()V

    .line 235
    new-instance v1, Lcom/mdotm/android/view/HtmlView$4;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/view/HtmlView$4;-><init>(Lcom/mdotm/android/view/HtmlView;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Lcom/mdotm/android/view/HtmlView$4;->start()V

    .line 284
    .end local v0           #clickedUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v1, "ad selection under progress"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_1
    const-string v1, "selected ad is null"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
