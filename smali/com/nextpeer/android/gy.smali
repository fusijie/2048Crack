.class final Lcom/nextpeer/android/gy;
.super Lcom/nextpeer/android/hs$aa;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gx;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gx;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-direct {p0}, Lcom/nextpeer/android/hs$aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->a(Lcom/nextpeer/android/gx;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->b(Lcom/nextpeer/android/gx;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->d(Lcom/nextpeer/android/gx;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v1}, Lcom/nextpeer/android/gx;->d(Lcom/nextpeer/android/gx;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget v1, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_information:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0, p1}, Lcom/nextpeer/android/gx;->a(Lcom/nextpeer/android/gx;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->h(Lcom/nextpeer/android/gx;)Lcom/nextpeer/android/gx$ad;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->h(Lcom/nextpeer/android/gx;)Lcom/nextpeer/android/gx$ad;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nextpeer/android/gx$ad;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->a(Lcom/nextpeer/android/gx;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->b(Lcom/nextpeer/android/gx;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->c(Lcom/nextpeer/android/gx;)V

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->e(Lcom/nextpeer/android/gx;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->d(Lcom/nextpeer/android/gx;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->f(Lcom/nextpeer/android/gx;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->d(Lcom/nextpeer/android/gx;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->g(Lcom/nextpeer/android/gx;)Lcom/nextpeer/android/gx$ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gy;->a:Lcom/nextpeer/android/gx;

    invoke-static {v0}, Lcom/nextpeer/android/gx;->g(Lcom/nextpeer/android/gx;)Lcom/nextpeer/android/gx$ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gx$ae;->b()V

    :cond_0
    return-void
.end method
