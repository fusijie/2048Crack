.class public Lcom/mdotm/android/vast/VastInterstitialActivity;
.super Landroid/app/Activity;
.source "VastInterstitialActivity.java"

# interfaces
.implements Lcom/mdotm/android/listener/MdotMAdActionListener;
.implements Lcom/mdotm/android/listener/InterstitialVideoListener;


# instance fields
.field private adClickUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adClicked:Z

.field private adResponse:Lcom/mdotm/android/vast/VastAd;

.field private closeLayout:Landroid/widget/RelativeLayout;

.field didDismissCalled:Z

.field private imgPlayPause:Landroid/widget/ImageView;

.field private interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

.field private interstitialListenerId:J

.field private mHandler:Landroid/os/Handler;

.field private mVideoView:Lcom/mdotm/android/vast/VastVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    .line 47
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->didDismissCalled:Z

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/vast/VastVideoView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    return v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    return-void
.end method

.method static synthetic access$5(Lcom/mdotm/android/vast/VastInterstitialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->clicked()V

    return-void
.end method

.method static synthetic access$6(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    return-object v0
.end method

.method private clicked()V
    .locals 3

    .prologue
    .line 388
    const-string v2, "  Ad clicked  "

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 395
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 426
    .end local v1           #i:I
    :goto_1
    return-void

    .line 396
    .restart local v1       #i:I
    :cond_0
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    .local v0, clickedUrl:Ljava/lang/String;
    new-instance v2, Lcom/mdotm/android/vast/VastInterstitialActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity$5;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2}, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->start()V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v0           #clickedUrl:Ljava/lang/String;
    .end local v1           #i:I
    :cond_1
    const-string v2, "selected ads landing url is null"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getCloseButtonView()Landroid/widget/RelativeLayout;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v5, -0x2

    .line 232
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    .line 233
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    .local v2, closeLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 237
    invoke-virtual {v2, v7, v6, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 238
    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 239
    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 242
    .local v1, close:Landroid/widget/ImageView;
    const-string v0, "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"

    .line 243
    .local v0, base64ImageString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->StringToBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 244
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v3, paramsClose:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v4, Lcom/mdotm/android/vast/VastInterstitialActivity$2;

    invoke-direct {v4, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$2;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    return-object v4
.end method

.method private getPlayPauseLayout()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    const/16 v4, 0xa

    const/4 v5, -0x2

    .line 270
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, playPauseLayout:Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    .local v2, playPauseLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 276
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 277
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    .line 279
    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    const v4, 0x1080024

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 281
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .local v0, playPauseButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 286
    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    new-instance v4, Lcom/mdotm/android/vast/VastInterstitialActivity$3;

    invoke-direct {v4, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$3;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 305
    return-object v1
.end method

.method private getVideoLayout()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 351
    const-string v3, "getVideoLayout"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 353
    .local v0, videoLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 356
    .local v1, videoLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    new-instance v4, Lcom/mdotm/android/vast/VastInterstitialActivity$4;

    invoke-direct {v4, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$4;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v3, v4}, Lcom/mdotm/android/vast/VastVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v2, videoParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 379
    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v3, v2}, Lcom/mdotm/android/vast/VastVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 381
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 382
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPlayPauseLayout()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 383
    return-object v0
.end method


# virtual methods
.method public StringToBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "encodedString"

    .prologue
    .line 316
    .line 317
    const/4 v3, 0x0

    .line 315
    :try_start_0
    invoke-static {p1, v3}, Lcom/mdotm/android/utils/MdotMBase64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 318
    .local v2, encodeByte:[B
    const/4 v3, 0x0

    .line 319
    array-length v4, v2

    .line 318
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 323
    .end local v2           #encodeByte:[B
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 323
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adClicked()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    .line 169
    const-string v0, "clicked on ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onClick()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->stopVideo()V

    .line 178
    :cond_1
    return-void
.end method

.method public leaveApplication()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onLeave()V

    .line 185
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v5, -0x1

    .line 55
    const-string v0, "onCreate is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    const-string v1, "response"

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/VastAd;

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    .line 60
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    const-string v1, "InterstitialActionListenerId"

    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialListenerId:J

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listener id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialListenerId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 64
    iget-wide v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialListenerId:J

    invoke-virtual {v0, v3, v4}, Lcom/mdotm/android/utils/MdotMUtils;->getInterstitialActionListener(J)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    .line 66
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ScreenOrientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->setRequestedOrientation(I)V

    .line 74
    :cond_0
    :goto_0
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v7, outerLayout:Landroid/widget/RelativeLayout;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v8, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const v0, -0xbbbbbc

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 81
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v9

    .line 84
    .local v9, vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v6

    .line 85
    .local v6, adType:I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vast ad type :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    packed-switch v6, :pswitch_data_0

    .line 99
    const-string v0, "This format is not supported "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 109
    .end local v6           #adType:I
    .end local v7           #outerLayout:Landroid/widget/RelativeLayout;
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    :goto_1
    const-string v0, "onCreate finish"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ScreenOrientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 89
    .restart local v6       #adType:I
    .restart local v7       #outerLayout:Landroid/widget/RelativeLayout;
    .restart local v8       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9       #vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    :pswitch_0
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mdotm/android/vast/LinearAd;

    .line 90
    .local v2, linearAd:Lcom/mdotm/android/vast/LinearAd;
    invoke-virtual {v2}, Lcom/mdotm/android/vast/LinearAd;->getVideoClicks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/mdotm/android/vast/VastVideoView;

    .line 92
    iget-object v5, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/mdotm/android/vast/VastVideoView;-><init>(Landroid/content/Context;Lcom/mdotm/android/vast/LinearAd;Lcom/mdotm/android/listener/MdotMAdActionListener;Lcom/mdotm/android/listener/InterstitialVideoListener;Landroid/os/Handler;)V

    .line 91
    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    .line 93
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getVideoLayout()Landroid/widget/RelativeLayout;

    move-result-object v10

    .line 94
    .local v10, videoLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0, v7}, Lcom/mdotm/android/vast/VastInterstitialActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 104
    .end local v2           #linearAd:Lcom/mdotm/android/vast/LinearAd;
    .end local v6           #adType:I
    .end local v7           #outerLayout:Landroid/widget/RelativeLayout;
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    .end local v10           #videoLayout:Landroid/widget/RelativeLayout;
    :cond_2
    const-string v0, "Ad response is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    goto :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 159
    iget-wide v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialListenerId:J

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/utils/MdotMUtils;->removeInterstitialActionListener(J)V

    .line 161
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->stopVideo()V

    .line 164
    :cond_0
    return-void
.end method

.method public onDismissScreen()V
    .locals 1

    .prologue
    .line 189
    const-string v0, "onDismiss is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->didDismissCalled:Z

    .line 195
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onDismiss()V

    .line 202
    :goto_0
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->finish()V

    .line 203
    return-void

    .line 200
    :cond_0
    const-string v0, "InterstitialActionListener is null. So ignoring the interstitial dismiss callback"

    .line 199
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key down "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 227
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 224
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLoadError()V
    .locals 1

    .prologue
    .line 207
    const-string v0, "Error while loading the ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 209
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 132
    const-string v0, "onPause is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->PauseVideo()V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->didDismissCalled:Z

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 140
    :cond_1
    return-void
.end method

.method public onPlayError()V
    .locals 1

    .prologue
    .line 339
    const-string v0, "Error while palying video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onFailed()V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 348
    return-void
.end method

.method public onPlayStop()V
    .locals 2

    .prologue
    .line 330
    const-string v0, "completed playing video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 333
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 334
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    .line 117
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 126
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->isReadyToPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->playVideo()V

    goto :goto_0
.end method

.method public setPlayStart()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 266
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->imgPlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 267
    return-void
.end method

.method public showCloseButton()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "show close button"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/vast/VastInterstitialActivity$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$1;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method
