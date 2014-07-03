.class Lcom/mdotm/android/view/MdotMWebView;
.super Landroid/webkit/WebView;
.source "MdotMWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;,
        Lcom/mdotm/android/view/MdotMWebView$MyWebViewClient;
    }
.end annotation


# static fields
.field static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private isWebViewHasFocus:Z

.field private mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

.field private mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

.field private mBrowserFrameLayout:Landroid/widget/FrameLayout;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mHtmlLoadError:Z

.field public mIsImpReported:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field private mWebChromeClient:Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 439
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/mdotm/android/view/MdotMWebView;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->mHtmlLoadError:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 53
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->init(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->mHtmlLoadError:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 53
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 51
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->mHtmlLoadError:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 53
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;I)V
    .locals 4
    .parameter "context"
    .parameter "adResponse"
    .parameter "listener"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mHtmlLoadError:Z

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 53
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 76
    const-string v1, "html resource MdotMWebView"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mHtmlLoadError:Z

    .line 78
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mIsImpReported:Z

    .line 79
    iput-object p3, p0, Lcom/mdotm/android/view/MdotMWebView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 80
    iput-object p2, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 81
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->init(Landroid/content/Context;)V

    .line 85
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 86
    invoke-direct {p0, p4}, Lcom/mdotm/android/view/MdotMWebView;->getWidth(I)I

    move-result v1

    invoke-direct {p0, p4}, Lcom/mdotm/android/view/MdotMWebView;->getHeight(I)I

    move-result v2

    .line 85
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v0, webParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/MdotMWebView;->setBackgroundColor(I)V

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/listener/MdotMAdActionListener;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/view/MdotMWebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMWebView;->mHtmlLoadError:Z

    return-void
.end method

.method static synthetic access$10(Lcom/mdotm/android/view/MdotMWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/view/MdotMWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mHtmlLoadError:Z

    return v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/view/MdotMWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    return v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/model/MdotMAdResponse;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mdotm/android/view/MdotMWebView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/mdotm/android/view/MdotMWebView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$9(Lcom/mdotm/android/view/MdotMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method private getHeight(I)I
    .locals 1
    .parameter "style"

    .prologue
    .line 424
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    .line 427
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getInDp(I)I
    .locals 4
    .parameter "pt"

    .prologue
    .line 279
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 280
    .local v0, scale:F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 281
    .local v1, value:I
    return v1
.end method

.method private getWidth(I)I
    .locals 1
    .parameter "style"

    .prologue
    .line 432
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    .line 435
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 112
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    .line 113
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mLayout:Landroid/widget/FrameLayout;

    .line 115
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    .line 116
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mContentView:Landroid/widget/FrameLayout;

    .line 117
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 118
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, linearLayout:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMWebView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/mdotm/android/view/MdotMWebView;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 126
    .local v1, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 128
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMWebView;->setInitialScale(I)V

    .line 129
    invoke-virtual {p0, v6}, Lcom/mdotm/android/view/MdotMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 130
    invoke-virtual {p0, v6}, Lcom/mdotm/android/view/MdotMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 132
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 133
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 134
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 141
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loading url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<html>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 144
    invoke-virtual {p0, v2, v3, v4}, Lcom/mdotm/android/view/MdotMWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, v5}, Lcom/mdotm/android/view/MdotMWebView;->setFocusable(Z)V

    .line 276
    return-void

    .line 136
    :cond_0
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mWebChromeClient:Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->onHideCustomView()V

    .line 334
    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 338
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMWebView;->goBack()V

    .line 341
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webview has focus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->isWebViewHasFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    return-void
.end method
