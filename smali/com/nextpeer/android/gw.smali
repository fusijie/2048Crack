.class public final Lcom/nextpeer/android/gw;
.super Lcom/nextpeer/android/fl;

# interfaces
.implements Lcom/nextpeer/android/hm$aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gw$aa;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/hm;

.field private b:Lcom/nextpeer/android/gw$aa;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/fl;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    iput-object v0, p0, Lcom/nextpeer/android/gw;->b:Lcom/nextpeer/android/gw$aa;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/gw$aa;

    iput-object p1, p0, Lcom/nextpeer/android/gw;->b:Lcom/nextpeer/android/gw$aa;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/fw;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gw;->b:Lcom/nextpeer/android/gw$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gw;->b:Lcom/nextpeer/android/gw$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gw$aa;->l()V

    :cond_0
    return-void
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->j:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_USER_LOADING_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final g_()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gw;->b:Lcom/nextpeer/android/gw$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gw;->b:Lcom/nextpeer/android/gw$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gw$aa;->k()V

    :cond_0
    return-void
.end method

.method final h()V
    .locals 1

    const-string v0, "NPA_USER_LOADING_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final h_()V
    .locals 2

    sget v0, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_fetch_user_details_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_fetch_user_details_description:I

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/gw;->a(II)V

    return-void
.end method

.method protected final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gw;->b:Lcom/nextpeer/android/gw$aa;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/nextpeer/android/fl;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    sget v0, Lcom/nextpeer/android/R$string;->np__error_message_no_internet_permission_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_no_internet_permission_description:I

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/gw;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/hm;

    invoke-direct {v0}, Lcom/nextpeer/android/hm;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/nextpeer/android/fl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm$aa;)V

    iget-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    invoke-virtual {v0}, Lcom/nextpeer/android/hm;->b()V

    :cond_0
    invoke-super {p0}, Lcom/nextpeer/android/fl;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/fl;->onResume()V

    iget-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm$aa;)V

    iget-object v0, p0, Lcom/nextpeer/android/gw;->a:Lcom/nextpeer/android/hm;

    invoke-virtual {v0}, Lcom/nextpeer/android/hm;->a()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/fl;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/gw;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__user_profile_fetching_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    return-void
.end method
