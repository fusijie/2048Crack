.class public final Lcom/nextpeer/android/gx;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gx$aa;,
        Lcom/nextpeer/android/gx$ab;,
        Lcom/nextpeer/android/gx$ac;,
        Lcom/nextpeer/android/gx$ad;,
        Lcom/nextpeer/android/gx$ae;,
        Lcom/nextpeer/android/gx$af;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/nextpeer/android/gx$ae;

.field private c:Lcom/nextpeer/android/gx$ad;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/app/ProgressDialog;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Z

.field private i:Z

.field private j:Lcom/nextpeer/android/hs$aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/nextpeer/android/gx$ae;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v0, p0, Lcom/nextpeer/android/gx;->h:Z

    iput-boolean v0, p0, Lcom/nextpeer/android/gx;->i:Z

    new-instance v0, Lcom/nextpeer/android/gy;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/gy;-><init>(Lcom/nextpeer/android/gx;)V

    iput-object v0, p0, Lcom/nextpeer/android/gx;->j:Lcom/nextpeer/android/hs$aa;

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {p2, p3}, Lcom/nextpeer/android/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/gx;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/nextpeer/android/gx;->b:Lcom/nextpeer/android/gx$ae;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/gx;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->b:Lcom/nextpeer/android/gx$ae;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nextpeer/android/gx;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gx;->h:Z

    iget-object v0, p0, Lcom/nextpeer/android/gx;->b:Lcom/nextpeer/android/gx$ae;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/gx$ae;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/gx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/gx;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/nextpeer/android/gx;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->e:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/nextpeer/android/gx;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/gx;->dismiss()V

    iget-object v0, p0, Lcom/nextpeer/android/gx;->b:Lcom/nextpeer/android/gx$ae;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nextpeer/android/gx;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gx;->h:Z

    iget-object v0, p0, Lcom/nextpeer/android/gx;->b:Lcom/nextpeer/android/gx$ae;

    invoke-virtual {v0}, Lcom/nextpeer/android/gx$ae;->a()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/nextpeer/android/gx;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lcom/nextpeer/android/gx;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/nextpeer/android/gx;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/nextpeer/android/gx;)Lcom/nextpeer/android/gx$ae;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->b:Lcom/nextpeer/android/gx$ae;

    return-object v0
.end method

.method static synthetic h(Lcom/nextpeer/android/gx;)Lcom/nextpeer/android/gx$ad;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->c:Lcom/nextpeer/android/gx$ad;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/gx$ad;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gx;->c:Lcom/nextpeer/android/gx$ad;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function() {setTimeout(function(){"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}, 1);})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    iget-boolean v0, p0, Lcom/nextpeer/android/gx;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/gx;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gx;->i:Z

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/nextpeer/android/gz;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/gz;-><init>(Lcom/nextpeer/android/gx;)V

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/gx;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/nextpeer/android/gx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/gx;->e:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/nextpeer/android/gx;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/nextpeer/android/gx;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/nextpeer/android/gx;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nextpeer/android/R$string;->np__loading_indicator_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/gx;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/gx;->e:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/nextpeer/android/ha;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/ha;-><init>(Lcom/nextpeer/android/gx;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, v7}, Lcom/nextpeer/android/gx;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/nextpeer/android/gx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/gx;->g:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/nextpeer/android/gx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/gx;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nextpeer/android/gx;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/nextpeer/android/hb;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/hb;-><init>(Lcom/nextpeer/android/gx;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$drawable;->np__facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gx;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nextpeer/android/gx;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gx;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/nextpeer/android/gx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nextpeer/android/R$color;->np__grey_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/nextpeer/android/gx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    new-instance v3, Lcom/nextpeer/android/hs;

    iget-object v4, p0, Lcom/nextpeer/android/gx;->j:Lcom/nextpeer/android/hs$aa;

    invoke-direct {v3, v4}, Lcom/nextpeer/android/hs;-><init>(Lcom/nextpeer/android/hs$aa;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/nextpeer/android/gx;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    invoke-virtual {v2, v9}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v2, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/nextpeer/android/gx;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nextpeer/android/gx;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nextpeer/android/gx;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nextpeer/android/gx;->f:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nextpeer/android/gx;->g:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/gx;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gx;->i:Z

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method
