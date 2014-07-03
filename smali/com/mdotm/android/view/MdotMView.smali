.class Lcom/mdotm/android/view/MdotMView;
.super Landroid/widget/RelativeLayout;
.source "MdotMView.java"

# interfaces
.implements Lcom/mdotm/android/listener/MdotMNetworkListener;
.implements Lcom/mdotm/android/listener/MdotMAdActionListener;


# instance fields
.field public didParentStopped:Z

.field private mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

.field mAdManager:Lcom/mdotm/android/http/MdotMNetworkManager;

.field private mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

.field private mAdViewHasFocus:Z

.field private mContext:Landroid/content/Context;

.field private mDidApllicationLeave:Z

.field mHandler:Landroid/os/Handler;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 38
    iput-object v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 43
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 45
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMView;->didParentStopped:Z

    .line 52
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMView;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 38
    iput-object v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 43
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 45
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMView;->didParentStopped:Z

    .line 69
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMView;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 38
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 43
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 45
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->didParentStopped:Z

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMView;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    return v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/view/MdotMView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/model/MdotMAdRequest;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/listener/MdotMAdEventListener;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    return-object v0
.end method

.method private getPixels(I)I
    .locals 4
    .parameter "dip"

    .prologue
    .line 144
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 145
    .local v0, scale:F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 146
    .local v1, value:I
    return v1
.end method

.method private getVideoViewLayout(Lcom/mdotm/android/model/MdotMAdResponse;)Landroid/view/View;
    .locals 13
    .parameter "response"

    .prologue
    const/16 v12, 0xd

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "The response is:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 315
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 314
    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 317
    .local v4, videoLayout:Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 318
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v7

    .line 317
    invoke-direct {v3, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 319
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 322
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, closeLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 326
    .local v1, closeLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 327
    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-virtual {v1, v11, v7, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    new-instance v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 331
    .local v2, closeText:Landroid/widget/TextView;
    const-string v7, "Learn More"

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 334
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 336
    new-instance v7, Lcom/mdotm/android/view/MdotMView$3;

    invoke-direct {v7, p0, p1}, Lcom/mdotm/android/view/MdotMView$3;-><init>(Lcom/mdotm/android/view/MdotMView;Lcom/mdotm/android/model/MdotMAdResponse;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    new-instance v6, Lcom/mdotm/android/view/MdotMVideoView;

    iget-object v7, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, p1, p0}, Lcom/mdotm/android/view/MdotMVideoView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V

    .line 350
    .local v6, view:Landroid/widget/VideoView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 351
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v8

    .line 350
    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 352
    .local v5, videoParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 353
    invoke-virtual {v6, v5}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 355
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 356
    return-object v4
.end method

.method private scheduleTimer()V
    .locals 8

    .prologue
    .line 151
    const/16 v6, 0x3e8

    .line 153
    .local v6, delay:I
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdRequest;->getAdRefreshInterval()I

    move-result v0

    mul-int/lit16 v7, v0, 0x3e8

    .line 158
    .local v7, period:I
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->timer:Ljava/util/Timer;

    .line 160
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/mdotm/android/view/MdotMView$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMView$1;-><init>(Lcom/mdotm/android/view/MdotMView;)V

    .line 187
    int-to-long v2, v6

    int-to-long v4, v7

    .line 160
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 189
    return-void
.end method

.method private sendRequest()V
    .locals 6

    .prologue
    .line 122
    const-string v3, "Sending request "

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdRequest;->getAdSize()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, sizes:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mdotm/android/view/MdotMView;->getPixels(I)I

    move-result v2

    .line 125
    .local v2, width:I
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mdotm/android/view/MdotMView;->getPixels(I)I

    move-result v0

    .line 126
    .local v0, height:I
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdRequest;->setAdSize(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdRequest;->getAdRefreshInterval()I

    move-result v3

    if-lez v3, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMView;->scheduleTimer()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-boolean v3, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    if-eqz v3, :cond_0

    .line 133
    const-string v3, "MdotMView is visible so requesting for ad"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v3

    .line 135
    iget-object v4, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 134
    invoke-virtual {v3, v4, p0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->addRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;)V

    .line 136
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v3

    .line 137
    iget-boolean v4, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    invoke-virtual {v3, v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->setApplicationHasFocus(Z)V

    goto :goto_0
.end method


# virtual methods
.method public adClicked()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onBannerAdClick()V

    .line 366
    :cond_0
    return-void
.end method

.method public createBannerView(Lcom/mdotm/android/model/MdotMAdResponse;)Landroid/view/View;
    .locals 4
    .parameter "adResponse"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, view:Landroid/view/View;
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->didParentStopped:Z

    if-nez v1, :cond_1

    .line 235
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v1

    sget v2, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    if-eq v1, v2, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v1

    sget v2, Lcom/mdotm/android/utils/MdotMUtils;->AD_ICON_WITH_TEXT_MESSAGE:I

    if-ne v1, v2, :cond_1

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v1

    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    if-ne v1, v2, :cond_3

    .line 238
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v1

    sget v2, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    if-ne v1, v2, :cond_3

    .line 239
    new-instance v0, Lcom/mdotm/android/view/MdotMBannerView;

    .end local v0           #view:Landroid/view/View;
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mdotm/android/view/MdotMBannerView;-><init>(Landroid/content/Context;)V

    .restart local v0       #view:Landroid/view/View;
    move-object v1, v0

    .line 240
    check-cast v1, Lcom/mdotm/android/view/MdotMBannerView;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p0}, Lcom/mdotm/android/view/MdotMBannerView;->drawBannerImage(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V

    .line 242
    const-string v1, "continuing"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .line 243
    check-cast v1, Lcom/mdotm/android/view/MdotMBannerView;

    iget-boolean v1, v1, Lcom/mdotm/android/view/MdotMBannerView;->adLoadSuccess:Z

    if-nez v1, :cond_2

    .line 244
    const/4 v0, 0x0

    .line 309
    :cond_1
    :goto_0
    return-object v0

    .line 245
    :cond_2
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->didParentStopped:Z

    if-nez v1, :cond_1

    .line 246
    const-string v1, "Call report impression image"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImp_pixel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 247
    invoke-virtual {v1, v2, v3}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v1

    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    if-eq v1, v2, :cond_4

    .line 272
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v1

    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->gifImageResource:I

    if-eq v1, v2, :cond_4

    .line 273
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v1

    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    if-ne v1, v2, :cond_6

    .line 274
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v1

    sget v2, Lcom/mdotm/android/utils/MdotMUtils;->AD_ICON_WITH_TEXT_MESSAGE:I

    if-ne v1, v2, :cond_6

    .line 276
    :cond_4
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    if-eqz v1, :cond_5

    .line 284
    const-string v1, "html resource"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/mdotm/android/view/HtmlView;

    .end local v0           #view:Landroid/view/View;
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/mdotm/android/view/HtmlView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;I)V

    .line 286
    .restart local v0       #view:Landroid/view/View;
    goto :goto_0

    .line 287
    :cond_5
    const-string v1, "mAdViewHasFocus = false"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_6
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v1

    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    if-ne v1, v2, :cond_1

    .line 294
    const-string v1, "Video is not supported"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 2
    .parameter "adResponse"

    .prologue
    .line 193
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adResponse.isRequestForBannerAd() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->isRequestForBannerAd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->isRequestForBannerAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/MdotMView$2;

    invoke-direct {v1, p0, p1}, Lcom/mdotm/android/view/MdotMView$2;-><init>(Lcom/mdotm/android/view/MdotMView;Lcom/mdotm/android/model/MdotMAdResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveBannerAd()V

    goto :goto_0
.end method

.method public finishedVastParsing(Lcom/mdotm/android/vast/VastAd;)V
    .locals 0
    .parameter "vastAd"

    .prologue
    .line 400
    return-void
.end method

.method public leaveApplication()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    .line 371
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onLeaveApplicationFromBanner()V

    .line 375
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 2
    .parameter "listener"
    .parameter "adRequest"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 114
    iput-object p2, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 115
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdRequest;->setLoadInterstitial(Z)V

    .line 116
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMView;->sendRequest()V

    .line 118
    return-void
.end method

.method public onDismissScreen()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onDismissScreen()V

    .line 383
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    return-void
.end method

.method public onLoadError()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onPlayError()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onPlayStop()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Window focused "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_1

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 85
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    .line 86
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    invoke-virtual {v0, v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->setApplicationHasFocus(Z)V

    .line 92
    :goto_0
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Focus gained "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    .line 95
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMView;->onDismissScreen()V

    .line 97
    :cond_0
    return-void

    .line 88
    :cond_1
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 89
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    .line 90
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    invoke-virtual {v0, v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->setApplicationHasFocus(Z)V

    goto :goto_0
.end method
