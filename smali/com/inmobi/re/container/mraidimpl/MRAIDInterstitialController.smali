.class public Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;
.super Ljava/lang/Object;
.source "MRAIDInterstitialController.java"


# static fields
.field protected static final INT_BACKGROUND_ID:I = 0xe0

.field public static final INT_CLOSE_BUTTON:I = 0xe1

.field public static isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field private b:Landroid/app/Activity;

.field private c:I

.field public lockOrientationValueForInterstitial:Z

.field public mMsgOnInterstitialClosed:Landroid/os/Message;

.field public mMsgOnInterstitialShown:Landroid/os/Message;

.field public mSensorDisplay:Landroid/view/Display;

.field public orientationValueForInterstitial:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    .line 49
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    .line 50
    iput-object p2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    .line 51
    return-void
.end method


# virtual methods
.method public changeContentAreaForInterstitials()V
    .locals 8

    .prologue
    const/high16 v6, 0x4248

    .line 219
    :try_start_0
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getWebviewBgColor()I

    move-result v2

    .line 221
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->c:I

    .line 226
    invoke-virtual {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->handleOrientationForInterstitial()V

    .line 233
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 236
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/inmobi/re/container/IMWebView;->setFocusable(Z)V

    .line 243
    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/inmobi/re/container/IMWebView;->setFocusableInTouchMode(Z)V

    .line 244
    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 250
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getCustomClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    new-instance v1, Lcom/inmobi/re/container/CustomView;

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v6

    sget-object v7, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v1, v5, v6, v7}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 257
    :goto_0
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 258
    const/16 v5, 0xe1

    invoke-virtual {v1, v5}, Lcom/inmobi/re/container/CustomView;->setId(I)V

    .line 259
    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v4, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$b;

    invoke-direct {v4, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$b;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V

    invoke-virtual {v1, v4}, Lcom/inmobi/re/container/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    const/16 v4, 0xe0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 272
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 273
    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V

    .line 276
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestFocus()Z

    .line 278
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$c;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$c;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 296
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$a;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$a;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 312
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 314
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    .line 322
    :cond_0
    :goto_1
    return-void

    .line 254
    :cond_1
    new-instance v1, Lcom/inmobi/re/container/CustomView;

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v6

    sget-object v7, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v1, v5, v6, v7}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Failed showing interstitial ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public changeContentAreaForInterstitials(Z)V
    .locals 9
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x100

    const/high16 v7, 0x4248

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->c:I

    .line 117
    invoke-virtual {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->handleOrientationForInterstitial()V

    .line 124
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 127
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/inmobi/re/container/IMWebView;->setFocusable(Z)V

    .line 134
    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/inmobi/re/container/IMWebView;->setFocusableInTouchMode(Z)V

    .line 135
    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getCustomClose()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    new-instance v3, Lcom/inmobi/re/container/CustomView;

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v7}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v7

    sget-object v8, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v3, v6, v7, v8}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 148
    :goto_0
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    const/16 v6, 0xe1

    invoke-virtual {v3, v6}, Lcom/inmobi/re/container/CustomView;->setId(I)V

    .line 150
    invoke-virtual {v4, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v5, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;

    invoke-direct {v5, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V

    invoke-virtual {v3, v5}, Lcom/inmobi/re/container/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    const/16 v3, 0xe0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 164
    if-eqz p1, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 165
    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V

    .line 169
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestFocus()Z

    .line 171
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$f;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$f;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 189
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    .line 215
    :cond_0
    :goto_3
    return-void

    .line 145
    :cond_1
    new-instance v3, Lcom/inmobi/re/container/CustomView;

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v7}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v7

    sget-object v8, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v3, v6, v7, v8}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Failed showing interstitial ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    move v3, v2

    .line 164
    goto :goto_1

    :cond_3
    move v0, v2

    .line 168
    goto :goto_2
.end method

.method public handleInterstitialClose()V
    .locals 2

    .prologue
    .line 325
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    .line 326
    sget-object v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 328
    return-void
.end method

.method public handleOrientationForInterstitial()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->lockExpandOrientation(ZLjava/lang/String;)V

    .line 104
    return-void
.end method

.method public resetContentsForInterstitials()V
    .locals 3

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->c:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 73
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->releaseAllPlayers()V

    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 78
    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 80
    if-eqz v1, :cond_1

    .line 81
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialClosed:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialClosed:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialClosed:Landroid/os/Message;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "window.mraidview.unRegisterOrientationListener()"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Failed to close the interstitial ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
