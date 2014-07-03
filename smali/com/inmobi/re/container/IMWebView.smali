.class public Lcom/inmobi/re/container/IMWebView;
.super Landroid/webkit/WebView;
.source "IMWebView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/re/container/IMWebView$a;,
        Lcom/inmobi/re/container/IMWebView$f;,
        Lcom/inmobi/re/container/IMWebView$IMWebViewListener;,
        Lcom/inmobi/re/container/IMWebView$ViewState;
    }
.end annotation


# static fields
.field private static B:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field protected static final IMWEBVIEW_INTERSTITIAL_ID:I = 0x75

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static c:[I = null

.field private static final serialVersionUID:J = 0x6282f5dae34d0336L

.field public static userInitiatedClose:Z


# instance fields
.field private A:Z

.field private C:Landroid/webkit/WebViewClient;

.field private D:Landroid/webkit/WebChromeClient;

.field private E:Z

.field private F:Landroid/media/MediaPlayer$OnCompletionListener;

.field private G:Z

.field a:D

.field public acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public curPosition:Lorg/json/JSONObject;

.field private d:Z

.field public defPosition:Lorg/json/JSONObject;

.field public doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/inmobi/re/controller/JSUtilityController;

.field private f:F

.field private g:I

.field private h:I

.field private i:Lcom/inmobi/re/container/IMWebView$ViewState;

.field public isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isTablet:Z

.field private j:Landroid/widget/VideoView;

.field private k:Landroid/view/View;

.field private l:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private m:Landroid/view/ViewGroup;

.field public mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

.field public mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

.field public mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

.field public mIsInterstitialAd:Z

.field public mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

.field public mMraidBasic:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

.field public mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

.field public mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

.field public mWebViewIsBrowserActivity:Z

.field protected mraidLoaded:Z

.field public mutex:Ljava/lang/Object;

.field public mutexcPos:Ljava/lang/Object;

.field public mutexdPos:Ljava/lang/Object;

.field private n:Landroid/widget/FrameLayout;

.field private o:Z

.field private p:Z

.field public publisherOrientation:I

.field private q:Z

.field private r:Landroid/os/Message;

.field private s:Landroid/os/Message;

.field private t:Landroid/app/Activity;

.field private u:Landroid/webkit/WebViewClient;

.field private v:Lcom/inmobi/re/container/IMWebView$f;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public webviewUserAgent:Ljava/lang/String;

.field private x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private y:Landroid/view/ViewParent;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inmobi/re/container/IMWebView;->c:[I

    .line 179
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    .line 239
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/re/container/IMWebView;->B:Ljava/lang/Class;

    return-void

    .line 93
    nop

    :array_0
    .array-data 0x4
        0x1ft 0x1t 0x1t 0x1t
        0x20t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 183
    iput-object v1, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 191
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->o:Z

    .line 193
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    .line 194
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    .line 195
    iput-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    .line 196
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    .line 198
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->p:Z

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->w:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->A:Z

    .line 453
    new-instance v0, Lcom/inmobi/re/container/b;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/b;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Landroid/webkit/WebViewClient;

    .line 698
    new-instance v0, Lcom/inmobi/re/container/a;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/a;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/webkit/WebChromeClient;

    .line 1207
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->E:Z

    .line 2427
    new-instance v0, Lcom/inmobi/re/container/c;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/c;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2591
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    .line 2618
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2623
    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->G:Z

    .line 281
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    .line 282
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->a()V

    .line 284
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView;->c:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 250
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 183
    iput-object v1, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 191
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->o:Z

    .line 193
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    .line 194
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    .line 195
    iput-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    .line 196
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    .line 198
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->p:Z

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->w:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->A:Z

    .line 453
    new-instance v0, Lcom/inmobi/re/container/b;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/b;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Landroid/webkit/WebViewClient;

    .line 698
    new-instance v0, Lcom/inmobi/re/container/a;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/a;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/webkit/WebChromeClient;

    .line 1207
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->E:Z

    .line 2427
    new-instance v0, Lcom/inmobi/re/container/c;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/c;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2591
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    .line 2618
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2623
    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->G:Z

    .line 251
    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 252
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    .line 253
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->a()V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 183
    iput-object v1, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 191
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->o:Z

    .line 193
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    .line 194
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    .line 195
    iput-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    .line 196
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    .line 198
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->p:Z

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->w:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->A:Z

    .line 453
    new-instance v0, Lcom/inmobi/re/container/b;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/b;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Landroid/webkit/WebViewClient;

    .line 698
    new-instance v0, Lcom/inmobi/re/container/a;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/a;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/webkit/WebChromeClient;

    .line 1207
    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->E:Z

    .line 2427
    new-instance v0, Lcom/inmobi/re/container/c;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/c;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2591
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    .line 2618
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2623
    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->G:Z

    .line 260
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    .line 261
    iput-boolean p3, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    .line 262
    iput-boolean p4, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    .line 263
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 264
    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setId(I)V

    .line 266
    :cond_0
    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 267
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->a()V

    .line 268
    return-void
.end method

.method private a(Landroid/app/Activity;)I
    .locals 5
    .parameter

    .prologue
    .line 2008
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2009
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2010
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2013
    const/4 v1, 0x0

    .line 2015
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2016
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2023
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    return v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->r:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->k:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->u:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->j:Landroid/widget/VideoView;

    return-object p1
.end method

.method private a()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    sput-boolean v3, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    .line 376
    invoke-virtual {p0, v3}, Lcom/inmobi/re/container/IMWebView;->setScrollContainer(Z)V

    .line 377
    invoke-virtual {p0, v3}, Lcom/inmobi/re/container/IMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 378
    invoke-virtual {p0, v3}, Lcom/inmobi/re/container/IMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->webviewUserAgent:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getWebviewBgColor()I

    move-result v0

    .line 382
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V

    .line 383
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 384
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 387
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 389
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/re/container/IMWebView;->f:F

    .line 390
    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->d:Z

    .line 392
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 393
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 395
    new-instance v0, Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/controller/JSUtilityController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Lcom/inmobi/re/controller/JSUtilityController;

    .line 397
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Lcom/inmobi/re/controller/JSUtilityController;

    const-string v1, "utilityController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 401
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->D:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 404
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    .line 405
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    .line 406
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mMraidBasic:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    .line 407
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    .line 409
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    .line 410
    new-instance v0, Lcom/inmobi/re/container/IMWebView$f;

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->mMraidBasic:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v4, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-object v5, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v6, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/re/container/IMWebView$f;-><init>(Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    .line 413
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mSensorDisplay:Landroid/view/Display;

    .line 415
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoValidateWidth:I

    .line 420
    :try_start_0
    sget-object v0, Lcom/inmobi/re/container/IMWebView;->B:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/inmobi/re/container/IMWebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 422
    const-string v1, "imaiController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    const-string v0, "[InMobi]-[RE]-4.1.1"

    const-string v1, "Error adding js interface imai controller"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraid.broadcastEvent(\'sizeChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnKeyListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 872
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 873
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 874
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 875
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 876
    check-cast p1, Landroid/view/ViewGroup;

    .line 877
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 878
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 879
    invoke-direct {p0, v2, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnKeyListener;)V

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 882
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 860
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 861
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 862
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 863
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 864
    check-cast p1, Landroid/view/ViewGroup;

    .line 865
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 866
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 867
    invoke-direct {p0, v2, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    :cond_0
    return-void
.end method

.method private a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 657
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 660
    const-string v1, "Continue"

    new-instance v2, Lcom/inmobi/re/container/IMWebView$e;

    invoke-direct {v2, p0, p1}, Lcom/inmobi/re/container/IMWebView$e;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 668
    const-string v1, "Go Back"

    new-instance v2, Lcom/inmobi/re/container/IMWebView$d;

    invoke-direct {v2, p0, p1}, Lcom/inmobi/re/container/IMWebView$d;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 677
    const-string v1, "Open Browser"

    new-instance v2, Lcom/inmobi/re/container/IMWebView$b;

    invoke-direct {v2, p0, p2}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    :cond_0
    const-string v1, "Security Warning"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 687
    const-string v1, "There are problems with the security certificate for this site."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 689
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 691
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Dialog could not be shown due to an exception."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;Landroid/view/View$OnKeyListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/IMWebView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2574
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2575
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2576
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->fireOnLeaveApplication()V

    .line 2577
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1291
    const-string v0, "[InMobi]-[RE]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraid.broadcastEvent(\'viewableChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 919
    const-string v0, "[InMobi]-[RE]-4.1.1"

    const-string v1, "IMWebView-> initStates"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 922
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 926
    return-void
.end method

.method static synthetic c(Lcom/inmobi/re/container/IMWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->closeExpanded()V

    .line 1005
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->invalidate()V

    .line 1006
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->stopAllListeners()V

    .line 1007
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->resetLayout()V

    .line 1008
    return-void
.end method

.method static synthetic d(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2466
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2475
    :goto_0
    return-void

    .line 2469
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_1

    .line 2470
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 2471
    :cond_1
    iput-object v2, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 2472
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2473
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2474
    :cond_2
    iput-object v2, p0, Lcom/inmobi/re/container/IMWebView;->k:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic e(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Landroid/os/Message;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->s:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lcom/inmobi/re/container/IMWebView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/re/container/IMWebView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic k(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic l(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->d()V

    return-void
.end method

.method static synthetic m(Lcom/inmobi/re/container/IMWebView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public static setIMAIController(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 297
    sput-object p0, Lcom/inmobi/re/container/IMWebView;->B:Ljava/lang/Class;

    .line 298
    return-void
.end method


# virtual methods
.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 887
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method public cancelLoad()V
    .locals 2

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2513
    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->c()V

    .line 992
    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    .line 993
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/16 v1, 0x3e9

    .line 1274
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 1276
    :cond_0
    return-void
.end method

.method public closeExpanded()V
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 1280
    return-void
.end method

.method protected closeOpened(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1124
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    .line 1125
    return-void
.end method

.method public closeResized()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x407

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 1284
    return-void
.end method

.method public closeVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1807
    if-nez v0, :cond_0

    .line 1808
    const-string v0, "Invalid property ID"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    :goto_0
    return-void

    .line 1810
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_1

    .line 1811
    const-string v0, "Invalid player state"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1815
    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1817
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1818
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public deinit()V
    .locals 2

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    .line 1111
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 1113
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2604
    const-string v0, "[InMobi]-[RE]-4.1.1"

    const-string v1, "IMWebView: Destroy called."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 2606
    new-instance v0, Lcom/inmobi/re/container/IMWebView$c;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$c;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->postInHandler(Ljava/lang/Runnable;)V

    .line 2616
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 2

    .prologue
    .line 2631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->G:Z

    .line 2632
    const-string v0, "[InMobi]-[RE]-4.1.1"

    const-string v1, "disableHardwareAcceleration called."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2636
    invoke-static {p0}, Lcom/inmobi/commons/internal/WrapperFunctions;->disableHardwareAccl(Landroid/webkit/WebView;)V

    .line 2637
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->disableEnableHardwareAccelerationForExpandWithURLView()V

    .line 2640
    :cond_0
    return-void
.end method

.method public doHidePlayers()V
    .locals 2

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 2509
    return-void
.end method

.method public expand(Ljava/lang/String;Lcom/inmobi/re/controller/JSController$ExpandProperties;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1370
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 1371
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    .line 1373
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1375
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1377
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1379
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1383
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iput-object p2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    .line 1385
    const-string v1, "[InMobi]-[RE]-4.1.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dimensions: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->tempExpPropsLock:Z

    .line 1393
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    .line 1394
    return-void
.end method

.method public fireOnLeaveApplication()V
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    .line 1166
    :cond_0
    return-void
.end method

.method public fireOnShowAdScreen()V
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestOnAdDismiss(Landroid/os/Message;)V

    .line 1173
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onShowAdScreen()V

    .line 1175
    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    return-object v0
.end method

.method public getAudioVolume(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1682
    if-nez v0, :cond_0

    .line 1683
    const-string v0, "Invalid property ID"

    const-string v1, "getAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    const/4 v0, -0x1

    .line 1688
    :goto_0
    return v0

    .line 1686
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentRotation(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1306
    const-string v0, "-1"

    .line 1307
    packed-switch p1, :pswitch_data_0

    .line 1324
    :goto_0
    return-object v0

    .line 1309
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 1313
    :pswitch_1
    const-string v0, "90"

    goto :goto_0

    .line 1317
    :pswitch_2
    const-string v0, "180"

    goto :goto_0

    .line 1321
    :pswitch_3
    const-string v0, "270"

    goto :goto_0

    .line 1307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCustomClose()Z
    .locals 1

    .prologue
    .line 1267
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Z

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Lcom/inmobi/re/container/IMWebView;->f:F

    return v0
.end method

.method public getDismissMessage()I
    .locals 1

    .prologue
    .line 1153
    const/16 v0, 0x404

    return v0
.end method

.method public getIntegerCurrentRotation()I
    .locals 3

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1493
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getDisplayRotation(Landroid/view/Display;)I

    move-result v0

    .line 1495
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isDefOrientationLandscape(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1498
    add-int/lit8 v0, v0, 0x1

    .line 1499
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1500
    const/4 v0, 0x0

    .line 1502
    :cond_0
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1503
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    .line 1505
    :cond_1
    return v0
.end method

.method public getLastGoodKnownMicValue()D
    .locals 2

    .prologue
    .line 2595
    iget-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    return-wide v0
.end method

.method public getMRAIDUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOriginalIndex()I
    .locals 1

    .prologue
    .line 2530
    iget v0, p0, Lcom/inmobi/re/container/IMWebView;->z:I

    return v0
.end method

.method public getOriginalParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 2525
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->saveOriginalViewParent()V

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1298
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 1299
    const-string v0, "interstitial"

    .line 1301
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/IMWebView;->f:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/IMWebView;->f:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method public getVideoVolume(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1937
    if-nez v0, :cond_0

    .line 1938
    const-string v0, "Invalid property ID"

    const-string v1, "getVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    const/4 v0, -0x1

    .line 1943
    :goto_0
    return v0

    .line 1941
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getViewState()Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method public getWebviewHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 933
    return-void
.end method

.method public hideVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1825
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1826
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1828
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    .line 1830
    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1970
    if-eqz p1, :cond_1

    .line 1971
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 1972
    const-string v0, "[InMobi]-[RE]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting JavaScript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:try{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}catch(e){}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    :cond_1
    :goto_0
    return-void

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Error injecting javascript "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isAudioMuted(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1652
    if-nez v0, :cond_0

    .line 1653
    const-string v0, "Invalid property ID"

    const-string v1, "isAudioMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    const/4 v0, 0x0

    .line 1659
    :goto_0
    return v0

    .line 1656
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->o:Z

    return v0
.end method

.method public isConfigChangesListed(Landroid/app/Activity;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1986
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1987
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/app/Activity;)I

    move-result v4

    .line 1992
    and-int/lit8 v3, v4, 0x10

    if-eqz v3, :cond_0

    and-int/lit8 v3, v4, 0x20

    if-eqz v3, :cond_0

    and-int/lit16 v3, v4, 0x80

    if-nez v3, :cond_4

    :cond_0
    move v3, v1

    .line 1997
    :goto_0
    const/16 v5, 0xd

    if-lt v2, v5, :cond_3

    .line 1998
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_1

    and-int/lit16 v2, v4, 0x800

    if-nez v2, :cond_3

    :cond_1
    move v2, v1

    .line 2004
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_0
.end method

.method public isEnabledHardwareAcceleration()Z
    .locals 1

    .prologue
    .line 2643
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->G:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLandscapeSyncOrientation(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2500
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 2

    .prologue
    .line 2568
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageFinished()Z
    .locals 1

    .prologue
    .line 1037
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->d:Z

    return v0
.end method

.method public isPortraitSyncOrientation(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2496
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoMuted(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1904
    if-nez v0, :cond_0

    .line 1905
    const-string v0, "Invalid property ID"

    const-string v1, "isVideoMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const/4 v0, 0x0

    .line 1911
    :goto_0
    return v0

    .line 1908
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isViewable()Z
    .locals 1

    .prologue
    .line 1287
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->E:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 905
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 916
    :goto_0
    return-void

    .line 913
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->b()V

    .line 915
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 895
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 901
    :goto_0
    return-void

    .line 897
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->b()V

    .line 899
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lockExpandOrientation(ZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x1

    .line 1433
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->isConfigChangesListed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 1439
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 1444
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2

    .line 1445
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1452
    :cond_2
    if-ne p1, v2, :cond_0

    .line 1457
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v0

    .line 1459
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->initialExpandOrientation:I

    .line 1461
    const-string v1, "portrait"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1462
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    .line 1464
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamPortraitOrientation(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Exception handling the orientation "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1466
    :cond_3
    :try_start_1
    const-string v1, "landscape"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    .line 1469
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamLandscapeOrientation(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V

    .line 2581
    return-void
.end method

.method public muteAudio(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1612
    if-nez v0, :cond_0

    .line 1613
    const-string v0, "Invalid property ID"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    :goto_0
    return-void

    .line 1615
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_1

    .line 1616
    const-string v0, "Invalid player state"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1621
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1622
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1624
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1845
    if-nez v0, :cond_0

    .line 1846
    const-string v0, "Invalid property ID"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    :goto_0
    return-void

    .line 1848
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    .line 1850
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1854
    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v2, 0x3f7

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1855
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1856
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1059
    const-string v0, "[InMobi]-[RE]-4.1.1"

    const-string v1, "IMWebView-> onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->saveOriginalViewParent()V

    .line 1062
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->q:Z

    if-nez v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1064
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/inmobi/re/container/IMWebView;->g:I

    .line 1065
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/inmobi/re/container/IMWebView;->h:I

    .line 1066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->q:Z

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->registerBroadcastListener()V

    .line 1071
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 1072
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1137
    const-string v0, "[InMobi]-[RE]-4.1.1"

    const-string v1, "IMWebView-> onDetatchedFromWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->stopAllListeners()V

    .line 1140
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1145
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->unRegisterBroadcastListener()V

    .line 1146
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->handleInterstitialClose()V

    .line 1148
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 1149
    return-void
.end method

.method protected onIMWebviewVisibilityChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->E:Z

    if-ne v0, p1, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->E:Z

    .line 979
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/IMWebView;->a(Z)V

    goto :goto_0
.end method

.method public onOrientationEventChange()V
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 1258
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 944
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 945
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 946
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Z

    if-nez v0, :cond_0

    .line 947
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->a(II)V

    .line 949
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Z

    .line 951
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 2587
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->requestFocus()Z

    .line 2588
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 963
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 964
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->onIMWebviewVisibilityChanged(Z)V

    .line 965
    return-void

    .line 964
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openExternal(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1245
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1247
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    const-string v0, "Request must specify a valid URL"

    const-string v1, "openExternal"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openURL(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    const-string v0, "Cannot open URL.Ad is not viewable yet"

    const-string v1, "openURL"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :goto_0
    return-void

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1235
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1236
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1238
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public pageFinishedCallbackForAdCreativeTesting(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->s:Landroid/os/Message;

    .line 1189
    return-void
.end method

.method public pauseAudio(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1586
    if-nez v0, :cond_1

    .line 1587
    const-string v0, "Invalid property ID"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_0
    :goto_0
    return-void

    .line 1589
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_3

    .line 1590
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1591
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setAutoPlay(Z)V

    goto :goto_0

    .line 1593
    :cond_2
    const-string v0, "Invalid player state"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1597
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1601
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1602
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public pauseVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1798
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1799
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1801
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    .line 1802
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1533
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1534
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1536
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1541
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1543
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_1

    .line 1544
    const-string v0, "Cannot play audio.Ad is not in an expanded state"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :goto_1
    return-void

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    :try_start_3
    const-string v2, "[InMobi]-[RE]-4.1.1"

    const-string v3, "mutex failed "

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1546
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1547
    const-string v0, "Cannot play audio.Ad is not viewable yet"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1551
    :cond_2
    new-instance v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;-><init>()V

    .line 1553
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1558
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1561
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v2, 0x3ef

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1562
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1563
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/inmobi/re/controller/JSController$Dimensions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1741
    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1742
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1744
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1749
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1753
    iget-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v1, v2, :cond_1

    .line 1754
    const-string v1, "Cannot play video.Ad is not in an expanded state"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    :goto_1
    return-void

    .line 1745
    :catch_0
    move-exception v1

    .line 1746
    :try_start_3
    const-string v3, "[InMobi]-[RE]-4.1.1"

    const-string v4, "mutex failed "

    invoke-static {v3, v4, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1749
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1756
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1757
    const-string v1, "Cannot play video.Ad is not viewable yet"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1762
    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1765
    const-string v1, "Player Error. Exceeding permissible limit for saved play instances"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1769
    :cond_3
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1771
    new-instance v1, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-direct {v1}, Lcom/inmobi/re/controller/JSController$PlayerProperties;-><init>()V

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 1773
    invoke-virtual/range {v1 .. v8}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1777
    const-string v3, "expand_url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const-string v3, "player_properties"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1781
    const-string v1, "[InMobi]-[RE]-4.1.1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before validation dimension: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->validateVideoDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V

    .line 1785
    const-string v1, "[InMobi]-[RE]-4.1.1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After validation dimension: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    const-string v1, "expand_dimensions"

    move-object/from16 v0, p6

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1790
    invoke-virtual {v9, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1791
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v9}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method public postInHandler(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView$f;->post(Ljava/lang/Runnable;)Z

    .line 2600
    return-void
.end method

.method public postInjectJavaScript(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1949
    if-eqz p1, :cond_1

    .line 1950
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 1951
    const-string v0, "[InMobi]-[RE]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting JavaScript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x401

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1955
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1956
    const-string v2, "injectMessage"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1958
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1960
    :cond_1
    return-void
.end method

.method public raiseCameraPictureCapturedEvent(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.fireCameraPictureCatpturedEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2550
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2551
    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2029
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2030
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2033
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    .line 2034
    return-void
.end method

.method public raiseGalleryImageSelectedEvent(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.fireGalleryImageSelectedEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2558
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2559
    return-void
.end method

.method public raiseMicEvent(D)V
    .locals 2
    .parameter

    .prologue
    .line 2534
    iput-wide p1, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraid.broadcastEvent(\'micIntensityChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2537
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2538
    return-void
.end method

.method public raiseVibrateCompleteEvent()V
    .locals 1

    .prologue
    .line 2541
    const-string v0, "window.mraid.broadcastEvent(\'vibrateComplete\')"

    .line 2542
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2543
    return-void
.end method

.method public requestOnInterstitialClosed(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialClosed:Landroid/os/Message;

    .line 1203
    return-void
.end method

.method public requestOnInterstitialShown(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    .line 1196
    return-void
.end method

.method public requestOnPageFinishedCallback(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->r:Landroid/os/Message;

    .line 1183
    return-void
.end method

.method public resetLayout()V
    .locals 2

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1023
    iget-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->q:Z

    if-eqz v1, :cond_0

    .line 1024
    iget v1, p0, Lcom/inmobi/re/container/IMWebView;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1025
    iget v1, p0, Lcom/inmobi/re/container/IMWebView;->h:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1027
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    .line 1028
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    .line 1029
    return-void
.end method

.method public resetMraid()V
    .locals 1

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->reset()V

    .line 2563
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->reset()V

    .line 2564
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->reset()V

    .line 2565
    return-void
.end method

.method public resize(Lcom/inmobi/re/controller/JSController$ResizeProperties;)V
    .locals 2
    .parameter

    .prologue
    .line 1403
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 1405
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1407
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1409
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    iput-object p1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    .line 1411
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    .line 1412
    return-void
.end method

.method public saveOriginalViewParent()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/view/ViewParent;

    .line 357
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 361
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 362
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 365
    :cond_2
    iput v1, p0, Lcom/inmobi/re/container/IMWebView;->z:I

    goto :goto_0

    .line 361
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public seekAudio(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1694
    if-nez v0, :cond_0

    .line 1695
    const-string v0, "Invalid property ID"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    :goto_0
    return-void

    .line 1697
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_1

    .line 1698
    const-string v0, "Invalid player state"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1702
    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v2, 0x3fe

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1703
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1704
    const-string v3, "seekaudio"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1705
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1706
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1707
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public seekVideo(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1883
    if-nez v0, :cond_0

    .line 1884
    const-string v0, "Invalid property ID"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    :goto_0
    return-void

    .line 1886
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    .line 1888
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1892
    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1893
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1894
    const-string v3, "seek"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1895
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1896
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1897
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendToCPHandler()V
    .locals 2

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x405

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 1484
    return-void
.end method

.method public sendToDPHandler()V
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x408

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 1488
    return-void
.end method

.method public sendasyncPing(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/controller/JSUtilityController;->asyncPing(Ljava/lang/String;)V

    .line 2517
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/app/Activity;

    .line 2038
    return-void
.end method

.method public setAudioVolume(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1665
    if-nez v0, :cond_0

    .line 1666
    const-string v0, "Invalid property ID"

    const-string v1, "setAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    :goto_0
    return-void

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1670
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1671
    const-string v2, "vol"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1672
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1674
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setBusy(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1015
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->o:Z

    .line 1016
    return-void
.end method

.method public setCloseButton()V
    .locals 2

    .prologue
    .line 2479
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/CustomView;

    .line 2481
    if-eqz v0, :cond_0

    .line 2482
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getCustomClose()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2483
    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setSwitchInt(Lcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 2484
    invoke-virtual {v0}, Lcom/inmobi/re/container/CustomView;->invalidate()V

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2486
    :cond_1
    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setSwitchInt(Lcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 2487
    invoke-virtual {v0}, Lcom/inmobi/re/container/CustomView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2490
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCustomClose(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1261
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->p:Z

    .line 1262
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1263
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    .line 1264
    return-void
.end method

.method public setExpandPropertiesForInterstitial(ZZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/IMWebView;->setCustomClose(Z)V

    .line 1331
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p3, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    .line 1332
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-boolean p2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    .line 1333
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->handleOrientationFor2Piece()V

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 1341
    :cond_1
    return-void
.end method

.method public setExternalWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .parameter

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->u:Landroid/webkit/WebViewClient;

    .line 2505
    return-void
.end method

.method public setOrientationPropertiesForInterstitial(ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    .line 1347
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-boolean p1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    .line 1348
    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->handleOrientationFor2Piece()V

    .line 1353
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 1356
    :cond_1
    return-void
.end method

.method public setOriginalParent(Landroid/view/ViewParent;)V
    .locals 0
    .parameter

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->y:Landroid/view/ViewParent;

    .line 2521
    return-void
.end method

.method public setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V
    .locals 3
    .parameter

    .prologue
    .line 1079
    const-string v0, "[InMobi]-[RE]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changing from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->i:Lcom/inmobi/re/container/IMWebView$ViewState;

    .line 1085
    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq p1, v0, :cond_0

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraid.broadcastEvent(\'stateChange\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1102
    :cond_0
    return-void
.end method

.method public setVideoVolume(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1917
    if-nez v0, :cond_0

    .line 1918
    const-string v0, "Invalid property ID"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    :goto_0
    return-void

    .line 1920
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_1

    .line 1921
    const-string v0, "Invalid player state"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1925
    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1926
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1927
    const-string v3, "volume"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1928
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1929
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1930
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendEmptyMessage(I)Z

    .line 940
    return-void
.end method

.method public showVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1835
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1836
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1838
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    .line 1840
    return-void
.end method

.method public unMuteAudio(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1632
    if-nez v0, :cond_0

    .line 1633
    const-string v0, "Invalid property ID"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    :goto_0
    return-void

    .line 1635
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_1

    .line 1636
    const-string v0, "Invalid player state"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1641
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1642
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public unMuteVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 1864
    if-nez v0, :cond_0

    .line 1865
    const-string v0, "Invalid property ID"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    :goto_0
    return-void

    .line 1867
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    .line 1869
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1873
    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v2, 0x3f8

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1874
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1875
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public userInteraction(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Lcom/inmobi/re/container/IMWebView$f;

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2648
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2649
    const-string v2, "map"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2650
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2651
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2652
    return-void
.end method
