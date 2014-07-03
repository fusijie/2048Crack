.class public abstract Lcom/nextpeer/android/ba;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/nextpeer/android/fw$aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/ba$aa;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ba;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nextpeer/android/ba;->a(II)V

    return-void
.end method

.method final a(II)V
    .locals 2

    const v0, -0xb2b4f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/nextpeer/android/ba;->a(IIILjava/lang/String;)V

    return-void
.end method

.method final a(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nextpeer/android/ba;->a(IIILjava/lang/String;)V

    return-void
.end method

.method final a(IIILjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nextpeer/android/ba;->a:Z

    if-nez v0, :cond_1

    const-string v0, "showReportToSupportDialog failed, fragment detached"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nextpeer/android/ba;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "NPUIReportToSupportDialogFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p4}, Lcom/nextpeer/android/fw;->a(IILjava/lang/String;)Lcom/nextpeer/android/fw;

    move-result-object v0

    iput p3, v0, Lcom/nextpeer/android/fw;->a:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/nextpeer/android/fw;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/nextpeer/android/ba;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPUIReportToSupportDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/fw;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(IILjava/lang/String;)V
    .locals 1

    const v0, -0xb2b4f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/nextpeer/android/ba;->a(IIILjava/lang/String;)V

    return-void
.end method

.method protected final a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/nextpeer/android/bc;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/nextpeer/android/fw;)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/ba;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public b_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c_()V
    .locals 0

    return-void
.end method

.method abstract f()Lcom/nextpeer/android/cc;
.end method

.method abstract g()V
.end method

.method abstract h()V
.end method

.method protected final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/ba;->a:Z

    return v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected final m()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/ba;->a:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ba;->a:Z

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/ba;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nextpeer/android/ba;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/nextpeer/android/ba$aa;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/ba;->f()Lcom/nextpeer/android/cc;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/nextpeer/android/ba$aa;

    invoke-interface {v0, v2}, Lcom/nextpeer/android/ba$aa;->getSupportedDelegate(Lcom/nextpeer/android/cc;)Lcom/nextpeer/android/bc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/ba;->a(Lcom/nextpeer/android/bc;)V

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/nextpeer/android/ba;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lcom/nextpeer/android/ba;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/ba;->o()V

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/ba;->m()V

    return-void
.end method
