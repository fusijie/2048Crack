.class public Lcom/nextpeer/android/facebook/widget/WebDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/widget/WebDialog$Builder;,
        Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;,
        Lcom/nextpeer/android/facebook/widget/WebDialog$DialogWebViewClient;,
        Lcom/nextpeer/android/facebook/widget/WebDialog$FeedDialogBuilder;,
        Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;,
        Lcom/nextpeer/android/facebook/widget/WebDialog$RequestsDialogBuilder;
    }
.end annotation


# static fields
.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DEFAULT_THEME:I = 0x1030010

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final MAX_BUFFER_SCREEN_WIDTH:I = 0x400

.field private static final MIN_SCALE_FACTOR:D = 0.6

.field private static final NO_BUFFER_SCREEN_WIDTH:I = 0x200

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field private static final USER_AGENT:Ljava/lang/String; = "user_agent"


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private isDetached:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1030010

    invoke-direct {p0, p1, p2, v0}, Lcom/nextpeer/android/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->listenerCalled:Z

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->isDetached:Z

    iput-object p2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->listenerCalled:Z

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->isDetached:Z

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "display"

    const-string v1, "touch"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "user_agent"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialog/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/nextpeer/android/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->url:Ljava/lang/String;

    iput-object p5, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->onCompleteListener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    return-void
.end method

.method static synthetic access$0(Lcom/nextpeer/android/facebook/widget/WebDialog;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/widget/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1(Lcom/nextpeer/android/facebook/widget/WebDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->sendCancelToListener()V

    return-void
.end method

.method static synthetic access$2(Lcom/nextpeer/android/facebook/widget/WebDialog;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$3(Lcom/nextpeer/android/facebook/widget/WebDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->isDetached:Z

    return v0
.end method

.method static synthetic access$4(Lcom/nextpeer/android/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nextpeer/android/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/nextpeer/android/facebook/widget/WebDialog;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/nextpeer/android/facebook/widget/WebDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createCrossImage()V
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/nextpeer/android/facebook/widget/WebDialog$3;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/facebook/widget/WebDialog$3;-><init>(Lcom/nextpeer/android/facebook/widget/WebDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$drawable;->np__facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private getMargins()Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-wide/high16 v12, 0x4000

    const-wide v1, 0x3fe3333333333333L

    const-wide/high16 v3, 0x3ff0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v6

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v5

    float-to-int v0, v0

    const/16 v5, 0x200

    if-gt v0, v5, :cond_0

    move-wide v0, v3

    :goto_0
    int-to-double v5, v6

    sub-double v8, v3, v0

    mul-double/2addr v5, v8

    div-double/2addr v5, v12

    double-to-int v2, v5

    int-to-double v5, v7

    sub-double v0, v3, v0

    mul-double/2addr v0, v5

    div-double/2addr v0, v12

    double-to-int v0, v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/16 v5, 0x400

    if-lt v0, v5, :cond_1

    move-wide v0, v1

    goto :goto_0

    :cond_1
    rsub-int v0, v0, 0x400

    int-to-double v8, v0

    const-wide/high16 v10, 0x4080

    div-double/2addr v8, v10

    const-wide v10, 0x3fd999999999999aL

    mul-double/2addr v8, v10

    add-double v0, v1, v8

    goto :goto_0
.end method

.method private sendCancelToListener()V
    .locals 1

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method private sendErrorToListener(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->onCompleteListener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->listenerCalled:Z

    instance-of v0, p1, Lcom/nextpeer/android/facebook/FacebookException;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/nextpeer/android/facebook/FacebookException;

    :goto_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->onCompleteListener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private sendSuccessToListener(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->onCompleteListener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->listenerCalled:Z

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->onCompleteListener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V

    :cond_0
    return-void
.end method

.method private setUpWebView(I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/nextpeer/android/facebook/widget/WebDialog$DialogWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/nextpeer/android/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/nextpeer/android/facebook/widget/WebDialog;Lcom/nextpeer/android/facebook/widget/WebDialog$DialogWebViewClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v1, -0x3400

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->isDetached:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public getOnCompleteListener()Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->onCompleteListener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->isDetached:Z

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/nextpeer/android/facebook/widget/WebDialog$1;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/widget/WebDialog$1;-><init>(Lcom/nextpeer/android/facebook/widget/WebDialog;)V

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nextpeer/android/R$string;->np__loading_indicator_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/nextpeer/android/facebook/widget/WebDialog$2;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/facebook/widget/WebDialog$2;-><init>(Lcom/nextpeer/android/facebook/widget/WebDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/facebook/widget/WebDialog;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->getMargins()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->createCrossImage()V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->setUpWebView(I)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/widget/WebDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->isDetached:Z

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public setOnCompleteListener(Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog;->onCompleteListener:Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;

    return-void
.end method
