.class public final Lcom/nextpeer/android/ew;
.super Lcom/nextpeer/android/em;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/ew$aa;
    }
.end annotation


# instance fields
.field private b:Lcom/nextpeer/android/ew$aa;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/em;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/ew$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ew;->b:Lcom/nextpeer/android/ew$aa;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/nextpeer/android/ew;->dismiss()V

    sget v1, Lcom/nextpeer/android/R$id;->np__dialog_invite_your_fb_friends_positive:I

    if-ne v0, v1, :cond_1

    const-string v0, "NPA_INVITE_YOUR_FRIENDS_DIALOG_APPROVED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ew;->b:Lcom/nextpeer/android/ew$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ew;->b:Lcom/nextpeer/android/ew$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/ew$aa;->d_()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/nextpeer/android/R$id;->np__dialog_invite_your_fb_friends_negative:I

    if-ne v0, v1, :cond_0

    const-string v0, "NPA_INVITE_YOUR_FRIENDS_DIALOG_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ew;->b:Lcom/nextpeer/android/ew$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ew;->b:Lcom/nextpeer/android/ew$aa;

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/em;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/ew;->setCancelable(Z)V

    const-string v0, "NPA_INVITE_YOUR_FRIENDS_DIALOG_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    sget v0, Lcom/nextpeer/android/R$layout;->np__dialog_invite_your_fb_friends:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_invite_your_fb_friends_negative:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/ew;->c:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_invite_your_fb_friends_positive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/ew;->d:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_invite_your_fb_friends_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/ew;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nextpeer/android/ew;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/ew;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v0, Lcom/nextpeer/android/R$string;->np__application_name:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget v3, Lcom/nextpeer/android/R$string;->np__invite_fb_friends_no_active_friends_dialog_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nextpeer/android/ew;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ew;->b:Lcom/nextpeer/android/ew$aa;

    invoke-super {p0}, Lcom/nextpeer/android/em;->onDestroy()V

    return-void
.end method
