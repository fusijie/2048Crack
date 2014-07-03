.class public final Lcom/nextpeer/android/gt;
.super Lcom/nextpeer/android/em;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gt$aa;
    }
.end annotation


# instance fields
.field private b:Lcom/nextpeer/android/gt$aa;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/em;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gt;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/gt$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gt;->b:Lcom/nextpeer/android/gt$aa;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/nextpeer/android/gt;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/nextpeer/android/R$id;->np__dialog__try_play_with_fb_friends_positive:I

    if-ne v0, v1, :cond_3

    const-string v0, "NPA_TRY_PLAY_WITH_FRIENDS_DIALOG_APPROVED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gt;->b:Lcom/nextpeer/android/gt$aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/gt;->b:Lcom/nextpeer/android/gt$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gt$aa;->s()V

    :cond_2
    invoke-virtual {p0}, Lcom/nextpeer/android/gt;->dismiss()V

    iput-boolean v2, p0, Lcom/nextpeer/android/gt;->e:Z

    goto :goto_0

    :cond_3
    sget v1, Lcom/nextpeer/android/R$id;->np__dialog__try_play_with_fb_friends_negative:I

    if-ne v0, v1, :cond_0

    const-string v0, "NPA_TRY_PLAY_WITH_FRIENDS_DIALOG_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gt;->b:Lcom/nextpeer/android/gt$aa;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/gt;->b:Lcom/nextpeer/android/gt$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gt$aa;->t()V

    :cond_4
    invoke-virtual {p0}, Lcom/nextpeer/android/gt;->dismiss()V

    iput-boolean v2, p0, Lcom/nextpeer/android/gt;->e:Z

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/em;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/gt;->setCancelable(Z)V

    const-string v0, "NPA_TRY_PLAY_WITH_FRIENDS_DIALOG_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nextpeer/android/R$layout;->np__dialog_try_play_with_fb_friends:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog__try_play_with_fb_friends_negative:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/gt;->c:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog__try_play_with_fb_friends_positive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/gt;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nextpeer/android/gt;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/gt;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gt;->b:Lcom/nextpeer/android/gt$aa;

    invoke-super {p0}, Lcom/nextpeer/android/em;->onDestroy()V

    return-void
.end method
