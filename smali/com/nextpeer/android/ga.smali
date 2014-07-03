.class public final Lcom/nextpeer/android/ga;
.super Lcom/nextpeer/android/ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/ga$aa;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/ga$aa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/ba;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ga;->a:Lcom/nextpeer/android/ga$aa;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/ga$aa;

    iput-object p1, p0, Lcom/nextpeer/android/ga;->a:Lcom/nextpeer/android/ga$aa;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/fw;)V
    .locals 1

    const-string v0, "NPA_TOURNAMENT_DISCONNECT_TAPPED_CONFIRM"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ga;->a:Lcom/nextpeer/android/ga$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ga;->a:Lcom/nextpeer/android/ga$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/ga$aa;->u()V

    :cond_0
    return-void
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->i:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_TOURNAMENT_DISCONNECT_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method final h()V
    .locals 1

    const-string v0, "NPA_TOURNAMENT_DISCONNECT_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

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

    iput-object v0, p0, Lcom/nextpeer/android/ga;->a:Lcom/nextpeer/android/ga$aa;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nextpeer/android/R$layout;->np__fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onResume()V

    sget v0, Lcom/nextpeer/android/R$string;->np__tournament_disconnect_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_disconnect_dialog_text:I

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/ga;->a(II)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/ga;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_disconnect_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    return-void
.end method
