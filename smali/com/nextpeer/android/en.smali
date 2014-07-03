.class public abstract Lcom/nextpeer/android/en;
.super Lcom/nextpeer/android/ba;

# interfaces
.implements Lcom/nextpeer/android/ay$ab;


# instance fields
.field private a:Lcom/nextpeer/android/ay;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/ba;-><init>()V

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    return-void

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->n()Lcom/nextpeer/android/ay;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Z)V
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/nextpeer/android/en;->q()V

    return-void
.end method

.method public final b_()Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-virtual {v0}, Lcom/nextpeer/android/ay;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/ay;->a(Lcom/nextpeer/android/ay$ab;)V

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/en;->r()V

    return-void
.end method

.method public final e_()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/ay;->a(Lcom/nextpeer/android/ay$ab;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/en;->a(Z)V

    return-void
.end method

.method public final f_()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/ay;->a(Lcom/nextpeer/android/ay$ab;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/en;->a(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/nextpeer/android/ba;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-virtual {p0}, Lcom/nextpeer/android/en;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/nextpeer/android/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/ba;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ay;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onPause()V

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-virtual {v0}, Lcom/nextpeer/android/ay;->c()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onResume()V

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/ay;->a(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/ba;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/nextpeer/android/facebook/Session;->saveSession(Lcom/nextpeer/android/facebook/Session;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected final p()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/en;->a:Lcom/nextpeer/android/ay;

    invoke-virtual {v0, p0, p0}, Lcom/nextpeer/android/ay;->a(Landroid/support/v4/app/Fragment;Lcom/nextpeer/android/ay$ab;)V

    :cond_0
    return-void
.end method

.method protected abstract q()V
.end method

.method protected abstract r()V
.end method
