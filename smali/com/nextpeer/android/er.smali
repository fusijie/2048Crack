.class final Lcom/nextpeer/android/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eo;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/er;->a:Lcom/nextpeer/android/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NPA_HOME_TAPPED_PLAY_WITH_FRIENDS"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/er;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->a(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/eo$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/er;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->a(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/eo$aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/eo$aa;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_information:I

    const/4 v1, 0x0

    sget v2, Lcom/nextpeer/android/R$string;->np__facebook_app_is_required_error_description:I

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/dz;->a(III)Lcom/nextpeer/android/dz;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/er;->a:Lcom/nextpeer/android/eo;

    invoke-virtual {v1}, Lcom/nextpeer/android/eo;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPUIAlertDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/dz;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
